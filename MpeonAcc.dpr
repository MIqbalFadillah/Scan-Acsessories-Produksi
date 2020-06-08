program MpeonAcc;

uses
  Forms,
  Main in 'Main.pas' {frmMain},
  Model in 'Model.pas' {frmModel},
  U_Msg in 'U_Msg.pas' {frmMsg};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmModel, frmModel);
  Application.CreateForm(TfrmMsg, frmMsg);
  Application.Run;
end.
