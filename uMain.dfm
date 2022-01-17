object Form1: TForm1
  AlignWithMargins = True
  Left = 0
  Top = 0
  Margins.Left = 33
  Margins.Top = 33
  Margins.Right = 33
  Margins.Bottom = 33
  ActiveControl = memo
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'PyshnyyAdventure'
  ClientHeight = 368
  ClientWidth = 660
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object spDashed: TShape
    Left = 32
    Top = 51
    Width = 245
    Height = 245
    Brush.Color = 4737096
    Brush.Style = bsBDiagonal
    Pen.Color = 4737096
  end
  object spBlack: TShape
    Left = 42
    Top = 61
    Width = 225
    Height = 225
    Brush.Color = clBlack
    Pen.Style = psClear
  end
  object spRight: TShape
    Left = 279
    Top = 123
    Width = 25
    Height = 100
    Pen.Color = 4737096
    OnMouseDown = spRightMouseDown
    OnMouseEnter = spRightMouseEnter
    OnMouseLeave = spRightMouseLeave
  end
  object spLeft: TShape
    Left = 5
    Top = 123
    Width = 25
    Height = 100
    Pen.Color = 4737096
    OnMouseDown = spLeftMouseDown
    OnMouseEnter = spLeftMouseEnter
    OnMouseLeave = spLeftMouseLeave
  end
  object spUp: TShape
    Left = 104
    Top = 24
    Width = 100
    Height = 25
    Pen.Color = 3158064
    OnMouseDown = spUpMouseDown
    OnMouseEnter = spUpMouseEnter
    OnMouseLeave = spUpMouseLeave
  end
  object spDown: TShape
    Left = 104
    Top = 298
    Width = 100
    Height = 25
    Pen.Color = 4737096
    OnMouseDown = spDownMouseDown
    OnMouseEnter = spDownMouseEnter
    OnMouseLeave = spDownMouseLeave
  end
  object lblKey: TLabel
    Left = 883
    Top = 68
    Width = 96
    Height = 42
    Caption = '4636'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
  end
  object lblFloor: TLabel
    Left = 959
    Top = 243
    Width = 112
    Height = 30
    Caption = 'ETAGE 0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
  end
  object lblRoom: TLabel
    Left = 975
    Top = 275
    Width = 60
    Height = 20
    Caption = 'Raum 0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Shape1: TShape
    Left = 310
    Top = 175
    Width = 345
    Height = 2
    Brush.Color = 3158064
    Pen.Color = 3158064
  end
  object lblHpS: TLabel
    Left = 344
    Top = 190
    Width = 30
    Height = 18
    Caption = 'HP:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
  end
  object lblMedicineS: TLabel
    Left = 344
    Top = 213
    Width = 70
    Height = 18
    Caption = 'Medizin'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
  end
  object lblBoostersS: TLabel
    Left = 344
    Top = 236
    Width = 70
    Height = 18
    Caption = 'Booster'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
  end
  object lblCreditsS: TLabel
    Left = 344
    Top = 259
    Width = 80
    Height = 18
    Caption = 'Credits:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
  end
  object lblWeaponS: TLabel
    Left = 344
    Top = 306
    Width = 60
    Height = 18
    Caption = 'Waffe:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
  end
  object lblHp: TLabel
    Left = 514
    Top = 190
    Width = 10
    Height = 18
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
  end
  object lblMedicine: TLabel
    Left = 514
    Top = 213
    Width = 10
    Height = 18
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
  end
  object lblBoosters: TLabel
    Left = 514
    Top = 236
    Width = 10
    Height = 18
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
  end
  object lblCredits: TLabel
    Left = 514
    Top = 259
    Width = 10
    Height = 18
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
  end
  object lblWeapon: TLabel
    Left = 514
    Top = 306
    Width = 10
    Height = 18
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
  end
  object lblKeysS: TLabel
    Left = 344
    Top = 283
    Width = 100
    Height = 18
    Caption = 'Schl'#252'ssel:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
  end
  object lblKeys: TLabel
    Left = 514
    Top = 283
    Width = 10
    Height = 18
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
  end
  object pnlRoomDefault: TPanel
    Left = 310
    Top = 32
    Width = 345
    Height = 137
    BorderStyle = bsSingle
    Color = clWhite
    ParentBackground = False
    TabOrder = 7
    StyleElements = [seFont, seClient]
  end
  object memo: TMemo
    Left = 57
    Top = 76
    Width = 195
    Height = 195
    Cursor = crArrow
    Margins.Top = 33
    BorderStyle = bsNone
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Courier'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object pnlMap: TPanel
    Left = 868
    Top = 12
    Width = 225
    Height = 225
    Color = clBlack
    ParentBackground = False
    TabOrder = 1
    object mapCanvas: TImage
      Left = 5
      Top = 5
      Width = 215
      Height = 215
      Stretch = True
    end
    object mapCanvas2: TImage
      Left = 5
      Top = 5
      Width = 215
      Height = 215
    end
    object mapCanvas3: TImage
      Left = 5
      Top = 5
      Width = 215
      Height = 215
    end
    object mapCanvas4: TImage
      Left = 5
      Top = 5
      Width = 215
      Height = 215
    end
    object mapCanvas5: TImage
      Left = 5
      Top = 5
      Width = 215
      Height = 215
    end
    object mapCanvas6: TImage
      Left = 5
      Top = 5
      Width = 215
      Height = 215
    end
    object mapCanvas7: TImage
      Left = 5
      Top = 5
      Width = 215
      Height = 215
    end
  end
  object btnMap: TButton
    Left = 8
    Top = 15
    Width = 75
    Height = 25
    Caption = 'Karte'
    TabOrder = 2
    Visible = False
    OnClick = btnMapClick
  end
  object pnlMenu: TPanel
    Left = 310
    Top = 32
    Width = 345
    Height = 137
    BorderWidth = 5
    BorderStyle = bsSingle
    Color = clWhite
    ParentBackground = False
    TabOrder = 3
    object eK1: TEdit
      Left = 136
      Top = 37
      Width = 15
      Height = 21
      DoubleBuffered = True
      MaxLength = 1
      NumbersOnly = True
      ParentDoubleBuffered = False
      TabOrder = 0
      Text = '9'
    end
    object eK2: TEdit
      Left = 157
      Top = 37
      Width = 15
      Height = 21
      MaxLength = 1
      NumbersOnly = True
      TabOrder = 1
      Text = '9'
    end
    object eK3: TEdit
      Left = 178
      Top = 37
      Width = 15
      Height = 21
      MaxLength = 1
      NumbersOnly = True
      TabOrder = 2
      Text = '9'
    end
    object eK4: TEdit
      Left = 199
      Top = 37
      Width = 15
      Height = 21
      MaxLength = 1
      NumbersOnly = True
      TabOrder = 3
      Text = '9'
    end
    object btnStart: TButton
      Left = 136
      Top = 66
      Width = 78
      Height = 25
      Caption = 'START'
      DragCursor = crHandPoint
      TabOrder = 4
      StyleElements = [seFont, seClient]
      OnClick = btnStartClick
    end
    object btnInfo: TButton
      Left = 112
      Top = 97
      Width = 121
      Height = 25
      Caption = 'READ ME!'
      TabOrder = 5
      OnClick = btnInfoClick
    end
  end
  object pnlRoomStart: TPanel
    Left = 696
    Top = 32
    Width = 345
    Height = 137
    BorderStyle = bsSingle
    Color = clWhite
    ParentBackground = False
    TabOrder = 4
    object lblRoomStartLoot: TLabel
      Left = 8
      Top = 49
      Width = 11
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'OCR A Extended'
      Font.Style = [fsUnderline]
      ParentFont = False
      Visible = False
    end
    object btnRoomStartTake: TButton
      Left = 39
      Top = 19
      Width = 216
      Height = 86
      Caption = 'Skalpell und Medizin nehmen'
      TabOrder = 0
      OnClick = btnRoomStartTakeClick
    end
    object btnRoomStartTake2: TButton
      Left = 260
      Top = 19
      Width = 45
      Height = 86
      Caption = 'ASR'
      TabOrder = 1
      OnClick = btnRoomStartTake2Click
    end
  end
  object pnlLoot: TPanel
    Left = 700
    Top = 32
    Width = 345
    Height = 137
    BorderStyle = bsSingle
    Color = clWhite
    ParentBackground = False
    TabOrder = 5
    StyleElements = [seFont, seClient]
    object lblLootHead: TStaticText
      Left = 16
      Top = 10
      Width = 89
      Height = 35
      Caption = 'LOOT:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -28
      Font.Name = 'Courier New'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      TabOrder = 0
    end
    object lblLoot1: TStaticText
      Left = 16
      Top = 50
      Width = 4
      Height = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object lblLoot2: TStaticText
      Left = 16
      Top = 83
      Width = 4
      Height = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object pnlLootBtn: TPanel
    Left = 700
    Top = 32
    Width = 345
    Height = 137
    BorderStyle = bsSingle
    Color = clWhite
    ParentBackground = False
    TabOrder = 6
    StyleElements = [seFont, seClient]
    object btnLoot: TButton
      Left = 72
      Top = 39
      Width = 193
      Height = 65
      Caption = 'Looten'
      TabOrder = 0
      OnClick = btnLootClick
    end
  end
  object pnlFight: TPanel
    Left = 696
    Top = 32
    Width = 345
    Height = 137
    BorderStyle = bsSingle
    Color = clWhite
    ParentBackground = False
    TabOrder = 8
    StyleElements = [seFont, seClient]
    object lblDmg: TLabel
      Left = 103
      Top = 96
      Width = 11
      Height = 21
      Caption = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 58
      Width = 324
      Height = 23
      Caption = '---------------------------'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'OCR A Extended'
      Font.Style = []
      ParentFont = False
    end
    object lblEnemyName: TLabel
      Left = 8
      Top = 4
      Width = 60
      Height = 23
      Caption = 'Wache'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 36
      Width = 30
      Height = 18
      Caption = 'Hp:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 160
      Top = 36
      Width = 90
      Height = 18
      Caption = 'Attacke: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
    end
    object lblEnemyHp: TLabel
      Left = 40
      Top = 36
      Width = 20
      Height = 20
      Caption = '15'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
    end
    object lblEnemyDmg: TLabel
      Left = 240
      Top = 36
      Width = 30
      Height = 20
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
    end
    object btnAttack: TButton
      Left = 8
      Top = 89
      Width = 89
      Height = 32
      Caption = 'R'#252'sten'
      TabOrder = 0
      OnClick = btnAttackClick
    end
    object btnFlee: TButton
      Left = 125
      Top = 89
      Width = 89
      Height = 32
      Caption = 'Fliehen'
      TabOrder = 1
      OnClick = btnFleeClick
    end
    object btnMedicine: TButton
      Left = 232
      Top = 89
      Width = 41
      Height = 32
      Caption = 'Med'
      TabOrder = 2
      OnClick = btnMedicineClick
    end
    object btnBooster: TButton
      Left = 288
      Top = 89
      Width = 41
      Height = 32
      Caption = 'Boost'
      TabOrder = 3
      OnClick = btnBoosterClick
    end
  end
  object pnlChest: TPanel
    Left = 688
    Top = 32
    Width = 345
    Height = 137
    BorderStyle = bsSingle
    Caption = 'chest'
    Color = clWhite
    ParentBackground = False
    TabOrder = 9
    StyleElements = [seFont, seClient]
    object btnOpenChest: TButton
      Left = 88
      Top = 32
      Width = 169
      Height = 57
      Caption = 'Kiste mit einem schl'#252'ssel '#246'ffnen'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnOpenChestClick
    end
  end
  object pnlMapInfo: TPanel
    Left = 696
    Top = 32
    Width = 345
    Height = 137
    BorderStyle = bsSingle
    Color = clWhite
    ParentBackground = False
    TabOrder = 10
    StyleElements = [seFont, seClient]
    object btnFoundRooms: TButton
      Left = 89
      Top = 20
      Width = 152
      Height = 53
      Caption = 'Wichtige R'#228'ume'
      TabOrder = 0
      OnClick = btnFoundRoomsClick
    end
    object btnMapInfo: TButton
      Left = 89
      Top = 79
      Width = 152
      Height = 34
      Caption = #220'ber die Karte'
      TabOrder = 1
      OnClick = btnMapInfoClick
    end
  end
  object pnlPortal: TPanel
    Left = 688
    Top = 32
    Width = 345
    Height = 137
    BorderStyle = bsSingle
    Color = clWhite
    ParentBackground = False
    TabOrder = 11
    StyleElements = [seFont, seClient]
    object btnPortal: TButton
      Left = 112
      Top = 34
      Width = 123
      Height = 54
      Caption = 'Teleportieren'
      TabOrder = 0
      OnClick = btnPortalClick
    end
  end
  object pnlDoor: TPanel
    Left = 688
    Top = 32
    Width = 345
    Height = 137
    BorderStyle = bsSingle
    Color = clWhite
    ParentBackground = False
    TabOrder = 12
    StyleElements = [seFont, seClient]
    object btnActivatePortals: TButton
      Left = 96
      Top = 11
      Width = 129
      Height = 47
      Caption = 'das Portal aktivieren'
      TabOrder = 0
      OnClick = btnActivatePortalsClick
    end
    object btnOpenDoor: TButton
      Left = 96
      Top = 76
      Width = 129
      Height = 45
      Caption = 'die T'#252'r '#246'ffnen'
      Enabled = False
      TabOrder = 1
      OnClick = btnOpenDoorClick
    end
  end
  object pnlShop: TPanel
    Left = 682
    Top = 32
    Width = 345
    Height = 137
    BorderStyle = bsSingle
    Color = clWhite
    ParentBackground = False
    TabOrder = 13
    StyleElements = [seFont, seClient]
    object Label4: TLabel
      Left = 48
      Top = 50
      Width = 40
      Height = 18
      Caption = '20 C'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 152
      Top = 50
      Width = 40
      Height = 18
      Caption = '40 C'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 264
      Top = 50
      Width = 40
      Height = 18
      Caption = '30 C'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 272
      Top = 98
      Width = 48
      Height = 22
      Caption = '80 C'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
    end
    object btnBuyMed: TButton
      Left = 16
      Top = 3
      Width = 89
      Height = 49
      Caption = 'Medizin(2)'
      TabOrder = 0
      OnClick = btnBuyMedClick
    end
    object btnBuyBoost: TButton
      Left = 125
      Top = 3
      Width = 89
      Height = 49
      Caption = 'Booster(2)'
      TabOrder = 1
      OnClick = btnBuyBoostClick
    end
    object btnBuyKey: TButton
      Left = 232
      Top = 3
      Width = 89
      Height = 49
      Caption = 'Schl'#252'ssel(2)'
      TabOrder = 2
      OnClick = btnBuyKeyClick
    end
    object btnBuyWeapon: TButton
      Left = 80
      Top = 82
      Width = 186
      Height = 47
      Caption = 'Waffe'
      TabOrder = 3
      OnClick = btnBuyWeaponClick
    end
  end
  object pnlPuzzle: TPanel
    Left = 696
    Top = 32
    Width = 345
    Height = 137
    BorderStyle = bsSingle
    Color = clWhite
    ParentBackground = False
    TabOrder = 14
    StyleElements = [seFont, seClient]
    object lblSum1: TLabel
      Left = 112
      Top = 10
      Width = 24
      Height = 42
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -40
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
    end
    object lblSum2: TLabel
      Left = 152
      Top = 10
      Width = 24
      Height = 42
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -40
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
    end
    object lblSum3: TLabel
      Left = 192
      Top = 10
      Width = 24
      Height = 42
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -40
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 40
      Top = 51
      Width = 272
      Height = 13
      Caption = 'Die Summe muss mehr als 20 ergeben'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'OCR A Extended'
      Font.Style = []
      ParentFont = False
    end
    object btnSkill: TButton
      Left = 88
      Top = 78
      Width = 153
      Height = 43
      Caption = 'Skill Check'
      TabOrder = 0
      OnClick = btnSkillClick
    end
  end
  object timer: TTimer
    Enabled = False
    Interval = 500
    OnTimer = timerTimer
    Left = 600
    Top = 384
  end
  object enemyTimer: TTimer
    Enabled = False
    Interval = 1500
    OnTimer = enemyTimerTimer
    Left = 552
    Top = 384
  end
  object skillCheckTimer: TTimer
    Enabled = False
    Interval = 70
    OnTimer = skillCheckTimerTimer
    Left = 656
    Top = 384
  end
end
