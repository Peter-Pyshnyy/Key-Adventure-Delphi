{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N-,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN SYMBOL_EXPERIMENTAL ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN UNIT_EXPERIMENTAL ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
{$WARN OPTION_TRUNCATED ON}
{$WARN WIDECHAR_REDUCED ON}
{$WARN DUPLICATES_IGNORED ON}
{$WARN UNIT_INIT_SEQ ON}
{$WARN LOCAL_PINVOKE ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN TYPEINFO_IMPLICITLY_ADDED ON}
{$WARN RLINK_WARNING ON}
{$WARN IMPLICIT_STRING_CAST ON}
{$WARN IMPLICIT_STRING_CAST_LOSS ON}
{$WARN EXPLICIT_STRING_CAST OFF}
{$WARN EXPLICIT_STRING_CAST_LOSS OFF}
{$WARN CVT_WCHAR_TO_ACHAR ON}
{$WARN CVT_NARROWING_STRING_LOST ON}
{$WARN CVT_ACHAR_TO_WCHAR ON}
{$WARN CVT_WIDENING_STRING_LOST ON}
{$WARN NON_PORTABLE_TYPECAST ON}
{$WARN XML_WHITESPACE_NOT_ALLOWED ON}
{$WARN XML_UNKNOWN_ENTITY ON}
{$WARN XML_INVALID_NAME_START ON}
{$WARN XML_INVALID_NAME ON}
{$WARN XML_EXPECTED_CHARACTER ON}
{$WARN XML_CREF_NO_RESOLVE ON}
{$WARN XML_NO_PARM ON}
{$WARN XML_NO_MATCHING_PARM ON}
{$WARN IMMUTABLE_STRINGS OFF}
unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Math, System.StrUtils, fmx.Types,
  Vcl.ExtCtrls, uFunctions, uDeclaretions, uWorldGenerator, Vcl.Imaging.pngimage;

type
  TForm1 = class(TForm)
    memo: TMemo;
    spDashed: TShape;
    spBlack: TShape;
    spRight: TShape;
    spLeft: TShape;
    spUp: TShape;
    spDown: TShape;
    lblKey: TLabel;
    pnlMap: TPanel;
    mapCanvas: TImage;
    mapCanvas2: TImage;
    mapCanvas3: TImage;
    mapCanvas4: TImage;
    mapCanvas5: TImage;
    mapCanvas6: TImage;
    mapCanvas7: TImage;
    btnMap: TButton;
    lblFloor: TLabel;
    lblRoom: TLabel;
    Shape1: TShape;
    lblHpS: TLabel;
    lblMedicineS: TLabel;
    lblBoostersS: TLabel;
    lblCreditsS: TLabel;
    lblWeaponS: TLabel;
    lblHp: TLabel;
    lblMedicine: TLabel;
    lblBoosters: TLabel;
    lblCredits: TLabel;
    lblWeapon: TLabel;
    pnlMenu: TPanel;
    eK1: TEdit;
    eK2: TEdit;
    eK3: TEdit;
    eK4: TEdit;
    btnStart: TButton;
    pnlRoomStart: TPanel;
    btnRoomStartTake: TButton;
    lblRoomStartLoot: TLabel;
    pnlLoot: TPanel;
    lblLootHead: TStaticText;
    lblLoot1: TStaticText;
    lblLoot2: TStaticText;
    pnlLootBtn: TPanel;
    btnLoot: TButton;
    pnlRoomDefault: TPanel;
    pnlFight: TPanel;
    pnlChest: TPanel;
    btnOpenChest: TButton;
    lblKeysS: TLabel;
    lblKeys: TLabel;
    pnlMapInfo: TPanel;
    pnlPortal: TPanel;
    btnPortal: TButton;
    pnlDoor: TPanel;
    btnActivatePortals: TButton;
    btnOpenDoor: TButton;
    timer: TTimer;
    btnAttack: TButton;
    lblDmg: TLabel;
    btnFlee: TButton;
    btnMedicine: TButton;
    btnBooster: TButton;
    Label1: TLabel;
    lblEnemyName: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblEnemyHp: TLabel;
    enemyTimer: TTimer;
    lblEnemyDmg: TLabel;
    pnlShop: TPanel;
    btnBuyMed: TButton;
    btnBuyBoost: TButton;
    btnBuyKey: TButton;
    btnBuyWeapon: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    pnlPuzzle: TPanel;
    lblSum1: TLabel;
    lblSum2: TLabel;
    lblSum3: TLabel;
    Label11: TLabel;
    btnSkill: TButton;
    skillCheckTimer: TTimer;
    btnInfo: TButton;
    btnRoomStartTake2: TButton;
    btnFoundRooms: TButton;
    btnMapInfo: TButton;
    procedure btnStartClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure spUpMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure spRightMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure spDownMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure spLeftMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure spUpMouseEnter(Sender: TObject);
    procedure spUpMouseLeave(Sender: TObject);
    procedure spLeftMouseEnter(Sender: TObject);
    procedure spLeftMouseLeave(Sender: TObject);
    procedure spRightMouseEnter(Sender: TObject);
    procedure spRightMouseLeave(Sender: TObject);
    procedure spDownMouseEnter(Sender: TObject);
    procedure spDownMouseLeave(Sender: TObject);
    procedure btnMapClick(Sender: TObject);
    procedure btnRoomStartTakeClick(Sender: TObject);
    procedure btnLootClick(Sender: TObject);
    procedure btnOpenChestClick(Sender: TObject);
    procedure btnLootTestClick(Sender: TObject);
    procedure btnPortalClick(Sender: TObject);
    procedure btnActivatePortalsClick(Sender: TObject);
    procedure btnOpenDoorClick(Sender: TObject);
    procedure timerTimer(Sender: TObject);
    procedure btnAttackClick(Sender: TObject);
    procedure btnFleeClick(Sender: TObject);
    procedure btnMedicineClick(Sender: TObject);
    procedure btnBoosterClick(Sender: TObject);
    procedure enemyTimerTimer(Sender: TObject);
    procedure btnBuyMedClick(Sender: TObject);
    procedure btnBuyBoostClick(Sender: TObject);
    procedure btnBuyKeyClick(Sender: TObject);
    procedure btnBuyWeaponClick(Sender: TObject);
    procedure skillCheckTimerTimer(Sender: TObject);
    procedure btnSkillClick(Sender: TObject);
    procedure btnInfoClick(Sender: TObject);
    procedure btnRoomStartTake2Click(Sender: TObject);
    procedure btnFoundRoomsClick(Sender: TObject);
    procedure btnMapInfoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  pnlMenu.BringToFront();

  totalRoomsAmount := 40;
  setLength(roomsArray, totalRoomsAmount);
  firstRoom := TRoom.Create;
  firstRoom.pos[0] := 0;
  firstRoom.pos[1] := 0;
  firstRoom.pos[2] := 0;
  firstRoom.freeSlots[0] := 'up';
  firstRoom.freeSlots[1] := 'right';
  firstRoom.freeSlots[2] := 'down';
  firstRoom.freeSlots[3] := 'left';
  firstRoom.roomNum := 1;
  roomsArray[0] := firstRoom;
  currentRoomsAmount := 1;
  currentRoom := firstRoom;
  currentPanel := pnlMenu;
  defaultPanel := pnlRoomDefault;
  mapIsShown := false;
  portalsActivated := false;
  doorOpened := false;
  timer := Form1.timer;
  SkillLabelArray[0] := Form1.lblSum1;
  SkillLabelArray[1] := Form1.lblSum2;
  SkillLabelArray[2] := Form1.lblSum3;
  activeSC := -1;

  weaponCreator();
  enemyCreator();
  player := TPlayer.Create(20,0,0,0,0,hand);
  lblHp.Caption := intToStr(player.hp);
  lblMedicine.Caption := intToStr(player.medicine);
  lblBoosters.Caption := intToStr(player.boosters);
  lblCredits.Caption := intToStr(player.credits);
  lblKeys.Caption := intToStr(player.keys);
  lblWeapon.Caption := player.weapon.name;
end;

procedure TForm1.btnInfoClick(Sender: TObject);
begin
  ShowMessage('Hier wird vieles "zufällig" generiert, basierend auf den 4 Ziffern. Es gibt 39 Räume in diesem Spiel, mit einem Boss am Ende. PS: Wegen der Raumgeneration können manche Sachen repetitiv erscheinen, probiere deswegen verschiedene Zahlenkombinationen aus ;)');
end;

procedure TForm1.btnStartClick(Sender: TObject);
var k1,k2,k3,k4,key : integer;
    testRooms : TRoomArray;
begin
  if (ek1.Text = '0') or (ek2.Text = '0') or (ek3.Text = '0') or (ek4.Text = '0') then
  begin
    ShowMessage('Die Werte dürfen nicht 0 oder leer gelassen sein.');
    exit;
  end;
  if (ek1.Text = '') or (ek2.Text = '') or (ek3.Text = '') or (ek4.Text = '') then
  begin
    ShowMessage('Die Werte dürfen nicht 0 oder leer gelassen sein.');
    exit;
  end;


  pnlMenu.Visible := false;
  currentRoomsAmount := 1;
  currentRoom := firstRoom;
  setLength(coordinatesArray, 0);
  k1 := strtoint(ek1.Text) * totalRoomsAmount;
  k2 := strtoint(ek2.Text);
  k3 := strtoint(ek3.Text);
  k4 := strtoint(ek4.Text);

  dungeonGenerator(k1,k2,k3,k4, currentRoom, Form1);
  pathFinderS(spUp, spRight, spDown, spLeft);

  PanelsArray[0] := (Form1.pnlChest);
  PanelsArray[1] := (Form1.pnlFight);
  PanelsArray[2] := (Form1.pnlRoomStart);
  PanelsArray[3] := (Form1.pnlPortal);
  PanelsArray[4] := (Form1.pnlDoor);
  PanelsArray[5] := (Form1.pnlShop);
  PanelsArray[6] := (Form1.pnlPuzzle);

  contentPanel(currentRoom.content,Form1.lblEnemyHp,Form1.lblEnemyName,btnBuyMed,btnBuyBoost,btnBuyKey,btnBuyWeapon,btnFlee);
  memo.Clear();
  memo.Lines.Add('Du machst deine Augen auf und siehst, dass du auf einem Labortisch liegst. Das Letzte, woran du dich erinnerst, ist ein grüner Strahl, der dich in den Himmel gezogen hat. Du musst hier raus.');
  mapperCurrent(Form1.mapCanvas.Canvas);
  btnMap.Visible := true;
end;

procedure TForm1.btnActivatePortalsClick(Sender: TObject);
begin
  portalsActivated := true;
  ShowMessage('Das Portal wurde aktiviert.');
  Form1.btnActivatePortals.Enabled := false;
end;

procedure TForm1.btnAttackClick(Sender: TObject);
begin
  if timer.Enabled = false then
  begin
    lblDmg.Caption := intToStr(player.weapon.minDamage);
    timer.Interval := 400 - player.weapon.handle * 70;
    timer.Enabled := true;
    btnFlee.Enabled := false;
    btnMedicine.Enabled := false;
    btnBooster.Enabled := false;
    btnAttack.Caption := 'Attacke';
  end
  else
  begin
    timer.Enabled := false;
    Form1.lblEnemyHp.Caption := intToStr(strToInt(Form1.lblEnemyHp.Caption) - strToInt(Form1.lblDmg.Caption));
    currentRoom.roomMemory[1] := strToInt(Form1.lblEnemyHp.Caption);
    btnAttack.Enabled := false;
    btnAttack.Caption := 'Rüsten';

    if strToInt(Form1.lblEnemyHp.Caption) < 1 then
    begin

    if currentRoom.content = 'boss' then
    begin
      ShowMessage('Du hast das Spiel gewonnen!');
      application.Terminate();
    end;
    
    
    CPSwitcher(pnlLootBtn);
    btnFlee.Enabled := true;
    btnMedicine.Enabled := true;
    btnBooster.Enabled := true;
    btnAttack.Enabled := true;

    if boosted then
    begin
      player.weapon.minDamage := player.weapon.minDamage - 1;
      player.weapon.maxDamage := player.weapon.maxDamage - 2;
      boosted := false;
    end;
    
    end
    else
    begin
      lblEnemyDmg.Caption := '...';
      enemyTimer.Enabled := true;
    end;

  end;

end;

procedure TForm1.btnBoosterClick(Sender: TObject);
begin
  if (player.boosters = 0) or (boosted) then
  begin
    showMessage('Du kannst nicht boosten.');
    exit;
  end;
  player.boosters := player.boosters - 1;
  lblBoosters.Caption := intToStr(player.boosters);
  boosted := true;
  player.weapon.minDamage := player.weapon.minDamage + 1;
  player.weapon.maxDamage := player.weapon.maxDamage + 2;
  btnBooster.Enabled := false;
end;

procedure TForm1.btnBuyBoostClick(Sender: TObject);
begin
if player.credits < 40 then
  begin
    ShowMessage('Nicht genug Credits.');
    exit
  end;
  player.addBoosters(2);
  player.credits := player.credits - 40;
  lblBoosters.Caption := intToStr(player.boosters);
  lblCredits.Caption := intToStr(player.credits);

  btnBuyBoost.Enabled := false;
  currentRoom.roomMemory[2] := 0;
end;

procedure TForm1.btnBuyKeyClick(Sender: TObject);
begin
if player.credits < 30 then
  begin
    ShowMessage('Nicht genug Credits.');
    exit
  end;
  player.addKeys(2);
  player.credits := player.credits - 30;
  lblKeys.Caption := intToStr(player.keys);
  lblCredits.Caption := intToStr(player.credits);

  btnBuyKey.Enabled := false;
  currentRoom.roomMemory[3] := 0;
end;

procedure TForm1.btnBuyMedClick(Sender: TObject);
begin
  if player.credits < 20 then
  begin
    ShowMessage('Nicht genug Credits.');
    exit
  end;
  player.addMedicine(2);
  player.credits := player.credits - 20;
  lblMedicine.Caption := intToStr(player.medicine);
  lblCredits.Caption := intToStr(player.credits);

  btnBuyMed.Enabled := false;
  currentRoom.roomMemory[1] := 0;
end;

procedure TForm1.btnBuyWeaponClick(Sender: TObject);
begin
if player.credits < 80 then
  begin
    ShowMessage('Nicht genug Credits.');
    exit
  end;
  player.weapon := weaponsArray[currentRoom.roomMemory[0]-1];
  player.credits := player.credits - 80;
  lblWeapon.Caption := player.weapon.name;
  lblCredits.Caption := intToStr(player.credits);

  btnBuyWeapon.Enabled := false;
  currentRoom.roomMemory[0] := 0;
end;

procedure TForm1.btnLootClick(Sender: TObject);
var loot : integer;
    lootName : string;
begin
  randomize();

  case random(10) of
  0..4:begin
    player.addMoeny(30);
    lootName := 'Credits(30)';
  end;
  5..7:begin
    player.addKeys(1);
    lootName := 'Schlüssel';
  end
  else
  begin
    player.addMedicine(1);
    lootName := 'Medizin';
  end
  end;

  lootPanel(Form1.lblLoot1,Form1.lblLoot2,lootName,'-',Form1.pnlLoot);
  updateStats(lblHp, lblMedicine, lblBoosters, lblCredits, lblWeapon, lblKeys);
  currentRoom.completed := true;
  Form1.lblEnemyDmg.Caption:= '...';
  spUp.Visible := true;
  spRight.Visible := true;
  spDown.Visible := true;
  spLeft.Visible := true;
end;

procedure TForm1.btnLootTestClick(Sender: TObject);
begin
  CPSwitcher(Form1.pnlLootBtn);
end;

procedure TForm1.btnMapClick(Sender: TObject);
var content : string;
begin
  content := currentRoom.content;
  if ((content = 'enemy') or (content = 'puzzle') or (content = 'boss') or (content = 'door')) and (currentRoom.completed = false) then
  begin
    showMessage('Du kannst hier die Karte nicht nutzen.');
    exit;
  end;

  if mapIsShown = false then
  begin
    pnlMap.top := spBlack.top;
    pnlMap.Left := spBlack.left;
    spUp.Visible := false;
    spRight.Visible := false;
    spDown.Visible := false;
    spLeft.Visible := false;
    mapIsShown := true;
    lblFloor.Caption := 'ETAGE ' + intToStr(currentRoom.pos[2]);
    lblFloor.Top := spBlack.top + spBlack.Height + 15;
    lblFloor.left := spBlack.Left + Trunc(spBlack.Width/2) - Trunc(lblFloor.Width/2);
    lblRoom.Caption := 'Raum ' + intToStr(currentRoom.roomNum);
    lblRoom.Top := spBlack.top + spBlack.Height + 50;
    lblRoom.left := spBlack.Left + Trunc(spBlack.Width/2) - Trunc(lblRoom.Width/2);
    lblKey.Caption := ek1.Text + ek2.Text + ek3.Text + ek4.Text;
    lblKey.Top := spBlack.top - 60;
    lblKey.left := spBlack.Left + Trunc(spBlack.Width/2) - Trunc(lblFloor.Width/2);
    pnlmapInfo.Left := defaultPanel.Left;
    pnlmapInfo.BringToFront();
  end
  else
  begin
    pnlMap.Left := 1000;
    lblFloor.left := 1000;
    lblRoom.left := 1000;
    lblKey.left := 1000;
    spUp.Visible := true;
    spRight.Visible := true;
    spDown.Visible := true;
    spLeft.Visible := true;
    mapIsShown := false;
    pnlmapInfo.Left := 1000;
  end;

end;

procedure TForm1.btnMapInfoClick(Sender: TObject);
begin
  ShowMessage('> Die Karte zeigt nur die Räume, in welchen du schon warst.' +#10#13+ '> Wundere dich nicht über alleinstehende Räume, wahrscheinlich befindest du dich nur auf einer anderen Etage. (aktuelle Etage unter der Karte)' +#10#13+ '> Vergiss nicht, dass der Endboss in dem Raum 39 ist. (Raumnummer ebenfalls unter der Karte)')
end;

procedure TForm1.btnFoundRoomsClick(Sender: TObject);
begin
  showmessage('Labor: ✓' +#10#13+'Shop-1: '+ visited(visSh1) +#10#13+'Portal-1: '+ visited(visPrt1)+#10#13+'Mittelpunkt-Tür: '+ visited(visDr)+#10#13+'Skill-Check: '+ visited(visSc)+#10#13+'Portal-2: '+ visited(visPrt2)+#10#13+'Shop-2: '+ visited(visSh2));
end;

procedure TForm1.btnMedicineClick(Sender: TObject);
begin
  if player.medicine = 0 then
  begin
  showMessage('Du hast keine Medizin.');
  exit;
  end;
  player.medicine := player.medicine - 1;
  player.hp := player.hp + 10;
  if player.hp > 20 then
  player.hp := player.hp - (player.hp - 20);
  lblHp.Caption := intToStr(player.hp);
  lblMedicine.Caption := intToStr(player.medicine);
  lblHp.Font.Color := clBlack;
  lblHps.Font.Color := clBlack;
end;

procedure TForm1.btnOpenChestClick(Sender: TObject);
  var loot : integer;
      lootName : string;
begin
  if player.keys = 0 then
  begin
    ShowMessage('Du hast keine Schlüssel.');
    exit;
  end;

  randomize();
  case random(10) of
  0..4:begin
    player.addMedicine(1);
    lootName := 'Medizin';
  end;
  5..7:begin
    player.addBoosters(1);
    lootName := 'Booster';
  end
  else
  begin
    player.addMoeny(25);
    lootName := 'Credits(25)';
  end
  end;


  player.keys := player.keys - 1;
  lootPanel(Form1.lblLoot1,Form1.lblLoot2,lootName,'-',Form1.pnlLoot);
  updateStats(lblHp, lblMedicine, lblBoosters, lblCredits, lblWeapon, lblKeys);
  currentRoom.completed := true;
end;

procedure TForm1.btnOpenDoorClick(Sender: TObject);
begin
  doorOpened := true;
  Form1.btnOpenDoor.Enabled := false;
  ShowMessage('Die Tür wurde geöffnet.');
  Form1.spUp.Visible := true;
  Form1.spRight.Visible := true;
  Form1.spDown.Visible := true;
  Form1.spLeft.Visible := true;
  currentRoom.completed := true;
end;


//Asian Speedrun Modus
procedure TForm1.btnRoomStartTake2Click(Sender: TObject);
begin
  player.medicine := 4;
  lootPanel(Form1.lblLoot1,Form1.lblLoot2,'Medizin(4)','',Form1.pnlLoot);
  btnRoomStartTake.Visible := false;
  btnRoomStartTake2.Visible := false;
  updateStats(lblHp, lblMedicine, lblBoosters, lblCredits, lblWeapon, lblKeys);
end;

procedure TForm1.btnRoomStartTakeClick(Sender: TObject);
begin
  player.weapon := skalpell;
  player.medicine := 2;
  lootPanel(Form1.lblLoot1,Form1.lblLoot2,'Skalpell','Medizin(2)',Form1.pnlLoot);
  btnRoomStartTake.Visible := false;
  btnRoomStartTake2.Visible := false;
  updateStats(lblHp, lblMedicine, lblBoosters, lblCredits, lblWeapon, lblKeys);
end;

procedure TForm1.btnSkillClick(Sender: TObject);
var a,b,c : integer;
begin
  a := strToInt(Form1.lblSum1.Caption);
  b := strToInt(Form1.lblSum2.Caption);
  c := strToInt(Form1.lblSum3.Caption);

  if (activeSC + 1) > 2 then
  begin
    skillCheckTimer.Enabled := false;
    btnSkill.Enabled := false;
    currentRoom.completed := true;
    Form1.spUp.Visible := true;
    Form1.spRight.Visible := true;
    Form1.spDown.Visible := true;
    Form1.spLeft.Visible := true;
    if (a + b + c) > 20 then
    begin
      ShowMessage('Du hast den Skill Check bestanden.');
      lootPanel(Form1.lblLoot1,Form1.lblLoot2,'Credits(70)','-',Form1.pnlLoot);
      player.addMoeny(70);
      lblCredits.Caption := intToStr(player.credits);
    end
    else
    begin
      ShowMessage('Du hast den Skill Check nicht bestanden.');
    end;
  end
  else
  begin
    activeSC := activeSC + 1;
    skillCheckTimer.Enabled := true;
  end;
end;

procedure TForm1.timerTimer(Sender: TObject);
var min, max: integer;
begin
  min := player.weapon.minDamage;
  max := player.weapon.maxDamage;

  if player.dmg < max then
  player.dmg := player.dmg + 1
  else
  player.dmg := min;

  Form1.lblDmg.Caption := intToStr(player.dmg);
end;

procedure TForm1.skillCheckTimerTimer(Sender: TObject);
var num : integer;
begin
  num := strToInt(SkillLabelArray[activeSC].Caption);

  if num = 9 then
  SkillLabelArray[activeSC].Caption := intToStr(0)
  else
  SkillLabelArray[activeSC].Caption := intToStr(num + 1);

end;

procedure TForm1.enemyTimerTimer(Sender: TObject);
var min, max, dmg: integer;
begin
  min := enemyArray[currentRoom.roomMemory[0]].minDamage;
  max := enemyArray[currentRoom.roomMemory[0]].maxDamage;
  dmg := Math.RandomRange(min, max + 1);

  lblEnemyDmg.Caption := intToStr(dmg);
  player.hp := player.hp - dmg;
  lblHp.Caption := intToStr(player.hp);
  btnFlee.Enabled := true;
  btnMedicine.Enabled := true;
  btnBooster.Enabled := true;
  btnAttack.Enabled := true;
  enemyTimer.Enabled := false;

  if player.hp < 5 then
  begin
    lblhp.Font.Color := clRed;
    lblhpS.Font.Color := clRed;
  end;


  if player.hp < 1 then
  begin
    lblHp.Caption := intToStr(0);
    showMessage('Du hast verloren.');
    application.Terminate();
  end;
end;

procedure movement(dirRoom : TRoom; direction : String);
var map, nextMap, f1,f2,f3,f4,f5,f6,f7 : TImage;
    oldRoom : TRoom;
begin
if Assigned(dirRoom) then
  begin

  f1 := Form1.mapCanvas;
  f2 := Form1.mapCanvas2;
  f3 := Form1.mapCanvas3;
  f4 := Form1.mapCanvas4;
  f5 := Form1.mapCanvas5;
  f6 := Form1.mapCanvas6;
  f7 := Form1.mapCanvas7;

  case currentRoom.pos[2] of
  0: map := f1;
  1: map := f2;
  2: map := f3;
  3: map := f4;
  4: map := f5;
  5: map := f6;
  6: map := f7;
  end;

  case dirRoom.pos[2] of
  0: nextMap := f1;
  1: nextMap := f2;
  2: nextMap := f3;
  3: nextMap := f4;
  4: nextMap := f5;
  5: nextMap := f6;
  6: nextMap := f7;
  end;

  oldRoom := currentRoom;
  prevRoom := currentRoom;
  mapper(map.Canvas);
  currentRoom := dirRoom;
  mapper(nextMap.Canvas);

  if currentRoom.completed = true then
     CPCompleted(currentRoom.content)
  else
    contentPanel(currentRoom.content, Form1.lblEnemyHp,Form1.lblEnemyName,Form1.btnBuyMed,Form1.btnBuyBoost,Form1.btnBuyKey,Form1.btnBuyWeapon,Form1.btnFlee);
  Form1.pnlLoot.left := 1000;

  pathFinderS(Form1.spUp, Form1.spRight, Form1.spDown, Form1.spLeft);
  bossCheck(Form1.spUp, Form1.spRight, Form1.spDown, Form1.spLeft);
  storyWriter(currentRoom, Form1.memo);
  mapperFloors(oldRoom, currentRoom.pos[2], f1,f2,f3,f4,f5,f6,f7, nextMap, direction);
  closeDoors(direction, Form1.spUp, Form1.spRight, Form1.spDown, Form1.spLeft,Form1.btnOpenDoor,oldRoom);
  end;
end;


//-----------Bewegungstasten-Anfang------------//

procedure TForm1.spDownMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 movement(currentRoom.down,'down');
end;

procedure TForm1.spLeftMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 movement(currentRoom.left,'left');
end;

procedure TForm1.spRightMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 movement(currentRoom.right,'right');
end;

procedure TForm1.spUpMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  movement(currentRoom.up,'up');
end;

procedure TForm1.btnPortalClick(Sender: TObject);
begin
  if portalsActivated = false then
  begin
    ShowMessage('Das Portal ist nicht aktiv');
    exit;
  end;

  visPrt2 := true;
  if currentRoom = roomsArray[Round(currentRoomsAmount * (1/4))] then
  movement(roomsArray[Round(currentRoomsAmount * (2/3))], '-')
  else
  movement(roomsArray[Round(currentRoomsAmount * (1/4))], '-');
  showMessage('Du hast dich in einen anderen Raum teleportiert.');
end;

procedure TForm1.btnFleeClick(Sender: TObject);
begin
  movement(prevRoom, '-');
  Form1.lblEnemyDmg.Caption:= '...';
  if boosted then
  begin
    player.weapon.minDamage := player.weapon.minDamage - 1;
    player.weapon.maxDamage := player.weapon.maxDamage - 2;
    boosted := false;
    btnBooster.Enabled := true;
  end;
end;

//-----------Bewegungstasten-Ende------------//



//-----------ShapeHower-Anfang-------------//
procedure TForm1.spUpMouseEnter(Sender: TObject);
begin
  if spUp.Brush.Color = clWhite then
  spUp.Pen.Width := 2;
end;
procedure TForm1.spUpMouseLeave(Sender: TObject);
begin
  spUp.Pen.Width := 1;
end;

procedure TForm1.spRightMouseEnter(Sender: TObject);
begin
  if spRight.Brush.Color = clWhite then
  spRight.Pen.Width := 2;
end;
procedure TForm1.spRightMouseLeave(Sender: TObject);
begin
  spRight.Pen.Width := 1;
end;

procedure TForm1.spDownMouseEnter(Sender: TObject);
begin
  if spDown.Brush.Color = clWhite then
  spDown.Pen.Width := 2;
end;
procedure TForm1.spDownMouseLeave(Sender: TObject);
begin
  spDown.Pen.Width := 1;
end;

procedure TForm1.spLeftMouseEnter(Sender: TObject);
begin
  if spLeft.Brush.Color = clWhite then
  spLeft.Pen.Width := 2;
end;
procedure TForm1.spLeftMouseLeave(Sender: TObject);
begin
 spLeft.Pen.Width := 1;
end;
//-----------ShapesHower-Ende---------------//
end.
