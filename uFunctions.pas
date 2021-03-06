unit uFunctions;

interface

uses
Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Math, System.StrUtils, fmx.Types,
Vcl.ExtCtrls, uDeclaretions;

function cutArrayName(toCut : string; arr : TStringArray): TStringArray;
function cutArrayIndex(index : integer; arr : TStringArray): TStringArray;
function findArrayLength (arr : TStringArray) : Integer;
function floorChecker (posA : TPosArray) : TPosArray;
function connectRooms (roomFrom, roomTo : TRoom; direction : string): TConnectedRoomArray;
procedure pathFinderS (spUp, spRight, spDown, spLeft : TShape);
procedure mapper(canvas : TCanvas);
procedure mapperCurrent(canvas : TCanvas);
procedure mapperConnections(canvas : TCanvas; direction : String; oldRoom : TRoom);
procedure mapperFloors(oldRoom : TRoom; roomFloor : integer; f1,f2,f3,f4,f5,f6,f7, map : TImage;  dir : string);
procedure contentPanel(content : string; eHp,eName:TLabel;bMed,bBoost,bKey,bWeapon,bflee : TButton);
procedure lootPanel(lbl1,lbl2 : TStaticText; loot1, loot2 : string; pnl : TPanel);
procedure updateStats(lblHp, lblMedicine, lblboosters, lblCredits, lblWeapon, lblKeys : TLabel);
procedure loot(AOwner : TComponent; loot1, loot2 : string; amount1, amount2 : integer);
procedure CPCompleted(content : string);
procedure CPSwitcher (panel : TPanel);
procedure roomLocker(n : integer);
procedure closeDoors (dir : string; s1,s2,s3,s4 : TShape; btnOpen : TButton; dirRoom : TRoom);
procedure enemyMemory(lblhp, lblname : TLabel);
function IntToBool(int : integer): boolean;
procedure shopMemory(bMed,bBoost,bKey,bWeapon : TButton);
procedure BossRoom(lblhp, lblname : TLabel;bflee : TButton);
procedure storyWriter(room : TRoom; memo : TMemo);
procedure bossCheck(spUp, spRight, spDown, spLeft : TShape);
function visited (roomVisited : bool) : string;

implementation

//Ein Element aus einem Array nach seinem Namen rausschneiden
function cutArrayName(toCut : string; arr : TStringArray): TStringArray;
var i, j: integer;
    hilf : string;
begin
  for i := 0 to Length(arr)-1 do
  begin
    if arr[i] = toCut then
    begin
      arr[i] := 'closed';

    for j := i to Length(arr)-2 do
    begin
      hilf := arr[j];
      arr[j] := arr[j+1];
      arr[j+1] := hilf;
    end;

    end;
  end;

  result[0] := arr[0];
  result[1] := arr[1];
  result[2] := arr[2];
  result[3] := arr[3];
end;

//Ein Element aus einem Array nach seinem Index rausschneiden
function cutArrayIndex(index : integer; arr : TStringArray): TStringArray;
var i: integer;
    hilf : string;
begin

  arr[index] := 'closed';

  for i := index to Length(arr)-2 do
    begin
      hilf := arr[i];
      arr[i] := arr[i+1];
      arr[i+1] := hilf;
    end;

  result[0] := arr[0];
  result[1] := arr[1];
  result[2] := arr[2];
  result[3] := arr[3];
end;

//Anzahl der freien Ausgänge
function findArrayLength (arr : TStringArray) : Integer;
var i, r : integer;
begin
r := 0;
  for i := 0 to Length(arr)-1 do
  begin
    if arr[i] <> 'closed' then r := r + 1;
  end;

  findArrayLength := r;
end;

//Etagen
function floorChecker (posA : TPosArray) : TPosArray;
var r : TRoom;
    posB : TPosArray;
    i : integer;
begin
  for posB in coordinatesArray do
  begin
    if (posA[0] = posB[0]) and (posA[1] = posB[1]) and (posA[2] = posB[2]) then
    posA[2] := posB[2] + 1;
  end;

  result[0] := posA[0];
  result[1] := posA[1];
  result[2] := posA[2];
end;

//Verbindet zwei Räume
function connectRooms (roomFrom, roomTo : TRoom; direction : string): TConnectedRoomArray;
begin

  roomTo.pos[0] := roomFrom.pos[0];
  roomTo.pos[1] := roomFrom.pos[1];
  roomTo.pos[2] := roomFrom.pos[2];

  case AnsiIndexStr(direction, ['up', 'right', 'down', 'left']) of
    0: begin
      roomFrom.up := roomTo;
      roomTo.down := roomFrom;
      roomTo.pos[1] := roomFrom.pos[1] + 1;
      roomFrom.freeslots := cutArrayName('up', roomFrom.freeSlots);
      roomTo.freeSlots := cutArrayName('down', roomTo.freeSlots);
    end;
    1: begin
      roomFrom.right := roomTo;
      roomTo.left := roomFrom;
      roomTo.pos[0] := roomFrom.pos[0] + 1;
      roomFrom.freeslots := cutArrayName('right', roomFrom.freeSlots);
      roomTo.freeSlots := cutArrayName('left', roomTo.freeSlots);
    end;
    2: begin
      roomFrom.down := roomTo;
      roomTo.up := roomFrom;
      roomTo.pos[1] := roomFrom.pos[1] - 1;
      roomFrom.freeslots := cutArrayName('down', roomFrom.freeSlots);
      roomTo.freeSlots := cutArrayName('up', roomTo.freeSlots);
    end;
    3: begin
      roomFrom.left := roomTo;
      roomTo.right := roomFrom;
      roomTo.pos[0] := roomFrom.pos[0] - 1;
      roomFrom.freeslots := cutArrayName('left', roomFrom.freeSlots);
      roomTo.freeSlots := cutArrayName('right', roomTo.freeSlots);
    end;
  end;

  roomTo.pos := floorChecker(roomTo.pos);
  result[0] := roomFrom;
  result[1] := roomTo;
end;

procedure pathFinderS (spUp, spRight, spDown, spLeft : TShape);
begin
  spUp.Brush.Color := clWhite;
  spRight.Brush.Color := clWhite;
  spDown.Brush.Color := clWhite;
  spLeft.Brush.Color := clWhite;


  if Assigned(currentRoom.up) = false then
  begin
    spUp.Brush.Color := clSilver;
    spUp.Pen.Width := 1;
  end;
  if Assigned(currentRoom.right) = false then
   begin
    spRight.Brush.Color := clSilver;
    spRight.Pen.Width := 1;
  end;
  if Assigned(currentRoom.down) = false then
   begin
    spDown.Brush.Color := clSilver;
    spDown.Pen.Width := 1;
  end;
  if Assigned(currentRoom.left) = false then
   begin
    spLeft.Brush.Color := clSilver;
    spLeft.Pen.Width := 1;
  end;
end;

procedure bossCheck(spUp, spRight, spDown, spLeft : TShape);
begin
  if (Assigned(currentRoom.up)) and (currentRoom.up.content = 'boss') then
  begin
    spUp.Brush.Color := clRed;
  end;
  if (Assigned(currentRoom.right)) and (currentRoom.right.content = 'boss') then
   begin
    spRight.Brush.Color := clRed;
  end;
  if (Assigned(currentRoom.down)) and (currentRoom.down.content = 'boss') then
   begin
    spDown.Brush.Color := clRed;
  end;
  if (Assigned(currentRoom.left)) and (currentRoom.left.content = 'boss') then
   begin
    spLeft.Brush.Color := clRed;
  end;
end;

procedure mapper(canvas : TCanvas);
var a, b, c, d, centerX, centerY: integer;
begin
  centerX := 135;
  centerY := 120;
  a := centerX - 5 + (15 * (currentRoom.pos[0]));
  b := centerY - 5 + (15 * -(currentRoom.pos[1]));
  c := centerX + 5 + (15 * (currentRoom.pos[0]));
  d := centerY + 5 + (15 * -(currentRoom.pos[1]));

  canvas.Pen.Color := clBlack;
  canvas.brush.color := clBlack;
  canvas.Rectangle(a,b,c,d);
end;

procedure mapperConnections(canvas : TCanvas; direction : String; oldRoom : TRoom);
var a,b,c,d, centerX, centerY : integer;
begin
  centerX := 135;
  centerY := 120;

  case AnsiIndexStr(direction, ['up', 'right', 'down', 'left']) of
  0:begin
    a := centerX - 2 + (15 * (currentRoom.pos[0]));
    b := centerY + 10 + (15 * -(currentRoom.pos[1]));
    c := centerX + 2 + (15 * (currentRoom.pos[0]));
    d := centerY + 5 + (15 * -(currentRoom.pos[1]));
  end;
  1:begin
    a := centerX - 10 + (15 * (currentRoom.pos[0]));
    b := centerY - 2 + (15 * -(currentRoom.pos[1]));
    c := centerX - 5 + (15 * (currentRoom.pos[0]));
    d := centerY + 2 + (15 * -(currentRoom.pos[1]));
  end;
  2:begin
    a := centerX - 2 + (15 * (currentRoom.pos[0]));
    b := centerY - 10 + (15 * -(currentRoom.pos[1]));
    c := centerX + 2 + (15 * (currentRoom.pos[0]));
    d := centerY - 5 + (15 * -(currentRoom.pos[1]));
  end;
  3:begin
    a := centerX + 10 + (15 * (currentRoom.pos[0]));
    b := centerY - 2 + (15 * -(currentRoom.pos[1]));
    c := centerX + 5 + (15 * (currentRoom.pos[0]));
    d := centerY + 2 + (15 * -(currentRoom.pos[1]));
  end;
  end;

  if currentRoom.pos[2] = oldRoom.pos[2] then
  begin
    canvas.Pen.Color := clBlack;
    canvas.brush.color := clBlack;
    canvas.Rectangle(a,b,c,d);

  end
  else
  begin
    canvas.Pen.Color := clBlack;
    canvas.brush.color := clWhite;
    canvas.Rectangle(a,b,c,d);
  end;


end;

procedure mapperCurrent(canvas : TCanvas);
var a, b, c, d, centerX, centerY : integer;
begin
  centerX := 135;
  centerY := 120;
  a := centerX - 5 + (15 * (currentRoom.pos[0]));
  b := centerY - 5 + (15 * -(currentRoom.pos[1]));
  c := centerX + 5 + (15 * (currentRoom.pos[0]));
  d := centerY + 5 + (15 * -(currentRoom.pos[1]));

  canvas.Pen.Color := clRed;
  canvas.brush.color := clRed;
  canvas.Rectangle(a,b,c,d);
end;

procedure mapperFloors(oldRoom : TRoom; roomFloor : integer; f1,f2,f3,f4,f5,f6,f7, map : TImage; dir : string);
begin
  f1.Visible := false;
  f2.Visible := false;
  f3.Visible := false;
  f4.Visible := false;
  f5.Visible := false;

  map.Visible := true;
  mapperCurrent(map.Canvas);
  if dir <> '-' then
  mapperConnections(map.Canvas, dir, oldRoom);

end;

procedure CPSwitcher (panel : TPanel);
begin
  if currentPanel <> defaultPanel then
  currentPanel.Left := 1000;
  currentPanel := panel;
  currentPanel.Left := defaultPanel.Left;
end;

procedure CPCompleted(content : string);
var panel : TPanel;
begin
  defaultPanel.Caption := '';
  CPSwitcher(defaultPanel);
end;

procedure contentPanel(content : string; eHp,eName:TLabel;bMed,bBoost,bKey,bWeapon,bflee : TButton);
var nextPanel : TPanel;
begin
  case AnsiIndexStr(content, ['chest','enemy', 'start', 'portal', 'door', 'shop','puzzle', 'boss']) of
  0: nextPanel := panelsArray[0];
  1: begin
    enemyMemory(eHP, eName);
    nextPanel := panelsArray[1];
  end;
  2: nextPanel := panelsArray[2];
  3: begin
    nextPanel := panelsArray[3];
    visPrt1 := true;
  end;
  4: begin
    nextPanel := panelsArray[4];
    visDr := true;
  end;
  5: begin
    shopMemory(bMed,bBoost,bKey,bWeapon);
    nextPanel := panelsArray[5];
  end;
  6: begin
    nextPanel := panelsArray[6];
    visSc := true;
  end;
  7: begin
    bossRoom(eHP, eName,bflee);
    nextPanel := panelsArray[1];
  end;
  else begin
    CPCompleted(content);
    exit;
  end;
  end;

  CPSwitcher(nextPanel);
end;

procedure lootPanel(lbl1,lbl2 : TStaticText; loot1, loot2 : string; pnl : TPanel);
begin
  lbl1.Caption := '';
  lbl2.Caption := '';

 lbl1.Caption := loot1;
 if loot2 <> '-' then lbl2.Caption := loot2;

 pnl.top := currentPanel.Top;
 pnl.left := currentPanel.Left;
 pnl.BringToFront();
end;

procedure updateStats(lblHp, lblMedicine, lblboosters, lblCredits, lblWeapon, lblKeys : TLabel);
begin
 lblHp.Caption := intToStr(player.hp);
 lblMedicine.Caption := intToStr(player.medicine);
 lblboosters.Caption := intToStr(player.boosters);
 lblCredits.Caption := intToStr(player.credits);
 lblKeys.Caption := intToStr(player.keys);
 lblWeapon.Caption := player.weapon.name;
end;

procedure loot(AOwner : TComponent; loot1, loot2 : string; amount1, amount2 : integer);
begin
  case AnsiIndexStr(loot1, ['medicine','boosters','credits']) of
  0:player.medicine := player.medicine + amount1;
  1:player.boosters := player.boosters + amount1;
  2:player.credits := player.credits + amount1;
  end;

  if loot2 <> '-' then
  case AnsiIndexStr(loot1, ['medicine','boosters','credits']) of
  0:player.medicine := player.medicine + amount2;
  1:player.boosters := player.boosters + amount2;
  2:player.credits := player.credits + amount2;
  end;
end;

procedure roomLocker(n : integer);
var passt : bool;
roomNum : integer;
begin
passt := false;
roomNum := n;

while (roomNum > 14) do
begin
  if (findArrayLength(roomsArray[roomNum].freeSlots) < 2) and (roomsArray[roomNum].content <> 'shop') then
  begin
    roomsArray[roomNum].content := 'door';
    exit;
  end;
  roomNum := roomNum - 1;
end;

roomNum := n;

while (passt = false) or (roomNum < 23) do
begin
  if (findArrayLength(roomsArray[roomNum].freeSlots) < 2) and (roomsArray[roomNum].content <> 'shop') and (roomsArray[roomNum].content <> 'puzzle') then
  begin
    roomsArray[roomNum].content := 'door';
    passt := true;
    exit;
  end;
  roomNum := roomNum + 1;
end;
end;

procedure closeDoors (dir : string; s1,s2,s3,s4 : TShape; btnOpen : TButton; dirRoom : TRoom);
var content : string;
begin
  s1.Visible := true;
  s2.Visible := true;
  s3.Visible := true;
  s4.Visible := true;

  content := currentRoom.content;

  if ((content = 'enemy') or (content = 'puzzle') or (content = 'boss')) and (currentRoom.completed = false) then
  begin
    s1.Visible := false;
    s2.Visible := false;
    s3.Visible := false;
    s4.Visible := false;
    exit;
  end;


  if (currentRoom.content <> 'door') or (doorOpened = true) then exit;

  s1.Visible := false;
  s2.Visible := false;
  s3.Visible := false;
  s4.Visible := false;

  case AnsiIndexStr(dir, ['up','right','down','left']) of
  0: s3.Visible := true;
  1: s4.Visible := true;
  2: s1.Visible := true;
  3: s2.Visible := true;
  end;

  if dirRoom.roomNum > currentRoom.roomNum then
  btnOpen.Enabled := true;
end;

procedure enemyMemory(lblhp, lblname : TLabel);
var art, hp : integer;
    enemy : TEnemy;
begin
  if currentRoom.memoryAssigned = false then
  begin
    art := Math.RandomRange(0,3);
    enemy := enemyArray[art];
    hp := enemy.hp;

    currentRoom.roomMemory[0] := art;
    currentRoom.roomMemory[1] := hp;
    currentRoom.memoryAssigned := true;
  end;

  lblname.Caption := enemyArray[currentRoom.roomMemory[0]].name;
  lblhp.Caption := intToStr(currentRoom.roomMemory[1]);
end;

function IntToBool(int : integer): boolean;
begin
  if int = 0 then
  IntToBool := false
  else
  IntToBool := true;
end;

procedure shopMemory(bMed,bBoost,bKey,bWeapon : TButton);
var art : integer;
    weapon : TWeapon;
begin
if currentRoom.memoryAssigned = false then
  begin
    art := Math.RandomRange(1,6);
    weapon := weaponsArray[art-1];

    currentRoom.roomMemory[0] := art;
    currentRoom.roomMemory[1] := 1;
    currentRoom.roomMemory[2] := 1;
    currentRoom.roomMemory[3] := 1;
    currentRoom.memoryAssigned := true;

    if (visSh1) then visSh2 := true;
  end;

  visSh1 := true;
  bMed.Enabled := intToBool(currentRoom.roomMemory[1]);
  bBoost.Enabled := intToBool(currentRoom.roomMemory[2]);
  bKey.Enabled := intToBool(currentRoom.roomMemory[3]);

  if currentRoom.roomMemory[0] = 0 then
  bWeapon.Enabled := false
  else
  begin
    bWeapon.Enabled := true;
    bWeapon.Caption := weapon.name;
  end;

end;

procedure BossRoom(lblhp, lblname : TLabel; bflee : TButton);
var art, hp : integer;
    enemy : TEnemy;
begin
  if currentRoom.memoryAssigned = false then
  begin
    art := 3;
    enemy := enemyArray[art];
    hp := enemy.hp;

    currentRoom.roomMemory[0] := art;
    currentRoom.roomMemory[1] := hp;
    currentRoom.memoryAssigned := true;
  end;

  lblname.Caption := enemyArray[currentRoom.roomMemory[0]].name;
  lblname.Font.Color := clRed;
  lblhp.Caption := intToStr(currentRoom.roomMemory[1]);
  bflee.Visible := false;
end;

procedure storyWriter(room : TRoom; memo : TMemo);
var text : string;
begin
  case AnsiIndexStr(room.content, [ 'start','chest','enemy','portal','door','shop','puzzle','hallway','boss']) of
  0:text := 'Das ist das Labor. Hier bist du aufgewacht.';
  1:begin
    if currentRoom.completed = false then
    text := 'Du stehst vor einer Kiste. Wenn du einen Schlüssel hast, kannst du diese aufmachen.'
    else text := 'Du siehst eine geöffnete Kiste.';
  end;
  2:begin
    if currentRoom.completed = false then
    text := 'Jemand steht dir im Weg. Du musst ihn besiegen, um weiter zu kommen.'
    else text := 'Ein totes Alien liegt vor dir.';
  end;
  3:text := 'Du stehst vor einem Portal. Du kannst damit in das andere Ende des Schiffes kommen.';
  4:begin
    if currentRoom.completed = false then
    text := 'Diese Tür kann man nur von einer bestimmten Seite aufmachen. Irgendwo hier befindet sich auch der Aktivierungsknopf für das Portal.'
    else text := 'Die Tür ist jetzt offen.';
  end;
  5:text := 'Du stehst vor einem Automaten, in welchen du Credits einwerfen kannst, um etwas dafür zu bekommen.';
  6:if currentRoom.completed = false then
    text := 'Du stehst vor einem komischen Gerät. Es scheint eine Art Reaktionstest zu sein.'
    else
    text := 'Das Gerät funktioniert nicht mehr.';
  7:text := 'Du befindest dich in einem Flur.';
  8:text := 'Du hast den Schiffskapitän gefunden. Hinter ihm ist das Steuerungssystem, welches dich zurück nach Hause bringen kann.';
  else text := room.content;
  end;

  memo.Clear();
  memo.Lines.Add(text);
end;

function visited (roomVisited : bool) : string;
begin
  if roomVisited then
  visited := '✓'
  else
  visited := 'X'
end;
end.
