unit uDeclaretions;

interface

uses
Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Math, System.StrUtils, fmx.Types,
Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TStringArray = array[0..3] of string;
  TPosArray = array[0..2] of Integer;

//----------------Klassen--Anfang---------------------//
  TRoom = class
    public
      roomNum : integer;
      pos : TPosArray;
      up : TRoom;
      right : TRoom;
      down : TRoom;
      left : TRoom;
      freeSlots : TStringArray;
      content : String;
      contentPanel : TPanel;
      completed, memoryAssigned: bool;
      roomMemory: array[0..3] of integer;
  end;

  TWeapon = class
    public
      name : string;
      minDamage : integer;
      maxDamage : integer;
      handle : integer;
      constructor Create (name : string; minDamage, maxDamage, handle : integer);
  end;

  TEnemy = class
    public
      name : string;
      hp : integer;
      minDamage : integer;
      maxDamage : integer;
      constructor Create (name : string; hp, minDamage, maxDamage : integer);
  end;

  TPlayer = class
    public
      hp, medicine, boosters, credits, keys, dmg : integer;
      weapon : TWeapon;

      constructor Create (hp, medicine, boosters, credits, keys : integer; weapon : TWeapon);
      procedure addMoeny(amount : integer);
      procedure addMedicine(amount : integer);
      procedure addBoosters(amount : integer);
      procedure addKeys(amount : integer);
  end;

//-----------------Klassen--Ende-----------------------------//

  TRoomArray = array of TRoom;
  TConnectedRoomArray = array[0..1] of TRoom;
  THackPanel = class(TPanel);

var
  firstRoom, currentRoom, prevRoom : TRoom;
  currentPanel, defaultPanel : TPanel;
  roomsArray : array of TRoom;
  currentRoomsAmount, totalRoomsAmount, activeSC : Integer;
  coordinatesArray : array of TPosArray;
  panelsArray : array[0..6] of TPanel;
  player : TPlayer;
  hand,skalpell,blaster,laserpistole,lichtschwert,dh,gabel,gm: TWeapon;
  doctor, guard, hausmeister, boss: TEnemy;
  enemyArray : array [0..3] of TEnemy;
  weaponsArray : array [0..4] of TWeapon;
  mapIsShown, portalsActivated, doorOpened, boosted, visSh1, visSh2, visPrt1, visPrt2, visDr, visSc: bool;
  SkillLabelArray : array [0..2] of TLabel;
  timer : TTimer;
const
  contentsArray  : array  [0..7] of string = ('hallway', 'hallway', 'hallway', 'chest', 'chest', 'enemy','enemy','enemy');

  procedure weaponCreator();
  procedure enemyCreator();

implementation

constructor TPlayer.Create(hp, medicine, boosters, credits, keys : integer; weapon : TWeapon);
begin
  self.hp := hp;
  self.medicine := medicine;
  self.boosters := boosters;
  self.credits := credits;
  self.keys := keys;
  self.weapon := weapon;
end;

procedure TPlayer.addMoeny (amount : integer);
begin
  player.credits := player.credits + amount;
end;

procedure TPlayer.addMedicine(amount : integer);
begin
  player.medicine := player.medicine + amount;
end;

procedure TPlayer.addKeys(amount : integer);
begin
  player.keys := player.keys + amount;
end;

procedure TPlayer.addBoosters(amount : integer);
begin
  player.boosters := player.boosters + amount;
end;

constructor TWeapon.Create(name : string; minDamage, maxDamage, handle : integer);
begin
  self.name := name;
  self.minDamage := minDamage;
  self.maxDamage := maxDamage;
  self.handle := handle;
end;

procedure weaponCreator();
begin
  hand := TWeapon.Create('Hand', 1, 2, 1);
  skalpell := TWeapon.Create('Skalpell', 2, 4, 3);
  blaster := TWeapon.Create('Blaster', 3,7,4);
  laserpistole := TWeapon.Create('Laserpistole', 4,6,3);
  lichtschwert := TWeapon.Create('Lichtschwert', 4,8,4);
  dh := TWeapon.Create('DOOM Handschuhe',3,6,2);
  gabel := TWeapon.Create('L?ffel',-5,12,5);
  gm := TWeapon.Create('God Mode', 50,50,1);

  weaponsArray[0] := blaster;
  weaponsArray[1] := laserpistole;
  weaponsArray[2] := lichtschwert;
  weaponsArray[3] := dh;
  weaponsArray[4] := gabel;
end;

constructor TEnemy.Create (name : string; hp, minDamage, maxDamage : integer);
begin
  self.name := name;
  self.hp := hp;
  self.minDamage := minDamage;
  self.maxDamage := maxDamage;
end;

procedure enemyCreator();
begin
Doctor := Tenemy.Create('Alien Arzt', 15, 1,2);
Guard := TEnemy.Create('W?chter', 20, 1, 3);
Hausmeister := TEnemy.Create('Alien Hausmeister', 30, 1, 1);
boss := TEnemy.Create('Alien Boss',50,2,7);
enemyArray[0] := Doctor;
enemyArray[1] := Guard;
enemyArray[2] := Hausmeister;
enemyArray[3] := boss;
end;
end.
