unit U_Msg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmMsg = class(TForm)
    lblMsg: TLabel;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMsg: TfrmMsg;

implementation
uses Main;
{$R *.dfm}

procedure TfrmMsg.Timer1Timer(Sender: TObject);
begin
  timer1.Enabled := false;
  ModalResult := mrOk;
end;

procedure TfrmMsg.FormShow(Sender: TObject);
begin
  lblMsg.Caption := gMsg;
  timer1.Enabled := true;
end;

end.
