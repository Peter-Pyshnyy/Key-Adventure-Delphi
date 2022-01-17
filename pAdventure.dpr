program pAdventure;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {Form1},
  uFunctions in 'uFunctions.pas',
  uDeclaretions in 'uDeclaretions.pas',
  uWorldGenerator in 'uWorldGenerator.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
