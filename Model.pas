unit Model;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, SMDBGrid;

type
  TfrmModel = class(TForm)
    grdModel: TSMDBGrid;
    dsModel: TDataSource;
    qryModel: TADOQuery;
    qryModelACC_MODEL: TStringField;
    qryModelACC_IBM: TStringField;
    qryModelACC_IBI: TStringField;
    qryModelACC_CRADLE: TStringField;
    qryModelACC_CABLE: TStringField;
    qryModelACC_CNT: TIntegerField;
    qryModelACC_CARDNAME: TStringField;
    qryModelACC_GRP: TIntegerField;
    qryModelACC_EAN: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdModelDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frmModel: TfrmModel;
  gModel : string ;
  gTab : Integer;

implementation

uses Main;

{$R *.dfm}

procedure TfrmModel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ModalResult <> mrOk then Application.Terminate;
end;

procedure TfrmModel.FormShow(Sender: TObject);
begin
  qryModel.Close;
  qryModel.Open;
end;

procedure TfrmModel.grdModelDblClick(Sender: TObject);
begin
  gModel := qryModelACC_MODEL.Value;
  gTab := qryModelACC_GRP.Value;

  frmMain.qrySetCount.Close;
  frmMain.qrySetCount.Open;

  frmMain.qryAccCount.Close;
  frmMain.qryAccCount.Open;

  ModalResult := mrOk;
end;

end.
