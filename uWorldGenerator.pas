unit uWorldGenerator;

interface
uses
Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Math, System.StrUtils, fmx.Types,
Vcl.ExtCtrls, uDeclaretions, uFunctions;

function keyGenerator(k1,k2,k3,k4 : integer): integer;
function contentGenerator(room : TRoom; key : integer) : TRoom;
function roomGenerator(key : integer; sourceRoom : TRoom): TRoomArray;
procedure dungeonGenerator (k1,k2,k3,k4 : integer; sourceRoom : TRoom; AOwner : TComponent);

implementation

//berechnet einen Key, nach dem alles gemacht wird
function keyGenerator(k1,k2,k3,k4 : integer): integer;
var sum, key : integer;
    codedKey : double;
begin
  sum := 1 + k1 * (k2 + k3 * 2 + k4 * 3);

  codedKey := Frac(Sqrt(sum));
//  codedKey := codedKey * (k2 * (k1 + 3));
//  codedKey := Frac(codedKey);
  if codedKey < 0.1 then codedKey := 0.7;
  key :=  trunc(codedKey*10);

  keyGenerator := key;
end;

//Inhalt des Zimmers
function contentGenerator(room : TRoom; key : integer) : TRoom;
var typeNum : Integer;
begin
  typeNum := Round(7/9 * key);
  room.content := contentsArray[typeNum];
end;

//erstellt ein neues Zimmer
function roomGenerator(key : integer; sourceRoom : TRoom): TRoomArray;
var newRoomsAmount, freeSlotsNum, i, directionNum: integer;
    room : TRoom;
    sourceDirection : string;
begin
  freeSlotsNum := findArrayLength(sourceRoom.freeSlots);
  newRoomsAmount := Ceil((freeSlotsNum / 9) * key);

  if (currentRoomsAmount + newRoomsAmount) > totalRoomsAmount - 1 then
  newRoomsAmount := (totalRoomsAmount - 1) - currentRoomsAmount;

  SetLength(result, newRoomsAmount);

  for i := 0 to newRoomsAmount - 1 do
  begin
//    key := (key + key * getNum(sourceRoom)) mod 10;
//    if key = 0 then key := 5;

    room := TRoom.Create;
    room.freeSlots[0] := 'up';
    room.freeSlots[1] := 'right';
    room.freeSlots[2] := 'down';
    room.freeSlots[3] := 'left';
    directionNum := Ceil(((newRoomsAmount - i) / 9) * key) - 1;
    sourceDirection := sourceRoom.freeSlots[directionNum];
    sourceRoom := connectRooms(sourceRoom, room, sourceDirection)[0];
    room := connectRooms(sourceRoom, room, sourceDirection)[1];
    contentGenerator(room, key);
    room.completed := false;

    roomsArray[currentRoomsAmount] := room;
    currentRoomsAmount := currentRoomsAmount + 1;
    room.roomNum := currentRoomsAmount;
    SetLength(coordinatesArray, currentRoomsAmount);
    coordinatesArray[currentRoomsAmount - 1] := room.pos;
    result[i] := room;
  end;
end;

//Generiert die ganze Map
procedure dungeonGenerator (k1,k2,k3,k4 : integer; sourceRoom : TRoom; AOwner : TComponent);
var key, i : integer;
    newRooms : TRoomArray;
    room : TRoom;
begin
  if (currentRoomsAmount = totalRoomsAmount - 1) or (k1 = 0) then
  begin
  roomsArray[0].content := 'start';
  roomsArray[1].content := 'hallway';
  roomsArray[2].content := 'enemy';
  roomsArray[currentRoomsAmount - 1].content := 'boss';
  roomsArray[currentRoomsAmount - 2].content := 'chest';
  roomsArray[currentRoomsAmount - 3].content := 'hallway';
  roomsArray[Round(currentRoomsAmount * (3/4))].content := 'shop';
  roomsArray[Round(currentRoomsAmount * (1/3))].content := 'shop';
  roomsArray[Round(currentRoomsAmount * (1/2))].content := 'puzzle';
  roomsArray[Round(currentRoomsAmount * (1/2)-1)].content := 'enemy';
  roomsArray[Round(currentRoomsAmount * (1/4))].content := 'portal';
  roomsArray[Round(currentRoomsAmount * (2/3))].content := 'portal';

  roomLocker(18);

  exit;
  end;

  key := keyGenerator(k1,k2,k3,k4);
  newRooms := roomGenerator(key, sourceRoom);

  for room in newRooms do
  begin
    k3 := key;
    dungeonGenerator(k1 - 1, k2, k3, k4, room, AOwner);
  end;
end;

end.
