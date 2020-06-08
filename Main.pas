unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB,IniFiles, ExtCtrls, SUIPageControl, SUITabControl, StdCtrls,
  ComCtrls, Grids, DBGrids, SMDBGrid,ComObj;

type
  TfrmMain = class(TForm)
    Qry: TADOQuery;
    Qry_GetServerTime: TADOQuery;
    Qry_GetServerTimeServerTime: TDateTimeField;
    Qry_GetServerTimeApproval: TStringField;
    Qry_GetServerTimeStartOfThisWeek: TDateTimeField;
    Qry_GetServerTimeEndOfThisWeek: TDateTimeField;
    Qry_GetServerTimeStartOfLastMonth: TDateTimeField;
    Qry_GetServerTimeEndOfLastMonth: TDateTimeField;
    Qry_GetServerTimeStartOfThisMonth: TDateTimeField;
    Qry_GetServerTimeEndOfThisMonth: TDateTimeField;
    Qry_GetServerTimeStartOfNextMonth: TDateTimeField;
    Qry_GetServerTimeEndOfNextMonth: TDateTimeField;
    Qry_GetServerTimeStartOfYear: TDateTimeField;
    Qry_GetServerTimeEndOfYear: TDateTimeField;
    Qry_GetServerTimeNameOfThisMonth: TWideStringField;
    Qry_GetServerTimeThisYear: TStringField;
    Qry_GetServerTimeVersion: TWideStringField;
    DBConnection: TADOConnection;
    Panel1: TPanel;
    Panel4: TPanel;
    PageControl1: TPageControl;
    Tab1: TTabSheet;
    Panel3: TPanel;
    edtSetSN1: TEdit;
    edtIBM1: TEdit;
    Tab2: TTabSheet;
    Tab3: TTabSheet;
    Tab4: TTabSheet;
    Panel2: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    edtSetSN2: TEdit;
    edtIBM2: TEdit;
    edtCradle2: TEdit;
    Panel7: TPanel;
    edtSetSN3: TEdit;
    edtIBM3: TEdit;
    edtCradle3: TEdit;
    edtDcCable3: TEdit;
    Panel8: TPanel;
    edtSetSN4: TEdit;
    edtIBM4: TEdit;
    edtCradle4: TEdit;
    edtDcCable4: TEdit;
    edtIBI4: TEdit;
    Label8: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    qryPair: TADOQuery;
    dsPair: TDataSource;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    qryPairACC_MODEL: TStringField;
    qryPairACC_SN: TStringField;
    qryPairACC_PBASN: TStringField;
    qryPairACC_IBM: TStringField;
    qryPairACC_IBI: TStringField;
    qryPairACC_CRADLE: TStringField;
    qryPairACC_CABLE: TStringField;
    qryPairACC_DATE: TDateTimeField;
    btnReset: TButton;
    qrySetCount: TADOQuery;
    qrySetCountQty: TIntegerField;
    qryAccCount: TADOQuery;
    qryAccCountQty: TIntegerField;
    Tab5: TTabSheet;
    chkSkipIBM1: TCheckBox;
    chkSkipIBM2: TCheckBox;
    chkSkipCradle2: TCheckBox;
    chkSkipCradle3: TCheckBox;
    chkSkipIBM3: TCheckBox;
    chkSkipDcCable3: TCheckBox;
    chkSkipDcCable4: TCheckBox;
    chkSkipCradle4: TCheckBox;
    chkSkipIBM4: TCheckBox;
    chkSkipIBI4: TCheckBox;
    Panel9: TPanel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    edtSetSN5: TEdit;
    edtIBM5: TEdit;
    edtCradle5: TEdit;
    edtDcCable5: TEdit;
    edtIBI5: TEdit;
    chkSkipDcCable5: TCheckBox;
    chkSkipCradle5: TCheckBox;
    chkSkipIBM5: TCheckBox;
    chkSkipIBI5: TCheckBox;
    edtCrdName5: TEdit;
    chkSkipCrdName5: TCheckBox;
    Label26: TLabel;
    edtSkipIBM1: TEdit;
    qryPairACC_CARDNAME: TStringField;
    edtSkipIBM2: TEdit;
    edtSkipCradle2: TEdit;
    edtSkipCradle3: TEdit;
    edtSkipIBM3: TEdit;
    edtSkipDcCable3: TEdit;
    edtSkipDcCable4: TEdit;
    edtSkipCradle4: TEdit;
    edtSkipIBM4: TEdit;
    edtSkipIBI4: TEdit;
    edtSkipIBI5: TEdit;
    edtSkipDcCable5: TEdit;
    edtSkipCradle5: TEdit;
    edtSkipIBM5: TEdit;
    edtSkipCrdName5: TEdit;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    grdPair: TSMDBGrid;
    TabSheet2: TTabSheet;
    grdHistory: TSMDBGrid;
    Panel10: TPanel;
    btnRefresh: TButton;
    dtpDateEnd: TDateTimePicker;
    Label27: TLabel;
    dtpDateStart: TDateTimePicker;
    Label28: TLabel;
    sdExcel: TSaveDialog;
    qryHistory: TADOQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    DateTimeField1: TDateTimeField;
    dsHistory: TDataSource;
    Tab6: TTabSheet;
    Panel11: TPanel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    edtSetSN6: TEdit;
    edtIBM6: TEdit;
    edtDcCable6: TEdit;
    chkSkipIBM6: TCheckBox;
    chkSkipDcCable6: TCheckBox;
    edtSkipIBM6: TEdit;
    edtSkipDcCable6: TEdit;
    btnExcel: TButton;
    Panel27: TPanel;
    TabSheet3: TTabSheet;
    SMDBGrid1: TSMDBGrid;
    qryNotScan: TADOQuery;
    dsNotScan: TDataSource;
    qryNotScanO_BUYERSERIALNO: TStringField;
    qryNotScano_createdate: TDateTimeField;
    qryPairo_createdate: TDateTimeField;
    qryHistoryo_createdate: TDateTimeField;
    qryNotScanacc_date: TDateTimeField;
    SP_Menu_Option: TADOStoredProc;
    Tab7: TTabSheet;
    Panel12: TPanel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    edtSetSN7: TEdit;
    edtDcCable7: TEdit;
    edtEan7: TEdit;
    chkSkipDcCable7: TCheckBox;
    edtSkipDcCable7: TEdit;
    chkSkipEan7: TCheckBox;
    edtSkipEan7: TEdit;
    edtCradle7: TEdit;
    Label35: TLabel;
    chkSkipCradle7: TCheckBox;
    edtSkipCradle7: TEdit;
    qryPairACC_EAN: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Qry_GetServerTimeBeforeOpen(DataSet: TDataSet);
    procedure DBConnectionBeforeConnect(Sender: TObject);
    procedure DBConnectionAfterConnect(Sender: TObject);
    procedure Tab1Show(Sender: TObject);
    procedure Tab2Show(Sender: TObject);
    procedure Tab3Show(Sender: TObject);
    procedure Tab4Show(Sender: TObject);
    procedure qrySetCountBeforeOpen(DataSet: TDataSet);
    procedure qrySetCountAfterOpen(DataSet: TDataSet);
    procedure qryAccCountBeforeOpen(DataSet: TDataSet);
    procedure qryAccCountAfterOpen(DataSet: TDataSet);
    procedure edtSetSN3KeyPress(Sender: TObject; var Key: Char);
    procedure btnResetClick(Sender: TObject);
    procedure edtIBM3KeyPress(Sender: TObject; var Key: Char);
    procedure edtCradle3KeyPress(Sender: TObject; var Key: Char);
    procedure edtDcCable3KeyPress(Sender: TObject; var Key: Char);
    procedure edtSetSN4KeyPress(Sender: TObject; var Key: Char);
    procedure edtIBM4KeyPress(Sender: TObject; var Key: Char);
    procedure edtCradle4KeyPress(Sender: TObject; var Key: Char);
    procedure edtDcCable4KeyPress(Sender: TObject; var Key: Char);
    procedure edtIBI4KeyPress(Sender: TObject; var Key: Char);
    procedure edtSetSN2KeyPress(Sender: TObject; var Key: Char);
    procedure edtIBM2KeyPress(Sender: TObject; var Key: Char);
    procedure edtCradle2KeyPress(Sender: TObject; var Key: Char);
    procedure edtSetSN1KeyPress(Sender: TObject; var Key: Char);
    procedure edtIBM1KeyPress(Sender: TObject; var Key: Char);
    procedure qryPairBeforeOpen(DataSet: TDataSet);
    procedure Tab5Show(Sender: TObject);
    procedure chkSkipIBM1Click(Sender: TObject);
    procedure chkSkipCradle2Click(Sender: TObject);
    procedure chkSkipDcCable3Click(Sender: TObject);
    procedure chkSkipIBI4Click(Sender: TObject);
    procedure chkSkipCrdName5Click(Sender: TObject);
    procedure edtSetSN5KeyPress(Sender: TObject; var Key: Char);
    procedure edtSetSN1Enter(Sender: TObject);
    procedure edtIBM1Enter(Sender: TObject);
    procedure edtCradle2Enter(Sender: TObject);
    procedure edtDcCable3Enter(Sender: TObject);
    procedure edtIBI4Enter(Sender: TObject);
    procedure edtCrdName5Enter(Sender: TObject);
    procedure edtCrdName5KeyPress(Sender: TObject; var Key: Char);
    procedure edtIBM5KeyPress(Sender: TObject; var Key: Char);
    procedure edtCradle5KeyPress(Sender: TObject; var Key: Char);
    procedure edtDcCable5KeyPress(Sender: TObject; var Key: Char);
    procedure edtIBI5KeyPress(Sender: TObject; var Key: Char);
    procedure btnRefreshClick(Sender: TObject);
    procedure Tab6Show(Sender: TObject);
    procedure edtSetSN6KeyPress(Sender: TObject; var Key: Char);
    procedure edtDcCable6KeyPress(Sender: TObject; var Key: Char);
    procedure edtIBM6KeyPress(Sender: TObject; var Key: Char);
    procedure btnExcelClick(Sender: TObject);
    procedure qryHistoryBeforeOpen(DataSet: TDataSet);
    procedure qryNotScanBeforeOpen(DataSet: TDataSet);
    procedure Tab7Show(Sender: TObject);
    procedure edtSetSN7KeyPress(Sender: TObject; var Key: Char);

    procedure chkSkipEan7Click(Sender: TObject);
    procedure edtDcCable7KeyPress(Sender: TObject; var Key: Char);
    procedure edtEan7Enter(Sender: TObject);
    procedure edtEan7KeyPress(Sender: TObject; var Key: Char);
    procedure edtCradle7KeyPress(Sender: TObject; var Key: Char);
    procedure edtCradle7Enter(Sender: TObject);
    procedure edtDcCable7Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ServerTime : TDatetime;
    Password : string;
    DatabaseName : string;
    ServerAddress : String;
    UserName : String;
    WorkStation : String;
    Step : word;
    procedure dCheck1(sTemp:String);
    procedure dCheck2(sTemp:String);
    procedure dCheck3(sTemp:String);
    procedure dCheck4(sTemp:String);
    procedure dCheck5(sTemp:String);
    procedure dCheck6(sTemp:String);
    procedure dCheck7(sTemp:String);
    function dCheckSet(sSN:String) : Boolean;
    function dCheckEan(sSN:String; bCheck: Boolean) : Boolean;
    function dCheckIBM(sSN:String; bCheck:Boolean) : Boolean;
    function dCheckCradle(sSN: String; bCheck: Boolean) : Boolean;
    function dCheckDcPower(sSN: String; bCheck: Boolean) : Boolean;
    function dCheckIBI(sSN: String; bCheck: Boolean) : Boolean;
    function dCheckCdName(sSN: String; bCheck: Boolean) : Boolean;
    function fPass(bResult:Boolean): Boolean;
  end;

var
  frmMain: TfrmMain;
  MyInI:TiniFile;
  gAppPath:String;
  sDate:String;
  sClientVersion : String;
  sServerVersion : String;
  gUserID:string;
  gUserName:string;
  gMsg:String;
  Crdl_PBASerial,strMenu,sPbaSn: string;
  var sIBM1 : string;
  var sIBM2 : string;
  var sIBM3 : string;
  var sIBM4 : string;
  var sIBM5 : string;
  var sIBM6 : string;
  var sCradle2 : string;
  var sCradle3 : string;
  var sCradle4 : string;
  var sCradle5 : string;
  var sCradle7 : string;
  var sDcCable3 : string;
  var sDcCable4 : string;
  var sDcCable5 : string;
  var sDcCable6 : string;
  var sDcCable7 : string;
  var sIBI4 : string;
  var sIBI5 : string;
  var sCrdName5 : string;
  var sEan7 : string;
  procedure Msg_Box(sMsg:String);

implementation

uses Model, U_Msg;

{$R *.dfm}

procedure Msg_Box(sMsg:String);
begin
  gMsg := sMsg;
  try
    if not frmMsg.Showing then begin
       frmMsg.ShowModal;
    end;
  except
     ;
  end;
  screen.Cursor := crDefault;
end;

procedure TfrmMain.btnResetClick(Sender: TObject);
begin
  if Tab1.Visible then
  begin
    Step:=0;
    edtSetSN1.Clear;
    edtIBM1.Clear;
    edtSetSN1.SetFocus;
  end
  else if Tab2.Visible then
  begin
    Step:=0;
    edtSetSN2.Clear;
    edtIBM2.Clear;
    edtCradle2.Clear;
    edtSetSN2.SetFocus;
  end
  else if Tab3.Visible then
  begin
    Step:=0;
    edtSetSN3.Clear;
    edtIBM3.Clear;
    edtCradle3.Clear;
    edtDcCable3.Clear;
    edtSetSN3.SetFocus;
  end
  else if Tab4.Visible then
  begin
    Step:=0;
    edtSetSN4.Clear;
    edtIBM4.Clear;
    edtCradle4.Clear;
    edtDcCable4.Clear;
    edtIBI4.Clear;
    edtSetSN4.SetFocus;
  end
  else if Tab5.Visible then
  begin
    Step:=0;
    edtSetSN5.Clear;
    edtIBM5.Clear;
    edtCradle5.Clear;
    edtDcCable5.Clear;
    edtIBI5.Clear;
    edtCrdName5.Clear;
    edtSetSN5.SetFocus;
  end
  else if Tab6.Visible then
  begin
    Step:=0;
    edtSetSN6.Clear;
    edtIBM6.Clear;
    edtDcCable6.Clear;
    edtSetSN6.SetFocus;
  end else
  begin
    Step:=0;
    edtSetSN7.Clear;
    edtEan7.Clear;
    edtDcCable7.Clear;
    edtCradle7.Clear;
    edtSetSN7.SetFocus;
  end;

  qryPair.Close;
  qryPair.Open;
  qryAccCount.Close;
  qryAccCount.Open;
  qrySetCount.Close;
  qrySetCount.Open;
  qryNotScan.Close;
  qryNotScan.Open;
  grdPair.CalculateTotals();

end;

procedure TfrmMain.btnRefreshClick(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  qryHistory.Close;
  qryHistory.Open;
  grdHistory.CalculateTotals();
  Screen.Cursor := crDefault;
  if qryHistory.RecordCount > 0 then
  begin
    btnExcel.Enabled := True;
  end
  else
  begin
    btnExcel.Enabled := False;
  end;
end;

procedure TfrmMain.btnExcelClick(Sender: TObject);
var J,K : Integer;
    sheet:Variant;
    XApp:  variant;
    SheetName : string;
begin

   qryHistory.First;

   if not qryHistory.RecordCount > 0 then  exit;

   J:= qryHistory.FieldCount;

   Screen.Cursor := crSQLWait;

   //Start To Excel

   sdExcel.FileName:= 'jtin_AttandanceCalculation_'+FormatDateTime('yyyyMMdd',frmMain.Qry_GetServerTimeServerTime.Value)+'.xls';

   if not sdExcel.Execute then
   begin
      Screen.Cursor:= crDefault;
      exit;
   end;

   SheetName := 'Daily';

   try
   begin
      XApp:=CreateOleObject('Excel.Application');
      //XApp.Visible:=true;
    end ;
    except
    showmessage('Unable to link with MS Excel,  it seems as it is not installed on this system.');
    exit;
    end;

    XApp.WorkBooks.Add;
    //XApp.Workbooks[1].sheets.Add;
    XApp.Workbooks[1].Worksheets[1].Name:= SheetName;


    //XApp.Workbooks[1].Worksheets[2].Delete;
    //XApp.Workbooks[1].Worksheets[3].Delete;

    sheet:=XApp.Workbooks[1].Worksheets[SheetName];

    J:= 0;
    while J <= qryHistory.FieldCount-1 do
    begin
      sheet.Cells[1,J+1]:= qryHistory.Fields[j].FieldName ;
      J:= J + 1;
    end;

    K:= 2;
    while K <= qryHistory.RecordCount+1 do
    begin
      J:= 0;
      while J <= qryHistory.FieldCount-1 do
      begin
        if qryHistory.FieldByName(qryHistory.Fields[j].FieldName).DataType = ftDateTime  then
        begin
          sheet.Cells[K,J+1]:= FormatDateTime('mm-dd-yyyy HH:MM:SS',qryHistory.FieldByName(qryHistory.Fields[j].FieldName).AsDateTime) ;
        end
        else
        begin
          sheet.Cells[K,J+1]:= qryHistory.FieldByName(qryHistory.Fields[j].FieldName).AsString;
        end;

        J:= J + 1;
      end;
      K:= K + 1;
      qryHistory.Next;
    end;

    XApp.visible := true;
    XApp.Workbooks[1].saveas(sdExcel.FileName);
    //End To Excel

   Screen.Cursor:= crDefault;

end;

procedure TfrmMain.chkSkipCradle2Click(Sender: TObject);
begin
  case model.gTab of
    2:
    begin
      if chkSkipCradle2.Checked then
      begin
        edtCradle2.Enabled := False;
        edtCradle2.Color := clBtnFace;
        edtCradle2.Clear;
        edtSkipCradle2.Visible := True;
        edtSkipCradle2.Enabled := True;
        edtSkipCradle2.SetFocus;
        edtSkipCradle2.Text := 'Skip->'+frmModel.qryModelACC_CRADLE.AsString;
      end
      else
      begin
        edtCradle2.Enabled := True;
        edtCradle2.Color := clWindow;
        edtSkipCradle2.Visible := False;
        edtSkipCradle2.Enabled := False;
        edtSkipCradle2.Clear;
        btnResetClick(Self);
      end;
    end;
    3:
    begin
      if chkSkipCradle3.Checked then
      begin
        edtCradle3.Enabled := False;
        edtCradle3.Color := clBtnFace;
        edtCradle3.Clear;
        edtSkipCradle3.Visible := True;
        edtSkipCradle3.Enabled := True;
        edtSkipCradle3.SetFocus;
        edtSkipCradle3.Text := 'Skip->'+frmModel.qryModelACC_CRADLE.AsString;
      end
      else
      begin
        edtCradle3.Enabled := True;
        edtCradle3.Color := clWindow;
        edtSkipCradle3.Visible := False;
        edtSkipCradle3.Enabled := False;
        edtSkipCradle3.Clear;
        btnResetClick(Self);
      end;
    end;
    4:
    begin
      if chkSkipCradle4.Checked then
      begin
        edtCradle4.Enabled := False;
        edtCradle4.Color := clBtnFace;
        edtCradle4.Clear;
        edtSkipCradle4.Visible := True;
        edtSkipCradle4.Enabled := True;
        edtSkipCradle4.SetFocus;
        edtSkipCradle4.Text := 'Skip->'+frmModel.qryModelACC_CRADLE.AsString;
      end
      else
      begin
        edtCradle4.Enabled := True;
        edtCradle4.Color := clWindow;
        edtSkipCradle4.Visible := False;
        edtSkipCradle4.Enabled := False;
        edtSkipCradle4.Clear;
        btnResetClick(Self);
      end;
    end;
    5:
    begin
      if chkSkipCradle5.Checked then
      begin
        edtCradle5.Enabled := False;
        edtCradle5.Color := clBtnFace;
        edtCradle5.Clear;
        edtSkipCradle5.Visible := True;
        edtSkipCradle5.Enabled := True;
        edtSkipCradle5.SetFocus;
        edtSkipCradle5.Text := 'Skip->'+frmModel.qryModelACC_CRADLE.AsString;
      end
      else
      begin
        edtCradle5.Enabled := True;
        edtCradle5.Color := clWindow;
        edtSkipCradle5.Visible := False;
        edtSkipCradle5.Enabled := False;
        edtSkipCradle5.Clear;
        btnResetClick(Self);
      end;
    end;
    6:
    begin
      if chkSkipCradle5.Checked then
      begin
        edtCradle5.Enabled := False;
        edtCradle5.Color := clBtnFace;
        edtCradle5.Clear;
        edtSkipCradle5.Visible := True;
        edtSkipCradle5.Enabled := True;
        edtSkipCradle5.SetFocus;
        edtSkipCradle5.Text := 'Skip->'+frmModel.qryModelACC_CRADLE.AsString;
      end
      else
      begin
        edtCradle5.Enabled := True;
        edtCradle5.Color := clWindow;
        edtSkipCradle5.Visible := False;
        edtSkipCradle5.Enabled := False;
        edtSkipCradle5.Clear;
        btnResetClick(Self);
      end;
    end;
    7:
    begin
      if chkSkipCradle7.Checked then
      begin
        edtCradle7.Enabled := False;
        edtCradle7.Color := clBtnFace;
        edtCradle7.Clear;
        edtSkipCradle7.Visible := True;
        edtSkipCradle7.Enabled := True;
        edtSkipCradle7.SetFocus;
        edtSkipCradle7.Text := 'Skip->'+frmModel.qryModelACC_CRADLE.AsString;
      end
      else
      begin
        edtCradle7.Enabled := True;
        edtCradle7.Color := clWindow;
        edtSkipCradle7.Visible := False;
        edtSkipCradle7.Enabled := False;
        edtSkipCradle7.Clear;
        btnResetClick(Self);
      end;
    end;
  end;
end;

procedure TfrmMain.chkSkipCrdName5Click(Sender: TObject);
begin
  if chkSkipCrdName5.Checked then
  begin
     edtCrdName5.Enabled := False;
     edtCrdName5.Color := clBtnFace;
     edtCrdName5.Clear;
     edtSkipCrdName5.Visible := True;
     edtSkipCrdName5.Enabled := True;
     edtSkipCrdName5.SetFocus;
     edtSkipCrdName5.Text := 'Skip->'+frmModel.qryModelACC_CARDNAME.AsString;
   end
   else
   begin
     edtCrdName5.Enabled := True;
     edtCrdName5.Color := clWindow;
     edtSkipCrdName5.Visible := False;
     edtSkipCrdName5.Enabled := False;
     edtSkipCrdName5.Clear;
     btnResetClick(Self);
   end;
end;

procedure TfrmMain.chkSkipDcCable3Click(Sender: TObject);
begin
  case model.gTab of
    3:
    begin
      if chkSkipDcCable3.Checked then
      begin
        edtDcCable3.Enabled := False;
        edtDcCable3.Color := clBtnFace;
        edtDcCable3.Clear;
        edtSkipDcCable3.Visible := True;
        edtSkipDcCable3.Enabled := True;
        edtSkipDcCable3.SetFocus;
        edtSkipDcCable3.Text := 'Skip->'+frmModel.qryModelACC_CABLE.AsString;
      end
      else
      begin
        edtDcCable3.Enabled := True;
        edtDcCable3.Color := clWindow;
        edtSkipDcCable3.Visible := False;
        edtSkipDcCable3.Enabled := False;
        edtSkipDcCable3.Clear;
        btnResetClick(Self);
      end;
    end;
    4:
    begin
      if chkSkipDcCable4.Checked then
      begin
        edtDcCable4.Enabled := False;
        edtDcCable4.Color := clBtnFace;
        edtDcCable4.Clear;
        edtSkipDcCable4.Visible := True;
        edtSkipDcCable4.Enabled := True;
        edtSkipDcCable4.SetFocus;
        edtSkipDcCable4.Text := 'Skip->'+frmModel.qryModelACC_CABLE.AsString;
      end
      else
      begin
        edtDcCable4.Enabled := True;
        edtDcCable4.Color := clWindow;
        edtSkipDcCable4.Visible := False;
        edtSkipDcCable4.Enabled := False;
        edtSkipDcCable4.Clear;
        btnResetClick(Self);
      end;
    end;
    5:
    begin
      if chkSkipDcCable5.Checked then
      begin
        edtDcCable5.Enabled := False;
        edtDcCable5.Color := clBtnFace;
        edtDcCable5.Clear;
        edtSkipDcCable5.Visible := True;
        edtSkipDcCable5.Enabled := True;
        edtSkipDcCable5.SetFocus;
        edtSkipDcCable5.Text := 'Skip->'+frmModel.qryModelACC_CABLE.AsString;
      end
      else
      begin
        edtDcCable5.Enabled := True;
        edtDcCable5.Color := clWindow;
        edtSkipDcCable5.Visible := False;
        edtSkipDcCable5.Enabled := False;
        edtSkipDcCable5.Clear;
        btnResetClick(Self);
      end;
    end;
    6:
    begin
      if chkSkipDcCable6.Checked then
      begin
        edtDcCable6.Enabled := False;
        edtDcCable6.Color := clBtnFace;
        edtDcCable6.Clear;
        edtSkipDcCable6.Visible := True;
        edtSkipDcCable6.Enabled := True;
        edtSkipDcCable6.SetFocus;
        edtSkipDcCable6.Text := 'Skip->'+frmModel.qryModelACC_CABLE.AsString;
      end
      else
      begin
        edtDcCable6.Enabled := True;
        edtDcCable6.Color := clWindow;
        edtSkipDcCable6.Visible := False;
        edtSkipDcCable6.Enabled := False;
        edtSkipDcCable6.Clear;
        btnResetClick(Self);
      end;
    end;
   7:
    begin
      if chkSkipDcCable7.Checked then
      begin
        edtDcCable7.Enabled := False;
        edtDcCable7.Color := clBtnFace;
        edtDcCable7.Clear;
        edtSkipDcCable7.Visible := True;
        edtSkipDcCable7.Enabled := True;
        edtSkipDcCable7.SetFocus;
        edtSkipDcCable7.Text := 'Skip->'+frmModel.qryModelACC_CABLE.AsString;
      end
      else
      begin
        edtDcCable7.Enabled := True;
        edtDcCable7.Color := clWindow;
        edtSkipDcCable7.Visible := False;
        edtSkipDcCable7.Enabled := False;
        edtSkipDcCable7.Clear;
        btnResetClick(Self);
      end;
    end;
end;
end;

procedure TfrmMain.chkSkipEan7Click(Sender: TObject);
begin
  if chkSkipEan7.Checked then
  begin
    edtEan7.Enabled := False;
    edtEan7.Color := clBtnFace;
    edtEan7.Clear;
    edtSkipEan7.Visible := True;
    edtSkipEan7.Enabled := True;
    edtSkipEan7.SetFocus;
    edtSkipEan7.Text := 'Skip->EAN:'+frmModel.qryModelACC_EAN.AsString;
  end
  else
  begin
     edtEan7.Enabled := True;
     edtEan7.Color := clWindow;
     edtSkipEan7.Visible := False;
     edtSkipEan7.Enabled := False;
     edtSkipEan7.Clear;
     btnResetClick(Self);
  end;
end;

procedure TfrmMain.chkSkipIBI4Click(Sender: TObject);
begin
  case model.gTab of
    4:
    begin
      if chkSkipIBI4.Checked then
      begin
        edtIBI4.Enabled := False;
        edtIBI4.Color := clBtnFace;
        edtIBI4.Clear;
        edtSkipIBI4.Visible := True;
        edtSkipIBI4.Enabled := True;
        edtSkipIBI4.SetFocus;
        edtSkipIBI4.Text := 'Skip->'+frmModel.qryModelACC_IBI.AsString;
      end
      else
      begin
        edtIBI4.Enabled := True;
        edtIBI4.Color := clWindow;
        edtSkipIBI4.Visible := False;
        edtSkipIBI4.Enabled := False;
        edtSkipIBI4.Clear;
        btnResetClick(Self);
      end;
    end;
    5:
    begin
      if chkSkipIBI5.Checked then
      begin
        edtIBI5.Enabled := False;
        edtIBI5.Color := clBtnFace;
        edtIBI5.Clear;
        edtSkipIBI5.Visible := True;
        edtSkipIBI5.Enabled := True;
        edtSkipIBI5.SetFocus;
        edtSkipIBI5.Text := 'Skip->'+frmModel.qryModelACC_IBI.AsString;
      end
      else
      begin
        edtIBI5.Enabled := True;
        edtIBI5.Color := clWindow;
        edtSkipIBI5.Visible := False;
        edtSkipIBI5.Enabled := False;
        edtSkipIBI5.Clear;
        btnResetClick(Self);
      end;
    end;
  end;
end;

procedure TfrmMain.chkSkipIBM1Click(Sender: TObject);
begin
  case model.gTab of
    1:
    begin
      if chkSkipIBM1.Checked then
      begin
        edtIBM1.Enabled := False;
        edtIBM1.Color := clBtnFace;
        edtIBM1.Clear;
        edtSkipIBM1.Visible := True;
        edtSkipIBM1.Enabled := True;
        edtSkipIBM1.SetFocus;
        edtSkipIBM1.Text := 'Skip->'+frmModel.qryModelACC_IBM.AsString;
      end
      else
      begin
        edtIBM1.Enabled := True;
        edtIBM1.Color := clWindow;
        edtSkipIBM1.Visible := False;
        edtSkipIBM1.Enabled := False;
        edtSkipIBM1.Clear;
        btnResetClick(Self);
      end;
    end;
    2:
    begin
      if chkSkipIBM2.Checked then
      begin
        edtIBM2.Enabled := False;
        edtIBM2.Color := clBtnFace;
        edtIBM2.Clear;
        edtSkipIBM2.Visible := True;
        edtSkipIBM2.Enabled := True;
        edtSkipIBM2.SetFocus;
        edtSkipIBM2.Text := 'Skip->'+frmModel.qryModelACC_IBM.AsString;
      end
      else
      begin
        edtIBM2.Enabled := True;
        edtIBM2.Color := clWindow;
        edtSkipIBM2.Visible := False;
        edtSkipIBM2.Enabled := False;
        edtSkipIBM2.Clear;
        btnResetClick(Self);
      end;
    end;
    3:
    begin
      if chkSkipIBM3.Checked then
      begin
        edtIBM3.Enabled := False;
        edtIBM3.Color := clBtnFace;
        edtIBM3.Clear;
        edtSkipIBM3.Visible := True;
        edtSkipIBM3.Enabled := True;
        edtSkipIBM3.SetFocus;
        edtSkipIBM3.Text := 'Skip->'+frmModel.qryModelACC_IBM.AsString;
      end
      else
      begin
        edtIBM3.Enabled := True;
        edtIBM3.Color := clWindow;
        edtSkipIBM3.Visible := False;
        edtSkipIBM3.Enabled := False;
        edtSkipIBM3.Clear;
        btnResetClick(Self);
      end;
    end;
    4:
    begin
      if chkSkipIBM4.Checked then
      begin
        edtIBM4.Enabled := False;
        edtIBM4.Color := clBtnFace;
        edtIBM4.Clear;
        edtSkipIBM4.Visible := True;
        edtSkipIBM4.Enabled := True;
        edtSkipIBM4.SetFocus;
        edtSkipIBM4.Text := 'Skip->'+frmModel.qryModelACC_IBM.AsString;
      end
      else
      begin
        edtIBM4.Enabled := True;
        edtIBM4.Color := clWindow;
        edtSkipIBM4.Visible := False;
        edtSkipIBM4.Enabled := False;
        edtSkipIBM4.Clear;
        btnResetClick(Self);
      end;
    end;
    5:
    begin
      if chkSkipIBM5.Checked then
      begin
        edtIBM5.Enabled := False;
        edtIBM5.Color := clBtnFace;
        edtIBM5.Clear;
        edtSkipIBM5.Visible := True;
        edtSkipIBM5.Enabled := True;
        edtSkipIBM5.SetFocus;
        edtSkipIBM5.Text := 'Skip->'+frmModel.qryModelACC_IBM.AsString;
      end
      else
      begin
        edtIBM5.Enabled := True;
        edtIBM5.Color := clWindow;
        edtSkipIBM5.Visible := False;
        edtSkipIBM5.Enabled := False;
        edtSkipIBM5.Clear;
        btnResetClick(Self);
      end;
    end;
    6:
    begin
      if chkSkipIBM6.Checked then
      begin
        edtIBM6.Enabled := False;
        edtIBM6.Color := clBtnFace;
        edtIBM6.Clear;
        edtSkipIBM6.Visible := True;
        edtSkipIBM6.Enabled := True;
        edtSkipIBM6.SetFocus;
        edtSkipIBM6.Text := 'Skip->'+frmModel.qryModelACC_IBM.AsString;
      end
      else
      begin
        edtIBM6.Enabled := True;
        edtIBM6.Color := clWindow;
        edtSkipIBM6.Visible := False;
        edtSkipIBM6.Enabled := False;
        edtSkipIBM6.Clear;
        btnResetClick(Self);
      end;
    end;
  end;
end;

procedure TfrmMain.DBConnectionAfterConnect(Sender: TObject);
begin
    with Qry_GetServerTime do
    begin
      close;
      Open;
    end;
    ServerTime:= Qry_GetServerTimeServerTime.Value;
    sServerVersion:= Qry_GetServerTimeVersion.Value;

    sDate := FormatDateTime('YYYYMMDD',ServerTime);
    Label18.Caption := Copy(sDate,7,2)+'-'+Copy(sDate,5,2)+'-'+Copy(sDate,1,4);

end;

procedure TfrmMain.DBConnectionBeforeConnect(Sender: TObject);
var Conn : string;
begin
  Conn:= 'Provider=SQLOLEDB.1;'+
         'Password=sct;'+
         'Persist Security Info=True;'+
         'User ID=sct;'+
         'Initial Catalog='+DatabaseName+';'+
         'Data Source='+ServerAddress+';'+
         'Use Procedure for Prepare=0;'+
         'Auto Translate=True;'+
         'Packet Size=4096;'+
         'Workstation ID='+WorkStation+';'+
         'Use Encryption for Data=False;'+
         'Tag with column collation when possible=False';

  DBConnection.ConnectionString := Conn;
  DBConnection.ConnectionTimeout := 6;

end;

procedure TfrmMain.edtCradle2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
   dCheck2(edtCradle2.Text);
  end;
end;

procedure TfrmMain.edtCradle3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
   dCheck3(edtCradle3.Text);
  end;
end;

procedure TfrmMain.edtCradle4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
   dCheck4(edtCradle4.Text);
  end;
end;

procedure TfrmMain.edtCradle5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
   dCheck5(edtCradle5.Text);
  end;
end;

procedure TfrmMain.edtCradle7Enter(Sender: TObject);
begin
  if Step <> 0 then
  begin
    Step := 3;
  end;
end;

procedure TfrmMain.edtCradle7KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
   dCheck7(edtCradle7.Text);
  end;
end;

procedure TfrmMain.edtDcCable3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
   dCheck3(edtDcCable3.Text);
  end;
end;

procedure TfrmMain.edtDcCable4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
   dCheck4(edtDcCable4.Text);
  end;
end;

procedure TfrmMain.edtDcCable5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
   dCheck5(edtDcCable5.Text);
  end;
end;

procedure TfrmMain.edtDcCable6KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
   dCheck6(edtDcCable6.Text);
  end;
end;

procedure TfrmMain.edtDcCable7Enter(Sender: TObject);
begin
  if Step <> 0 then
  begin
    Step := 2;
  end;
end;

procedure TfrmMain.edtDcCable7KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
   dCheck7(edtDcCable7.Text);
  end;
end;

procedure TfrmMain.edtIBI4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
   dCheck4(edtIBI4.Text);
  end;
end;

procedure TfrmMain.edtIBI5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
   dCheck5(edtIBI5.Text);
  end;
end;

procedure TfrmMain.edtIBM1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
   dCheck1(edtIBM1.Text);
  end;
end;

procedure TfrmMain.edtIBM2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
   dCheck2(edtIBM2.Text);
  end;
end;

procedure TfrmMain.edtIBM3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
   dCheck3(edtIBM3.Text);
  end;
end;

procedure TfrmMain.edtIBM4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
   dCheck4(edtIBM4.Text);
  end;
end;

procedure TfrmMain.edtIBM5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
   dCheck5(edtIBM5.Text);
  end;
end;

procedure TfrmMain.edtIBM6KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
   dCheck6(edtIBM6.Text);
  end;
end;

procedure TfrmMain.edtCrdName5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
   dCheck5(edtIBI5.Text);
  end;
end;

procedure TfrmMain.edtSetSN1Enter(Sender: TObject);
begin
  Step := 0;
end;

procedure TfrmMain.edtIBM1Enter(Sender: TObject);
begin
  if Step <> 0 then
  begin
    Step := 3;
  end;
end;

procedure TfrmMain.edtCradle2Enter(Sender: TObject);
begin
  if Step <> 0 then
  begin
    Step := 1;
  end;
end;

procedure TfrmMain.edtDcCable3Enter(Sender: TObject);
begin
  if Step <> 0 then
  begin
    Step := 2;
  end;
end;

procedure TfrmMain.edtIBI4Enter(Sender: TObject);
begin
  if Step <> 0 then
  begin
    Step := 4;
  end;
end;

procedure TfrmMain.edtCrdName5Enter(Sender: TObject);
begin
  if Step <> 0 then
  begin
    Step := 5;
  end;
end;

procedure TfrmMain.edtEan7Enter(Sender: TObject);
begin
  if Step <> 0 then
  begin
    Step := 1;
  end;
end;

procedure TfrmMain.edtEan7KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
   dCheck7(edtEan7.Text);
  end;
end;

procedure TfrmMain.edtSetSN1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
   dCheck1(edtSetSN1.Text);
  end;
end;

procedure TfrmMain.edtSetSN2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
   dCheck2(edtSetSN2.Text);
  end;
end;

procedure TfrmMain.edtSetSN3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
   dCheck3(edtSetSN3.Text);
  end;
end;

procedure TfrmMain.edtSetSN4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
   dCheck4(edtSetSN4.Text);
  end;
end;

procedure TfrmMain.edtSetSN5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
   dCheck5(edtSetSN5.Text);
  end;
end;

procedure TfrmMain.edtSetSN6KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
   dCheck6(edtSetSN6.Text);
  end;
end;

procedure TfrmMain.edtSetSN7KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
   dCheck7(edtSetSN7.Text);
  end;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin

  Tab1.TabVisible:= false;
  Tab2.TabVisible:= false;
  Tab3.TabVisible:= false;
  Tab4.TabVisible:= false;
  Tab5.TabVisible:= false;
  Tab6.TabVisible:= false;
  Tab7.TabVisible:= false;

  gAppPath := ExtractFilePath(Application.ExeName);

  MyIni := nil;
  try
    MyIni := TIniFile.Create(gAppPath+'Config.ini');
    DatabaseName   := MyIni.ReadString('SETTING','DATABASE','sct');
    ServerAddress  := MyIni.ReadString('SETTING','SERVER','192.168.5.3');
    UserName       := MyIni.ReadString('SETTING','USER','sct');
    Password       := MyIni.ReadString('SETTING','SERVERPWD','sct');
    sClientVersion := MyIni.ReadString('SETTING','MpeonAcc.exe','0');

    {WRITE to Config.ini}
    MyIni.WriteString('SETTING','DATABASE',DatabaseName);
    MyIni.WriteString('SETTING','SERVER',ServerAddress);
    MyIni.WriteString('SETTING','USER',UserName);
    MyIni.WriteString('SETTING','SERVERPWD',Password);
    MyIni.WriteString('SETTING','MpeonAcc.exe',sClientVersion);

  finally
    MyIni.Free;
  end;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin

  Panel27.Visible := False;

  Qry_GetServerTime.close;
  Qry_GetServerTime.Open;

  dtpDateStart.Date := ServerTime;
  dtpDateEnd.Date := ServerTime;  

  if  frmModel = nil then
  frmModel := TfrmModel.Create(self);
  frmModel.ShowModal  ;

  Panel1.Caption := Model.gModel;

  case model.gTab of
    0:exit;
    1:Tab1.TabVisible:= true;
    2:Tab2.TabVisible:= true;
    3:Tab3.TabVisible:= true;
    4:Tab4.TabVisible:= true;
    5:Tab5.TabVisible:= true;
    6:Tab6.TabVisible:= true;
    7:Tab7.TabVisible:= true;
  end;

  qryPair.Close;
  qryPair.Open;

  with SP_Menu_Option do
  begin
    Close;
    Parameters.ParamByName('@Model').Value:=Model.gModel;
    Parameters.ParamByName('@Item').Value:='AccBundle' ;
    ExecProc;
    strMenu := trim(Parameters.ParamByName('@Flag').Value) ;
  end;


  grdPair.CalculateTotals();

  btnResetClick(Self);

end;

procedure TfrmMain.qryAccCountAfterOpen(DataSet: TDataSet);
begin
  Label20.Caption := FormatFloat('#,##0',qryAccCountQty.Value)  //qryAccCountQty.AsString;
end;

procedure TfrmMain.qryAccCountBeforeOpen(DataSet: TDataSet);
begin
  with qryAccCount do
  begin
    Parameters.ParamByName('sModel').Value := gModel;
    Parameters.ParamByName('sDate').Value := FormatDateTime('yyyyMMdd',ServerTime);
    if not Prepared then Prepared;

  end;
end;

procedure TfrmMain.qryHistoryBeforeOpen(DataSet: TDataSet);
begin
  with qryHistory do
  begin
    Parameters.ParamByName('sModel').Value := gModel;
    Parameters.ParamByName('sDateStart').Value := FormatDateTime('yyyyMMdd',dtpDateStart.Date) ;
    Parameters.ParamByName('sDateEnd').Value := FormatDateTime('yyyyMMdd',dtpDateEnd.Date+1) ;
    if not Prepared then Prepared;
  end;
end;

procedure TfrmMain.qryNotScanBeforeOpen(DataSet: TDataSet);
begin
  with qryNotScan do
  begin
    Parameters.ParamByName('sModel').Value := gModel;
    Parameters.ParamByName('sDate').Value := FormatDateTime('yyyyMMdd',ServerTime);
    Parameters.ParamByName('sModel2').Value := gModel;
    Parameters.ParamByName('sDate2').Value := FormatDateTime('yyyyMMdd',ServerTime);
    if not Prepared then Prepared;
  end;
end;

procedure TfrmMain.qryPairBeforeOpen(DataSet: TDataSet);
begin
  with qryPair do
  begin
    Parameters.ParamByName('sModel').Value := gModel;
    Parameters.ParamByName('sDate').Value := FormatDateTime('yyyyMMdd',ServerTime);
    if not Prepared then Prepared;
  end;
end;

procedure TfrmMain.qrySetCountAfterOpen(DataSet: TDataSet);
begin
  Label19.Caption := FormatFloat('#,##0',qrySetCountQty.Value);
end;

procedure TfrmMain.qrySetCountBeforeOpen(DataSet: TDataSet);
begin
  with qrySetCount do
  begin
    Parameters.ParamByName('sModel').Value := gModel;
    Parameters.ParamByName('sDate').Value := FormatDateTime('yyyyMMdd',ServerTime);
    if not Prepared then Prepared;

  end;
end;

procedure TfrmMain.Qry_GetServerTimeBeforeOpen(DataSet: TDataSet);
begin
  with Qry_GetServerTime do
  begin
    //ShowMessage(ExtractFileName(Application.ExeName));
    Parameters.ParamByName('App').Value := ExtractFileName(Application.ExeName);
    if not Prepared then Prepared;
  end;
end;

procedure TfrmMain.Tab1Show(Sender: TObject);
begin
  //showmessage('ok');
  Panel4.Height := 110;
  edtSetSN1.SetFocus;
end;

procedure TfrmMain.Tab2Show(Sender: TObject);
begin
  Panel4.Height := 140;
  edtSetSN2.SetFocus;
end;

procedure TfrmMain.Tab3Show(Sender: TObject);
begin
  Panel4.Height := 170;
  edtSetSN3.SetFocus;
end;

procedure TfrmMain.Tab4Show(Sender: TObject);
begin
  Panel4.Height := 210;
  edtSetSN4.SetFocus;
end;

procedure TfrmMain.Tab5Show(Sender: TObject);
begin
  Panel4.Height := 240;
  edtSetSN5.SetFocus;
end;

procedure TfrmMain.Tab6Show(Sender: TObject);
begin
  Panel4.Height := 140;
  edtSetSN6.SetFocus;
end;

procedure TfrmMain.Tab7Show(Sender: TObject);
begin
  Panel4.Height := 170;
  edtSetSN7.SetFocus;
end;

procedure TfrmMain.dCheck1(sTemp:String);
begin
  if Step = 0 then
  begin
    Panel27.Visible := False;
    if not dCheckSet(edtSetSN1.Text) then
    begin
      edtSetSN1.SetFocus;
      edtSetSN1.SelectAll;
      Exit;
    end;

    if chkSkipIBM1.Checked then
    begin
      sIBM1 := edtSkipIBM1.Text;
    end
    else
    begin
      Step := 3 ;
      edtIBM1.SetFocus;
      Exit;
    end;
  end;

  if Step = 3 then
  begin
    sIBM1 := edtIBM1.Text;
  end;

  if not dCheckIBM(edtIBM1.Text,chkSkipIBM1.Checked) then
  begin
      edtIBM1.SetFocus;
      edtIBM1.SelectAll;
      Exit;
  end;

  Qry.Close;
  Qry.SQL.Clear;
  Qry.SQL.Add('insert into T_PAIR_ACC select '+QuotedStr(gModel)+','+QuotedStr(edtSetSN1.Text)+','+QuotedStr(sPbaSn)+','+QuotedStr(sIBM1)+','+QuotedStr('')+','+QuotedStr('')+','+QuotedStr('')+','+QuotedStr('')+','+QuotedStr('')+',Getdate()');
  Qry.ExecSQL;

  fPass(True);
  btnResetClick(Self);
end;
procedure TfrmMain.dCheck2(sTemp:String);
begin
  if Step = 0 then
  begin
    Panel27.Visible := False;
    if not dCheckSet(edtSetSN2.Text) then
    begin
      edtSetSN2.SetFocus;
      edtSetSN2.SelectAll;
      Exit;
    end;

    if chkSkipCradle2.Checked and chkSkipIBM2.Checked then
    begin
      sCradle2 := edtSkipCradle2.Text;
      sIBM2 := edtSkipIBM2.Text;
    end
    else if chkSkipCradle2.Checked and not chkSkipIBM2.Checked then
    begin
      Step := 3 ;
      sCradle2 := edtSkipCradle2.Text;
      edtIBM2.SetFocus;
      Exit;
    end
    else
    begin
      Step := 1 ;
      edtCradle2.SetFocus;
      Exit;
    end;

  end;

  if Step = 1 then
  begin

    if not dCheckCradle(edtCradle2.text,chkSkipCradle2.Checked) then
    begin
      edtCradle2.SetFocus;
      edtCradle2.SelectAll;
      Exit;
    end;

    if chkSkipIBM2.Checked then
    begin
      sCradle2 := edtCradle2.Text;
      sIBM2 := edtSkipIBM2.Text;
    end
    else
    begin
      Step := 3 ;
      sCradle2 := edtCradle2.Text;
      edtIBM2.SetFocus;
      Exit;
    end;
  end;

  if Step = 3 then
  begin
    sIBM2 := edtIBM2.Text;
  end;

  if not dCheckCradle(edtCradle2.text,chkSkipCradle2.Checked) then
  begin
    edtCradle2.SetFocus;
    edtCradle2.SelectAll;
    Exit;
  end;

  if not dCheckIBM(edtIBM2.Text,chkSkipIBM2.Checked) then
  begin
      edtIBM2.SetFocus;
      edtIBM2.SelectAll;
      Exit;
  end;

  Qry.Close;
  Qry.SQL.Clear;
  Qry.SQL.Add('insert into T_PAIR_ACC select '+QuotedStr(gModel)+','+QuotedStr(edtSetSN2.Text)+','+QuotedStr(sPbaSn)+','+QuotedStr(sIBM2)+','+QuotedStr('')+','+QuotedStr(sCradle2)+','+QuotedStr('')+','+QuotedStr('')+','+QuotedStr('')+',Getdate()');
  Qry.ExecSQL;

  fPass(True);
  btnResetClick(Self);
end;
procedure TfrmMain.dCheck3(sTemp:String);
begin
  if Step = 0 then
  begin
    Panel27.Visible := False;
    if not dCheckSet(edtSetSN3.Text) then
    begin
      edtSetSN3.SetFocus;
      edtSetSN3.SelectAll;
      Exit;
    end;

    if chkSkipCradle3.Checked and chkSkipDcCable3.Checked and chkSkipIBM3.Checked then
    begin
      sCradle3 := edtSkipCradle3.Text;
      sDcCable3 := edtSkipDcCable3.Text;
      sIBM3 := edtSkipIBM3.Text;
    end
    else if chkSkipCradle3.Checked and chkSkipDcCable3.Checked and not chkSkipIBM3.Checked then
    begin
      Step := 3 ;
      sCradle3 := edtSkipCradle3.Text;
      sDcCable3 := edtSkipDcCable3.Text;
      edtIBM3.SetFocus;
      Exit;
    end
    else if chkSkipCradle3.Checked and not chkSkipDcCable3.Checked then
    begin
      Step := 2 ;
      sCradle3 := edtSkipCradle3.Text;
      edtDcCable3.SetFocus;
      Exit;
    end
    else
    begin
      Step := 1 ;
      edtCradle3.SetFocus;
      Exit;
    end;
  end;

  if Step = 1 then
  begin

    if not dCheckCradle(edtCradle3.text,chkSkipCradle3.Checked) then
    begin
      edtCradle3.SetFocus;
      edtCradle3.SelectAll;
      Exit;
    end;

    if chkSkipDcCable3.Checked and chkSkipIBM3.Checked then
    begin
      sCradle3 := edtCradle3.Text;
      sDcCable3 := edtSkipDcCable3.Text;
      sIBM3 := edtSkipIBM3.Text;
    end
    else if chkSkipDcCable3.Checked and not chkSkipIBM3.Checked then
    begin
      Step := 3 ;
      sCradle3 := edtCradle3.Text;
      sDcCable3 := edtSkipDcCable3.Text;
      edtIBM3.SetFocus;
      Exit;
    end
    else
    begin
      Step := 2 ;
      sCradle3 := edtCradle3.Text;
      edtDcCable3.SetFocus;
      Exit;
    end;
  end;

  if Step = 2 then
  begin

    if not dCheckDcPower(edtDcCable3.text,chkSkipDcCable3.Checked) then
    begin
      edtDcCable3.SetFocus;
      edtDcCable3.SelectAll;
      Exit;
    end;

    if chkSkipIBM3.Checked then
    begin
      sDcCable3 := edtDcCable3.Text;
      sIBM3 := edtSkipIBM3.Text;
    end
    else
    begin
      Step := 3 ;
      sDcCable3 := edtDcCable3.Text;
      edtIBM3.SetFocus;
      Exit;
    end;
  end;

  if Step = 3 then
  begin
    sIBM3 := edtIBM3.Text;
  end;

  if not dCheckCradle(edtCradle3.text,chkSkipCradle3.Checked) then
  begin
    edtCradle3.SetFocus;
    edtCradle3.SelectAll;
    Exit;
  end;
  if not dCheckDcPower(edtDcCable3.text,chkSkipDcCable3.Checked) then
  begin
    edtDcCable3.SetFocus;
    edtDcCable3.SelectAll;
    Exit;
  end;
  if not dCheckIBM(edtIBM3.Text,chkSkipIBM3.Checked) then
  begin
    edtIBM3.SetFocus;
    edtIBM3.SelectAll;
    Exit;
  end;

  Qry.Close;
  Qry.SQL.Clear;
  Qry.SQL.Add('insert into T_PAIR_ACC select '+QuotedStr(gModel)+','+QuotedStr(edtSetSN3.Text)+','+QuotedStr(sPbaSn)+','+QuotedStr(sIBM3)+','+QuotedStr('')+','+QuotedStr(sCradle3)+','+QuotedStr(sDcCable3)+','+QuotedStr('')+','+QuotedStr('')+',Getdate()');
  Qry.ExecSQL;

  fPass(True);
  btnResetClick(Self);
end;
procedure TfrmMain.dCheck4(sTemp:String);
begin
  if Step = 0 then
  begin
    Panel27.Visible := False;
    if not dCheckSet(edtSetSN4.Text) then
    begin
      edtSetSN4.SetFocus;
      edtSetSN4.SelectAll;
      Exit;
    end;

    if chkSkipCradle4.Checked and chkSkipDcCable4.Checked and chkSkipIBM4.Checked and chkSkipIBI4.Checked then
    begin
      sCradle4 := edtSkipCradle4.Text;
      sDcCable4 := edtSkipDcCable4.Text;
      sIBM4 := edtSkipIBM4.Text;
      sIBI4 := edtSkipIBI4.Text;
    end
    else if chkSkipCradle4.Checked and chkSkipDcCable4.Checked and chkSkipIBM4.Checked and not chkSkipIBI4.Checked then
    begin
      Step := 4;
      sCradle4 := edtSkipCradle4.Text;
      sDcCable4 := edtSkipDcCable4.Text;
      sIBM4 := edtSkipIBM4.Text;
      edtIBI4.SetFocus;
      Exit;
    end
    else if chkSkipCradle4.Checked and chkSkipDcCable4.Checked and not chkSkipIBM4.Checked then
    begin
      Step := 3;
      sCradle4 := edtSkipCradle4.Text;
      sDcCable4 := edtSkipDcCable4.Text;
      edtIBM4.SetFocus;
      Exit;
    end
    else if chkSkipCradle4.Checked and Not chkSkipDcCable4.Checked then
    begin
      Step := 2;
      sCradle4 := edtSkipCradle4.Text;
      edtDcCable4.SetFocus;
      Exit;
    end
    else
    begin
      Step := 1 ;
      edtCradle4.SetFocus;
      Exit;
    end;
  end;

  if Step = 1 then
  begin

    if not dCheckCradle(edtCradle4.text,chkSkipCradle4.Checked) then
    begin
      edtCradle4.SetFocus;
      edtCradle4.SelectAll;
      Exit;
    end;

    if chkSkipDcCable4.Checked and chkSkipIBM4.Checked and chkSkipIBI4.Checked then
    begin
      sCradle4 := edtCradle4.Text;
      sDcCable4 := edtSkipDcCable4.Text;
      sIBM4 := edtSkipIBM4.Text;
      sIBI4 := edtSkipIBI4.Text;
    end
    else if chkSkipDcCable4.Checked and chkSkipIBM4.Checked and not chkSkipIBI4.Checked then
    begin
      Step := 4;
      sCradle4 := edtCradle4.Text;
      sDcCable4 := edtSkipDcCable4.Text;
      sIBM4 := edtSkipIBM4.Text;
      edtIBI4.SetFocus;
      Exit;
    end
    else if chkSkipDcCable4.Checked and not chkSkipIBM4.Checked then
    begin
      Step := 3;
      sCradle4 := edtCradle4.Text;
      sDcCable4 := edtSkipDcCable4.Text;
      edtIBM4.SetFocus;
      Exit;
    end 
    else
    begin
      Step := 2 ;
      sCradle4 := edtCradle4.Text;
      edtDcCable4.SetFocus;
      Exit;
    end;
  end;

  if Step = 2 then
  begin

    if not dCheckDcPower(edtDcCable4.text,chkSkipDcCable4.Checked) then
    begin
      edtDcCable4.SetFocus;
      edtDcCable4.SelectAll;
      Exit;
    end;

    if chkSkipIBM4.Checked and chkSkipIBI4.Checked then
    begin
      sDcCable4 := edtDcCable4.Text;
      sIBM4 := edtSkipIBM4.Text;
      sIBI4 := edtSkipIBI4.Text;
    end
    else if chkSkipIBM4.Checked and not chkSkipIBI4.Checked then
    begin
      Step := 4;
      sDcCable4 := edtDcCable4.Text;
      sIBM4 := edtSkipIBM4.Text;
      edtIBI4.SetFocus;
      Exit;
    end
    else
    begin
      Step := 3 ;
      sDcCable4 := edtDcCable4.Text;
      edtIBM4.SetFocus;
      Exit;
    end;
  end;

  if Step = 3 then
  begin

    if not dCheckIBM(edtIBM4.Text,chkSkipIBM4.Checked) then
    begin
      edtIBM4.SetFocus;
      edtIBM4.SelectAll;
      Exit;
    end;

    if chkSkipIBI4.Checked then
    begin
      sIBM4 := edtIBM4.Text;
      sIBI4 := edtSkipIBI4.Text;
    end
    else
    begin
      Step := 4 ;
      sIBM4 := edtIBM4.Text;
      edtIBI4.SetFocus;
      Exit;
    end;
  end;

  if Step = 4 then
  begin
    sIBI4 := edtIBI4.Text;
  end;


  if not dCheckCradle(edtCradle4.text,chkSkipCradle4.Checked) then
  begin
    edtCradle4.SetFocus;
    edtCradle4.SelectAll;
    Exit;
  end;
  if not dCheckDcPower(edtDcCable4.text,chkSkipDcCable4.Checked) then
  begin
    edtDcCable4.SetFocus;
    edtDcCable4.SelectAll;
    Exit;
  end;
  if not dCheckIBM(edtIBM4.Text,chkSkipIBM4.Checked) then
  begin
    edtIBM4.SetFocus;
    edtIBM4.SelectAll;
    Exit;
  end;
  if not dCheckIBI(edtIBI4.Text,chkSkipIBI4.Checked) then
  begin
    edtIBI4.SetFocus;
    edtIBI4.SelectAll;
    Exit;
  end;

  Qry.Close;
  Qry.SQL.Clear;
  Qry.SQL.Add('insert into T_PAIR_ACC select '+QuotedStr(gModel)+','+QuotedStr(edtSetSN4.Text)+','+QuotedStr(sPbaSn)+','+QuotedStr(sIBM4)+','+QuotedStr(sIBI4)+','+QuotedStr(sCradle4)+','+QuotedStr(sDcCable4)+','+QuotedStr('')+','+QuotedStr('')+',Getdate()');
  Qry.ExecSQL;

  fPass(True);
  btnResetClick(Self);
end;
procedure TfrmMain.dCheck5(sTemp:String);
begin
  if Step = 0 then
  begin
    Panel27.Visible := False;
    if not dCheckSet(edtSetSN5.Text) then
    begin
      edtSetSN5.SetFocus;
      edtSetSN5.SelectAll;
      Exit;
    end;
    if chkSkipCradle5.Checked and chkSkipDcCable5.Checked and chkSkipIBM5.Checked and chkSkipIBI5.Checked and chkSkipCrdName5.Checked then
    begin
      sCradle5 := edtSkipCradle5.Text;
      sDcCable5 := edtSkipDcCable5.Text;
      sIBM5 := edtSkipIBM5.Text;
      sIBI5 := edtSkipIBI5.Text;
      sCrdName5 := edtSkipCrdName5.Text
    end
    else if chkSkipCradle5.Checked and chkSkipDcCable5.Checked and chkSkipIBM5.Checked and chkSkipIBI5.Checked and not chkSkipCrdName5.Checked then
    begin
      Step := 5;
      sCradle5 := edtSkipCradle5.Text;
      sDcCable5 := edtSkipDcCable5.Text;
      sIBM5 := edtSkipIBM5.Text;
      sIBI5 := edtSkipIBI5.Text;
      edtCrdName5.SetFocus;
      Exit;
    end
    else if chkSkipCradle5.Checked and chkSkipDcCable5.Checked and chkSkipIBM5.Checked and not chkSkipIBI5.Checked  then
    begin
      Step := 4;
      sCradle5 := edtSkipCradle5.Text;
      sDcCable5 := edtSkipDcCable5.Text;
      sIBM5 := edtSkipIBM5.Text;
      edtIBI5.SetFocus;
      Exit;
    end
    else if chkSkipCradle5.Checked and chkSkipDcCable5.Checked  and not chkSkipIBM5.Checked  then
    begin
      Step := 3;
      sCradle5 := edtSkipCradle5.Text;
      sDcCable5 := edtSkipDcCable5.Text;
      edtIBM5.SetFocus;
      Exit;
    end
    else if chkSkipCradle5.Checked and not chkSkipDcCable5.Checked then
    begin
      Step := 2;
      sCradle5 := edtSkipCradle5.Text;
      edtDcCable5.SetFocus ;
      Exit;
    end
    else
    begin
      Step := 1 ;
      edtCradle5.SetFocus;
      Exit;
    end;
  end;

  if Step = 1 then
  begin

    if not dCheckCradle(edtCradle5.text,chkSkipCradle5.Checked) then
    begin
      edtCradle5.SetFocus;
      edtCradle5.SelectAll;
      Exit;
    end;

    if chkSkipDcCable5.Checked and chkSkipIBM5.Checked  and chkSkipIBI5.Checked and chkSkipCrdName5.Checked then
    begin
      sCradle5 := edtCradle5.Text;
      sDcCable5 := edtSkipDcCable5.Text;
      sIBM5 := edtskipIBM5.Text;
      sIBI5 := edtSkipIBI5.Text;
      sCrdName5 := edtSkipCrdName5.Text
    end
    else if chkSkipDcCable5.Checked and chkSkipIBM5.Checked  and chkSkipIBI5.Checked and not chkSkipCrdName5.Checked then
    begin
      Step := 5;
      sCradle5 := edtCradle5.Text;
      sDcCable5 := edtSkipDcCable5.Text;
      sIBM5 := edtskipIBM5.Text;
      sIBI5 := edtSkipIBI5.Text;
      edtCrdName5.SetFocus;
      Exit;
    end
    else if chkSkipDcCable5.Checked and chkSkipIBM5.Checked  and not chkSkipIBI5.Checked then
    begin
      Step := 4;
      sCradle5 := edtCradle5.Text;
      sDcCable5 := edtSkipDcCable5.Text;
      sIBM5 := edtskipIBM5.Text;
      edtIBI5.SetFocus;
      Exit;
    end
    else if chkSkipDcCable5.Checked and not chkSkipIBM5.Checked then
    begin
      Step := 3;
      sCradle5 := edtCradle5.Text;
      sDcCable5 := edtSkipDcCable5.Text;
      edtIBM5.SetFocus;
      Exit;
    end
    else
    begin
      Step := 2 ;
      sCradle5 := edtCradle5.Text;
      edtDcCable5.SetFocus;
      Exit;
    end;
  end;

  if Step = 2 then
  begin

    if not dCheckDcPower(edtDcCable5.text,chkSkipDcCable5.Checked) then
    begin
      edtDcCable5.SetFocus;
      edtDcCable5.SelectAll;
      Exit;
    end;

    if chkSkipIBM5.Checked and chkSkipIBI5.Checked and chkSkipCrdName5.Checked then
    begin
      sDcCable5 := edtDcCable5.Text;
      sIBM5 := edtskipIBM5.Text;
      sIBI5 := edtSkipIBI5.Text;
      sCrdName5 := edtSkipCrdName5.Text
    end
    else if chkSkipIBM5.Checked and chkSkipIBI5.Checked and not chkSkipCrdName5.Checked then
    begin
      Step := 5;
      sDcCable5 := edtDcCable5.Text;
      sIBM5 := edtskipIBM5.Text;
      sIBI5 := edtSkipIBI5.Text;
      edtCrdName5.SetFocus;
      Exit;
    end
    else if chkSkipIBM5.Checked and not chkSkipIBI5.Checked then
    begin
      Step := 4;
      sDcCable5 := edtDcCable5.Text;
      sIBM5 := edtSkipIBM5.Text;
      edtIBI5.SetFocus;
      Exit;
    end
    else
    begin
      Step := 3 ;
      sDcCable5 := edtDcCable5.Text;
      edtIBM5.SetFocus;
      Exit;
    end;
  end;

  if Step = 3 then
  begin

    if not dCheckIBM(edtIBM5.Text,chkSkipIBM5.Checked) then
    begin
      edtIBM5.SetFocus;
      edtIBM5.SelectAll;
      Exit;
    end;

    if chkSkipIBI5.Checked and chkSkipCrdName5.Checked then
    begin
      sIBM5 := edtIBM5.Text;
      sIBI5 := edtSkipIBI5.Text;
      sCrdName5 := edtSkipCrdName5.Text
    end
    else if chkSkipIBI5.Checked and not chkSkipCrdName5.Checked then
    begin
      Step := 5;
      sIBM5 := edtIBM5.Text;
      sIBI5 := edtSkipIBI5.Text;
      edtCrdName5.SetFocus;
      Exit;
    end
    else
    begin
      Step := 4 ;
      sIBM5 := edtIBM5.Text;
      edtIBI5.SetFocus;
      Exit;
    end;
  end;

  if Step = 4 then
  begin

    if not dCheckIBI(edtIBI5.Text,chkSkipIBI5.Checked) then
    begin
      edtIBI5.SetFocus;
      edtIBI5.SelectAll;
      Exit;
    end;

    if chkSkipCrdName5.Checked then
    begin
      sIBI5 := edtIBI5.Text;
      sCrdName5 := edtSkipCrdName5.Text
    end
    else
    begin
      Step := 5 ;
      sIBI5 := edtIBI5.Text;
      edtCrdName5.SetFocus;
      Exit;
    end;
  end;

  if Step = 5 then
  begin
    sCrdName5 := edtCrdName5.Text;
  end;

  if not dCheckCradle(edtCradle5.text,chkSkipCradle5.Checked) then
  begin
    edtCradle5.SetFocus;
    edtCradle5.SelectAll;
    Exit;
  end;
  if not dCheckDcPower(edtDcCable5.text,chkSkipDcCable5.Checked) then
  begin
    edtDcCable5.SetFocus;
    edtDcCable5.SelectAll;
    Exit;
  end;
  if not dCheckIBM(edtIBM5.Text,chkSkipIBM5.Checked) then
  begin
    edtIBM5.SetFocus;
    edtIBM5.SelectAll;
    Exit;
  end;
  if not dCheckIBI(edtIBI5.Text,chkSkipIBI5.Checked) then
  begin
    edtIBI5.SetFocus;
    edtIBI5.SelectAll;
    Exit;
  end;
  if not dCheckCdName(edtCrdName5.Text,chkSkipCrdName5.Checked) then
  begin
    edtCrdName5.SetFocus;
    edtCrdName5.SelectAll;
    Exit;
  end;

  Qry.Close;
  Qry.SQL.Clear;
  Qry.SQL.Add('insert into T_PAIR_ACC select '+QuotedStr(gModel)+','+QuotedStr(edtSetSN5.Text)+','+QuotedStr(sPbaSn)+','+QuotedStr(sIBM5)+','+QuotedStr(sIBI5)+','+QuotedStr(sCradle5)+','+QuotedStr(sDcCable5)+','+QuotedStr(sCrdName5)+','+QuotedStr('')+',Getdate()');
  Qry.ExecSQL;

  fPass(True);
  btnResetClick(Self);
end;
procedure TfrmMain.dCheck6(sTemp:String);
begin
  if Step = 0 then
  begin
    Panel27.Visible := False;
    if not dCheckSet(edtSetSN6.Text) then
    begin
      edtSetSN6.SetFocus;
      edtSetSN6.SelectAll;
      Exit;
    end;

   

    if chkSkipDcCable6.Checked and chkSkipIBM6.Checked then
    begin
      sDcCable6 := edtSkipDcCable6.Text;
      sIBM6 := edtSkipIBM6.Text;
    end
    else if chkSkipDcCable6.Checked and not chkSkipIBM6.Checked then
    begin
      Step := 3 ;
      sDcCable6 := edtSkipDcCable6.Text;
      edtIBM6.SetFocus;
      Exit;
    end
    else
    begin
      Step := 2 ;
      edtDcCable6.SetFocus;
      Exit;
    end;

  end;

  if Step = 2 then
  begin

    if not dCheckDcPower(edtDcCable6.text,chkSkipDcCable6.Checked) then
    begin
      edtDcCable6.SetFocus;
      edtDcCable6.SelectAll;
      Exit;
    end;

    if chkSkipIBM6.Checked then
    begin
      sDcCable6 := edtDcCable6.Text;
      sIBM6 := edtSkipIBM6.Text;
    end
    else
    begin
      Step := 3 ;
      sDcCable6 := edtDcCable6.Text;
      edtIBM6.SetFocus;
      Exit;
    end;
  end;

  if Step = 3 then
  begin
    sIBM6 := edtIBM6.Text;
  end;

  if not dCheckDcPower(edtDcCable6.text,chkSkipDcCable6.Checked) then
  begin
    edtDcCable6.SetFocus;
    edtDcCable6.SelectAll;
    Exit;
  end;

  if not dCheckIBM(edtIBM6.Text,chkSkipIBM6.Checked) then
  begin
      edtIBM6.SetFocus;
      edtIBM6.SelectAll;
      Exit;
  end;

  Qry.Close;
  Qry.SQL.Clear;
  Qry.SQL.Add('insert into T_PAIR_ACC select '+QuotedStr(gModel)+','+QuotedStr(edtSetSN6.Text)+','+QuotedStr(sPbaSn)+','+QuotedStr(sIBM6)+','+QuotedStr('')+','+QuotedStr('')+','+QuotedStr(sDcCable6)+','+QuotedStr('')+','+QuotedStr('')+',Getdate()');
  Qry.ExecSQL;

  fPass(True);
  btnResetClick(Self);
end;
procedure TfrmMain.dCheck7(sTemp:String);
begin
 if Step = 0 then
  begin
    Panel27.Visible := False;
    if not dCheckSet(edtSetSN7.Text) then
    begin
      edtSetSN7.SetFocus;
      edtSetSN7.SelectAll;
      Exit;
    end;

    if chkSkipEan7.Checked and chkSkipDcCable7.Checked and chkSkipCradle7.Checked then
    begin
      sEan7 := edtSkipEan7.Text;
      sDcCable7 := edtSkipDcCable7.Text;
      sCradle7 := edtSkipCradle7.Text;
    end
    else if chkSkipEan7.Checked and chkSkipDcCable7.Checked and not chkSkipCradle7.Checked then
    begin
      Step := 3 ;
      sEan7 := edtSkipEan7.Text;
      sDcCable7 := edtSkipDcCable7.Text;
      edtCradle7.SetFocus;
      Exit;
    end
    else if chkSkipEan7.Checked and not chkSkipDcCable7.Checked then
    begin
      Step := 2 ;
      sEan7 := edtSkipEan7.Text;
      edtDcCable7.SetFocus;
      Exit;
    end
    else
    begin
      Step := 1 ;
      edtEan7.SetFocus;
      Exit;
    end;
  end;

  if Step = 1 then
  begin
    if not dCheckEan(edtEan7.text,chkSkipEan7.Checked) then
    begin
      edtEan7.SetFocus;
      edtEan7.SelectAll;
      Exit;
    end;
    if chkSkipDcCable7.Checked and chkSkipCradle7.Checked then
    begin
      sEan7 := edtSkipEan7.Text;
      sDcCable3 := edtSkipDcCable3.Text;
      sCradle7 := edtCradle7.Text;
    end
    else if chkSkipDcCable7.Checked and not chkSkipCradle7.Checked then
    begin
      Step := 3 ;
      sCradle7 := edtCradle7.Text;
      sDcCable7 := edtSkipDcCable7.Text;
      edtCradle7.SetFocus;
      Exit;
    end
    else
    begin
      Step := 2 ;
      sCradle7 := edtCradle7.Text;
      edtDcCable7.SetFocus;
      Exit;
    end;
  end;

  if Step = 2 then
  begin

    if not dCheckDcPower(edtDcCable7.text,chkSkipDcCable7.Checked) then
    begin
      edtDcCable7.SetFocus;
      edtDcCable7.SelectAll;
      Exit;
    end;

    if chkSkipCradle7.Checked then
    begin
      sDcCable7 := edtDcCable7.Text;
      sCradle7 := edtSkipCradle7.Text;
    end
    else
    begin
      Step := 3 ;
      sDcCable7 := edtDcCable7.Text;
      edtCradle7.SetFocus;
      Exit;
    end;
  end;

  if Step = 3 then
  begin
    edtCradle7.SetFocus;
    sCradle7 := edtCradle7.Text;
  end;

  if not dCheckEan(edtEan7.Text,chkSkipEan7.Checked) then
  begin
    edtEan7.SetFocus;
    edtEan7.SelectAll;
    Exit;
  end;
  if not dCheckDcPower(edtDcCable7.text,chkSkipDcCable7.Checked) then
  begin
    edtDcCable7.SetFocus;
    edtDcCable7.SelectAll;
    Exit;
  end;
  if not dCheckCradle(edtCradle7.text,chkSkipCradle7.Checked) then
  begin
    edtCradle7.SetFocus;
    edtCradle7.SelectAll;
    Exit;
  end;

    { //Begin Iqbal

//      if chkSkipEanLabel.Checked then
//      begin
//         edtDCPwr7.SetFocus;
//      end
//      else
//      begin
//        Step := 6;
//        edtEanLabel.SetFocus;
//        Exit;
//      end;

    //DC Cable Step
    if chkSkipDcCable7.Checked and chkSkipCradle7.Checked then
    begin
      sDcCable7 := edtSkipDcCable7.Text;
      sCradle7 := edtSkipCradle7.Text;
    end
    else
    begin
      Step := 2 ;
      edtEanLabel.SetFocus;
      Exit;
    end;

  end;

  if Step = 2 then
  begin
    if not dCheckDcPower(edtDCPwr7.text,chkSkipDcCable7.Checked) then
    begin
      edtCradle7.SetFocus;
//      edtDCPwr7.SetFocus;
//      edtDCPwr7.SelectAll;
//      edt
      Exit;
    end;

//    if not dCheckCradle(edtCradle7.text,chkSkipCradle7.Checked) then
//    begin
//      edtCradle7.SetFocus;
//      edtCradle7.SelectAll;
//      Exit;
//    end;

  end;

    if Step = 6 then
    begin
      if not dCheckEan(edtEanLabel.Text) then
      begin
       edtEanLabel.SetFocus;
       edtEanLabel.SelectAll;
       Exit;
      end;
      Step := 2;
      edtDCPwr7.SetFocus;
      Exit;
    end;
  } //End Iqbal



  Qry.Close;
  Qry.SQL.Clear;
  Qry.SQL.Add('insert into T_PAIR_ACC select '+QuotedStr(gModel)+','+QuotedStr(edtSetSN7.Text)+','+QuotedStr(sPbaSn)+','+QuotedStr('')+','+QuotedStr('')+','+QuotedStr(sCradle7)+','+QuotedStr(sDcCable7)+','+QuotedStr('')+','+QuotedStr(sEan7)+',Getdate()');
  Qry.ExecSQL;

  fPass(True);
  btnResetClick(Self);
end;
function TfrmMain.dCheckEan(sSN:String; bCheck: Boolean) : Boolean;
begin

  if (sSN <> '90200006330') and (not bCheck) then
  begin
    Msg_Box('EAN Not Registered.....!!!');
    dCheckEan := False;
    Exit;
  end;

  dCheckEan := True;
end;
function TfrmMain.dCheckSet(sSN:String) : Boolean;
begin
  with Qry do
  begin
    close;
    sql.Clear;
    SQL.Add('Select O_PBASERIALNO ');
    SQL.Add('From t_scan_output ');
    SQL.Add('Where [O_MODEL] = '+QuotedStr(gModel));
    SQL.Add('and [O_BUYERSERIALNO] = '+QuotedStr(sSN));
    open;
  end;

  if Qry.RecordCount <= 0 then
  begin
    Msg_Box('SN Not Registered !!!');
    dCheckSet := False;
    exit;
  end;

  sPbaSn := trim(Qry.FieldByName('O_PBASERIALNO').AsString);

  with Qry do
  begin
    close;
    sql.Clear;
    SQL.Add('Select ACC_SN ');
    SQL.Add('From T_PAIR_ACC ');
    SQL.Add('Where [ACC_MODEL] = '+QuotedStr(gModel));
    SQL.Add('and [ACC_SN] = '+QuotedStr(sSN));
    open;
  end;

  if Qry.RecordCount > 0 then
  begin
    Msg_Box('SN Already Scanned !!! !!!');
    dCheckSet := False;
    exit;
  end;

  dCheckSet := True;

end;
function TfrmMain.dCheckIBM( sSN: String; bCheck: Boolean) : Boolean;
begin

  if (sSN <> 'IB-USER-M') and (not bCheck) then
  begin
    Msg_Box('Not  IB-USER-M.....!!!');
    dCheckIBM := False;
    Exit;
  end;

  dCheckIBM := True;

end;
function TfrmMain.dCheckCradle(sSN: String; bCheck: Boolean) : Boolean;
begin
  if (strMenu  = '1') and (not bCheck) then
  begin
    with Qry do
    begin
      close;
      sql.Clear;
      SQL.Add('Select I_PbaSerialno ');
      SQL.Add('From T_SCAN_INPUT ');
      SQL.Add('where I_MODEL = '+QuotedStr(Model.gModel + ' CRD'));
      SQL.Add('and I_BUYERSERIALNO = '+QuotedStr(sSN));
      open;
    end;
    if Qry.RecordCount < 1 then
    begin
      Msg_Box('Serial not yet Registered..!');
      dCheckCradle := False;
      exit;
    end
    else
    begin
      Crdl_PBASerial := trim(Qry.FieldByName('I_PbaSerialno').AsString);
    end;
    with Qry do
    begin
      close;
      sql.Clear;
      SQL.Add('Select ACC_SN,ACC_MODEL ');
      SQL.Add('From T_PAIR_ACC ');
      SQL.Add('where ACC_MODEL = '+QuotedStr(Model.gModel));
      SQL.Add('and ACC_CRADLE = '+QuotedStr(sSN));
      open;
    end;
    if Qry.RecordCount > 0 then
    begin
      Msg_Box('Cradle already Pair with '+trim(Qry.FieldByName('ACC_MODEL').AsString)+#13+trim(Qry.FieldByName('ACC_SN').AsString)+'.!!');
      dCheckCradle := False;
      exit;
    end;
  end else
  if (sSN <> 'CRADLE') and (not bCheck) then
  begin
    Msg_Box('Not CRADLE.....!!!');
    dCheckCradle := False;
    Exit;
  end;
  dCheckCradle := True;

end;
function TfrmMain.dCheckDcPower(sSN: String; bCheck: Boolean) : Boolean;
begin

  if (sSN <> 'DC-POWER') and (not bCheck) then
  begin
    Msg_Box('Not DC-POWER.....!!!');
    dCheckDcPower := False;
    Exit;
  end;
  dCheckDcPower := True;

end;
function TfrmMain.dCheckIBI(sSN: String; bCheck: Boolean) : Boolean;
begin

  if (sSN <> 'IB-INSTAL') and (not bCheck) then
  begin
    Msg_Box('Not IB-INSTAL.....!!!');
    dCheckIBI := False;
    Exit;
  end;
  dCheckIBI := True;

end;
function TfrmMain.dCheckCdName(sSN: String; bCheck: Boolean ) : Boolean;
begin

  if (sSN <> 'CARD-NAME') and (not bCheck) then
  begin
    Msg_Box('Not CARD-NAME.....!!!');
    dCheckCdName := False;
    Exit;
  end;
  dCheckCdName := True;

end;
function TfrmMain.fPass(bResult:Boolean): Boolean;
begin
  Panel27.Visible := True;
  if bResult then
  begin
    fPass := True;
    Panel27.Caption := 'PASS';
    Panel27.Color := clTeal;
  end
  else
  begin
    fPass := False;
    Panel27.Caption := 'NG';
    Panel27.Color := clRed;    
  end;
end;

end.
