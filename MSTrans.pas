unit MSTrans;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, NxCollection, NxPageControl, StdCtrls, NxEdit, DB, MemDS,
  DBAccess, MyAccess, Grids, DBGrids, CRGrid, Mask, DBCtrls, ComCtrls, QRCtrls,
  QuickRpt, CRDBGrid1, frxClass, Buttons, frxDBSet,DateUtils;

type
  TMSTransactionForm = class(TForm)
    NxHeaderPanel1: TNxHeaderPanel;
    NxLinkLabel1: TNxLinkLabel;
    Panel1: TPanel;
    NxLinkLabel3: TNxLinkLabel;
    NxLinkLabel8: TNxLinkLabel;
    NxLinkLabel2: TNxLinkLabel;
    NxNotebook1: TNxNotebook;
    MeterTransactions: TNxTabSheet;
    StatusUpdate: TNxTabSheet;
    SearchTrans: TMyQuery;
    NxLinkLabel4: TNxLinkLabel;
    NxEdit1: TNxEdit;
    NxLinkLabel5: TNxLinkLabel;
    dsSearchTrans: TMyDataSource;
    AssignMeterPanel: TNxHeaderPanel;
    NxLinkLabel9: TNxLinkLabel;
    NxLinkLabel6: TNxLinkLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    NxLinkLabel7: TNxLinkLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    AvailableMeterPanel: TNxHeaderPanel;
    NxLinkLabel18: TNxLinkLabel;
    NxLinkLabel13: TNxLinkLabel;
    MInv: TMyQuery;
    dsMInv: TMyDataSource;
    MInvidMeterInv: TLargeintField;
    MInvIdAcq: TLargeintField;
    MInvSerialNumber: TStringField;
    MInvBrand: TStringField;
    MInvType: TStringField;
    MInvAmphere: TStringField;
    MInvAccuracy: TFloatField;
    MInvStatus: TStringField;
    NxEdit2: TNxEdit;
    NxButton1: TNxButton;
    Label4: TLabel;
    TransactionDate: TDateTimePicker;
    Edit3: TEdit;
    Label5: TLabel;
    NxEdit3: TNxEdit;
    MInvMeterStatus: TStringField;
    StatusUpdatePanel: TNxHeaderPanel;
    NxLinkLabel11: TNxLinkLabel;
    RadioGroup1: TRadioGroup;
    NxButton2: TNxButton;
    NxButton3: TNxButton;
    MeterSealTransactions: TNxTabSheet;
    NxLinkLabel12: TNxLinkLabel;
    NxButton5: TNxButton;
    MInvMeterCondition: TStringField;
    ModifyStatusPanel: TNxHeaderPanel;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    RadioGroup2: TRadioGroup;
    NxLinkLabel10: TNxLinkLabel;
    NxLinkLabel14: TNxLinkLabel;
    SInv: TMyQuery;
    dsSInv: TMyDataSource;
    SInvidSealBatch: TLargeintField;
    SInvidsealacq: TFloatField;
    SInvidTechCrew: TFloatField;
    SInvboxes: TLargeintField;
    SInvpcs: TLargeintField;
    SInvTotalPcs: TLargeintField;
    SInvDateIssue: TDateField;
    SInvcrew: TStringField;
    SInvsealsinstalled: TLargeintField;
    NxLinkLabel15: TNxLinkLabel;
    NxLinkLabel16: TNxLinkLabel;
    NxLinkLabel17: TNxLinkLabel;
    NewSealPanel: TNxHeaderPanel;
    NxLinkLabel19: TNxLinkLabel;
    NxLinkLabel20: TNxLinkLabel;
    NxLinkLabel21: TNxLinkLabel;
    Edit4: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    TechCrew: TMyQuery;
    TechCrewidtechcrew: TLargeintField;
    TechCrewTechArea: TStringField;
    TechCrewCrew: TStringField;
    dsTechCrew: TMyDataSource;
    IssueDate: TDateTimePicker;
    Label11: TLabel;
    SelectCrewPanel: TNxHeaderPanel;
    NxLinkLabel22: TNxLinkLabel;
    NxLinkLabel23: TNxLinkLabel;
    CloseBatchPanel: TNxHeaderPanel;
    NxLinkLabel24: TNxLinkLabel;
    NxLinkLabel25: TNxLinkLabel;
    Label12: TLabel;
    DBEdit5: TDBEdit;
    Label13: TLabel;
    DBEdit6: TDBEdit;
    Label14: TLabel;
    DBEdit7: TDBEdit;
    Label15: TLabel;
    DBEdit8: TDBEdit;
    Label16: TLabel;
    Label17: TLabel;
    Damaged: TEdit;
    unaccounted: TEdit;
    CloseDate: TDateTimePicker;
    Label18: TLabel;
    MtSign: TMyQuery;
    dsMtSign: TDataSource;
    MtSignidMtSign: TIntegerField;
    MtSignPreparedby: TStringField;
    MtSignPreparedbyPos: TStringField;
    MtSignNotedBy: TStringField;
    MtSignNotedByPos: TStringField;
    SignPanel: TNxHeaderPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    NxLinkLabel26: TNxLinkLabel;
    NxLinkLabel27: TNxLinkLabel;
    SealSumm: TMyQuery;
    PrintPanel: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    QRGroup1: TQRGroup;
    QRBand1: TQRBand;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel6: TQRLabel;
    SealSummdateclose: TDateField;
    SealSummIssued: TFloatField;
    SealSumminstalled: TFloatField;
    SealSummdamaged: TFloatField;
    SealSummUnaccounted: TFloatField;
    SealSummidtechcrew: TFloatField;
    SealSummCrew: TStringField;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    SummaryBand1: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    UpdateType: TRadioGroup;
    Label23: TLabel;
    Edit8: TEdit;
    Edit9: TEdit;
    Label24: TLabel;
    SInvUpdateType: TStringField;
    InsertSealBatch: TMyQuery;
    SealDetail: TMyQuery;
    dsSealDetail: TMyDataSource;
    SealDetailidSealInv: TLargeintField;
    SealDetailidTechCrew: TFloatField;
    SealDetailSealNumber: TStringField;
    SealDetailStatus: TStringField;
    SealDetailDateInst: TDateField;
    SealDetailCode: TFloatField;
    SealDetailMeterBrand: TStringField;
    SealDetailSerialNumber: TStringField;
    SealDetailidSealBatch: TFloatField;
    SealDetailAccountNumber: TStringField;
    SealDetailName: TStringField;
    NxLinkLabel28: TNxLinkLabel;
    StockTransfer: TNxTabSheet;
    NxHeaderPanel2: TNxHeaderPanel;
    NxLinkLabel29: TNxLinkLabel;
    NxLinkLabel30: TNxLinkLabel;
    NxLinkLabel31: TNxLinkLabel;
    NxLinkLabel32: TNxLinkLabel;
    NxLinkLabel33: TNxLinkLabel;
    NxLinkLabel34: TNxLinkLabel;
    StockTransferPanel: TNxHeaderPanel;
    Label25: TLabel;
    DBEdit13: TDBEdit;
    Label26: TLabel;
    DBEdit14: TDBEdit;
    Label27: TLabel;
    DBEdit15: TDBEdit;
    NxLinkLabel35: TNxLinkLabel;
    NxLinkLabel36: TNxLinkLabel;
    MTPanel: TNxHeaderPanel;
    MTransfer: TMyQuery;
    MTransferidMeterInv: TLargeintField;
    MTransferIdAcq: TLargeintField;
    MTransferSerialNumber: TStringField;
    MTransferBrand: TStringField;
    MTransferType: TStringField;
    MTransferAmphere: TStringField;
    MTransferAccuracy: TFloatField;
    MTransferStatus: TStringField;
    NxLinkLabel37: TNxLinkLabel;
    NxLinkLabel38: TNxLinkLabel;
    dsMTransfer: TMyDataSource;
    NxLinkLabel39: TNxLinkLabel;
    TabSheet2: TTabSheet;
    QuickRep2: TQuickRep;
    QRBand2: TQRBand;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRBand5: TQRBand;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRDBText16: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText22: TQRDBText;
    QRSysData5: TQRSysData;
    QRBand6: TQRBand;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    MInvReading: TFloatField;
    CRDBGrid9: TCRDBGrid1;
    CRDBGrid5: TCRDBGrid1;
    CRDBGrid1: TCRDBGrid1;
    CRDBGrid3: TCRDBGrid1;
    CRDBGrid4: TCRDBGrid1;
    CRDBGrid6: TCRDBGrid1;
    CRDBGrid8: TCRDBGrid1;
    CRDBGrid7: TCRDBGrid1;
    CRDBGrid2: TCRDBGrid1;
    SearchTransidtrans: TLargeintField;
    SearchTranstranscode: TLargeintField;
    SearchTransaccountnumber: TStringField;
    SearchTransname: TStringField;
    SearchTransaddress: TStringField;
    SearchTransdescription: TStringField;
    SearchTransDatePaid: TDateTimeField;
    SearchTransORNumber: TStringField;
    MInv2: TMyQuery;
    dsMInv2: TMyDataSource;
    MInv2idMeterInv: TLargeintField;
    MInv2IdAcq: TLargeintField;
    MInv2SerialNumber: TStringField;
    MInv2Brand: TStringField;
    MInv2Type: TStringField;
    MInv2Amphere: TStringField;
    MInv2Accuracy: TFloatField;
    MInv2Status: TStringField;
    MInv2MeterStatus: TStringField;
    MInv2MeterCondition: TStringField;
    MInv2Reading: TFloatField;
    NxLinkLabel40: TNxLinkLabel;
    meterListR: TfrxReport;
    MTListPanel: TNxHeaderPanel;
    Label28: TLabel;
    SpeedButton1: TSpeedButton;
    NxLinkLabel41: TNxLinkLabel;
    MTDateFrom: TDateTimePicker;
    MTDateTo: TDateTimePicker;
    Label29: TLabel;
    Label30: TLabel;
    MtrListQ: TMyQuery;
    tmpQ: TMyQuery;
    MtrListFrx: TfrxDBDataset;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NxEdit1Click(Sender: TObject);
    procedure NxEdit1Change(Sender: TObject);
    procedure NxLinkLabel3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NxEdit2Click(Sender: TObject);
    procedure NxLinkLabel5Click(Sender: TObject);
    procedure NxLinkLabel7Click(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure NxLinkLabel13Click(Sender: TObject);
    procedure NxLinkLabel18Click(Sender: TObject);
    procedure NxLinkLabel6Click(Sender: TObject);
    procedure NxLinkLabel9Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure RadioGroup1Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure NxEdit3Click(Sender: TObject);
    procedure NxLinkLabel12Click(Sender: TObject);
    procedure NxButton5Click(Sender: TObject);
    procedure NxLinkLabel11Click(Sender: TObject);
    procedure NxButton3Click(Sender: TObject);
    procedure NxLinkLabel14Click(Sender: TObject);
    procedure NxLinkLabel10Click(Sender: TObject);
    procedure NxLinkLabel15Click(Sender: TObject);
    procedure NxLinkLabel4Click(Sender: TObject);
    procedure NxLinkLabel2Click(Sender: TObject);
    procedure NxLinkLabel21Click(Sender: TObject);
    procedure NxLinkLabel22Click(Sender: TObject);
    procedure NxLinkLabel23Click(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure NxLinkLabel19Click(Sender: TObject);
    procedure NxLinkLabel20Click(Sender: TObject);
    procedure NxLinkLabel16Click(Sender: TObject);
    procedure NxLinkLabel25Click(Sender: TObject);
    procedure NxLinkLabel24Click(Sender: TObject);
    procedure DamagedChange(Sender: TObject);
    procedure NxLinkLabel8Click(Sender: TObject);
    procedure NxLinkLabel26Click(Sender: TObject);
    procedure NxLinkLabel27Click(Sender: TObject);
    procedure NxLinkLabel17Click(Sender: TObject);
    procedure NxLinkLabel1Click(Sender: TObject);
    procedure UpdateTypeClick(Sender: TObject);
    procedure NxLinkLabel29Click(Sender: TObject);
    procedure NxLinkLabel28Click(Sender: TObject);
    procedure NxLinkLabel30Click(Sender: TObject);
    procedure NxLinkLabel31Click(Sender: TObject);
    procedure NxLinkLabel35Click(Sender: TObject);
    procedure NxLinkLabel36Click(Sender: TObject);
    procedure NxLinkLabel37Click(Sender: TObject);
    procedure NxLinkLabel38Click(Sender: TObject);
    procedure NxLinkLabel33Click(Sender: TObject);
    procedure NxLinkLabel34Click(Sender: TObject);
    procedure NxLinkLabel32Click(Sender: TObject);
    procedure NxLinkLabel39Click(Sender: TObject);
    procedure NxLinkLabel40Click(Sender: TObject);
    procedure NxLinkLabel41Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MSTransactionForm: TMSTransactionForm;

implementation

uses MeterData, MODTOOLS;
{$R *.dfm}

procedure TMSTransactionForm.DamagedChange(Sender: TObject);
begin
  unaccounted.Text := IntToStr(SInvTotalPcs.AsInteger - StrToInt(Damaged.Text));
end;

procedure TMSTransactionForm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Perform(CM_DIALOGKEY, VK_TAB, 0);
    Key := #0;
  end;
end;

procedure TMSTransactionForm.Edit5Exit(Sender: TObject);
begin
  Edit7.Text := IntToStr(StrToInt(Edit5.Text) * StrToInt(Edit6.Text));
end;

procedure TMSTransactionForm.FormClose
  (Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  MSTransactionForm := Nil;
end;

procedure TMSTransactionForm.FormShow(Sender: TObject);
begin
  NxLinkLabel3Click(Self);
end;

procedure TMSTransactionForm.NxButton1Click(Sender: TObject);
begin
  {MInv.Close;
  MInv.FilterSQL := 'SerialNumber like ' + QuotedStr('%' + NxEdit2.Text + '%')
                    + ' and status = 2 ' ;
  MInv.Open; }

  MInv2.Close;
  MInv2.ParamByName('serialN').Text := '%'+NxEdit2.Text+'%';
  MInv2.Open;
end;

procedure TMSTransactionForm.NxButton2Click(Sender: TObject);
begin
  if (MessageDlg('Update meter status... Proceed now?', mtConfirmation,
      [mbYes, mbCancel], 0) in [mrCancel, mrNone]) then
    exit;

  MInv.Close;
  MInv.FilterSQL := 'Status = 1';
  MInv.Open;

  while not MInv.Eof do
  begin
    MInv.Edit;
    if MInvMeterCondition.Text = 'GOOD' then
      MInvStatus.Text := '2'
    else
      MInvStatus.Text := '4';
    MInv.Post;
    MInv.Next;
  end;
  MInv.Refresh;

  MessageDlg('Update done...', mtInformation, [mbOK], 0);

end;

procedure TMSTransactionForm.NxButton3Click(Sender: TObject);
begin
  if MInv.Active = false then
  begin
    MessageDlg('Select a meter for modification', mtError, [mbOK], 0);
    exit;
  end;

  if MInv.IsEmpty then
  begin
    MessageDlg('Select a meter for modification', mtError, [mbOK], 0);
    exit;
  end;

  ModifyStatusPanel.Left := 196;
  ModifyStatusPanel.Top := 129;
  ModifyStatusPanel.BringToFront;
  ModifyStatusPanel.Visible := True;
  RadioGroup2.SetFocus;
end;

procedure TMSTransactionForm.NxButton5Click(Sender: TObject);
begin
  StatusUpdatePanel.Left := 446;
  StatusUpdatePanel.Top := 78;
  StatusUpdatePanel.BringToFront;
  StatusUpdatePanel.Visible := True;
end;

procedure TMSTransactionForm.NxEdit1Change(Sender: TObject);
begin
  if NxEdit1.Text = '' then
  begin
    NxEdit1.Text := 'Search Name';
    NxEdit1.SelectAll;
    exit;
  end;

  SearchTrans.FilterSQL := 'Name like ' + QuotedStr('%' + NxEdit1.Text + '%');
end;

procedure TMSTransactionForm.NxEdit1Click(Sender: TObject);
begin
  NxEdit1.SelectAll;
end;

procedure TMSTransactionForm.NxEdit2Click(Sender: TObject);
begin
  NxEdit2.SelectAll;
end;

procedure TMSTransactionForm.NxEdit3Click(Sender: TObject);
begin
  NxEdit3.SelectAll;
end;

procedure TMSTransactionForm.NxLinkLabel10Click(Sender: TObject);
begin
  MInv.Edit;
  case RadioGroup2.ItemIndex of
    0:
      MInvStatus.Text := '2';
    1:
      MInvStatus.Text := '6';
    2:
      MInvStatus.Text := '7';
  end;
  MInv.Post;
  MInv.Refresh;
  ModifyStatusPanel.Visible := false;
end;

procedure TMSTransactionForm.NxLinkLabel11Click(Sender: TObject);
begin
  StatusUpdatePanel.Visible := false;
end;

procedure TMSTransactionForm.NxLinkLabel12Click(Sender: TObject);
begin
  MInv.Close;
  MInv.FilterSQL := 'SerialNumber like ' + QuotedStr('%' + NxEdit3.Text + '%');
  MInv.Open;
end;

procedure TMSTransactionForm.NxLinkLabel13Click(Sender: TObject);
begin
  AvailableMeterPanel.Visible := false;
  Edit1.Text := MInv2SerialNumber.Text;
  Edit2.Text := MInv2Brand.Text;
  Edit3.Text := MInv2Reading.Text;
  TransactionDate.SetFocus;
  NxLinkLabel9.Enabled := True;
end;

procedure TMSTransactionForm.NxLinkLabel14Click(Sender: TObject);
begin
  ModifyStatusPanel.Visible := false;
end;

procedure TMSTransactionForm.NxLinkLabel15Click(Sender: TObject);
begin
  NewSealPanel.Left := 232;
  NewSealPanel.Top := 76;
  NewSealPanel.BringToFront;
  NewSealPanel.Visible := True;
  IssueDate.Date := Now;
  Edit5.Text := '0';
  Edit6.Text := '0';
  Edit7.Text := '0';
  Edit4.SetFocus;
end;

procedure TMSTransactionForm.NxLinkLabel16Click(Sender: TObject);
begin
  if SInv.IsEmpty then
  begin
    MessageDlg('No records selected.. cannot perform requested function',
      mtError, [mbOK], 0);
    exit;
  end;

  CloseBatchPanel.Left := 227;
  CloseBatchPanel.Top := 87;
  CloseBatchPanel.BringToFront;
  CloseBatchPanel.Visible := True;
  CloseDate.Date := Now;
  Damaged.SetFocus;
end;

procedure TMSTransactionForm.NxLinkLabel17Click(Sender: TObject);
begin
  SealSumm.Open;
  QRLabel40.Caption := '';
  QuickRep1.Preview;
  SealSumm.Close;
end;

procedure TMSTransactionForm.NxLinkLabel18Click(Sender: TObject);
begin
  AvailableMeterPanel.Visible := false;
  MInv.Close;
end;

procedure TMSTransactionForm.NxLinkLabel19Click(Sender: TObject);
Var
  I: Integer;
begin
  if UpdateType.ItemIndex < 0 then
  begin
    MessageDlg('Select a valid update type', mtError, [mbOK], 0);
    UpdateType.SetFocus;
  end;

  if UpdateType.ItemIndex = 1 then
  begin
    if Edit8.Text = '' then
      if (MessageDlg('No prefix was supplied.. Continue?', mtConfirmation,
          [mbYes, mbCancel], 0) = mrCancel) then
      begin
        Edit8.SetFocus;
        exit;
      end;

    if Edit9.Text = '' then
      if (MessageDlg('No Start Series supplied.. Continue?', mtConfirmation,
          [mbYes, mbCancel], 0) = mrCancel) then
      begin
        Edit9.SetFocus;
        exit;
      end
      else
        Edit9.Text := '0000';
  end;

  SInv.Append;
  SInvidTechCrew.Text      := TechCrewidtechcrew.Text;
  SInvboxes.Text           := Edit5.Text;
  SInvpcs.Text             := Edit6.Text;
  SInvTotalPcs.Text        := Edit7.Text;
  SInvDateIssue.AsDateTime := IssueDate.Date;
  SInvUpdateType.AsInteger := UpdateType.ItemIndex;

  Try
    SInv.Post;
    SInv.Refresh;
    SInv.Last;
  Except
    on e: Exception do
    begin
      MessageDlg(
        'Unable to save. The said crew probably has other existing Seal Issuance.. Try closing said issuance first..', mtError, [mbOK], 0);
      exit;
    end;
  End;

  if UpdateType.ItemIndex = 0 then
  begin
    for I := 1 to StrToInt(Edit7.Text) do
    begin
      SealDetail.Append;
      SealDetailidSealBatch.Text := SInvidSealBatch.Text;
      SealDetailidTechCrew.Text  := SInvidTechCrew.Text;
      SealDetailSealNumber.Text  := Edit8.Text + JustStr
        (IntToStr(StrToInt(Edit9.Text) + (I-1)), '0', Length(Edit9.Text), 1);
      SealDetail.Post;
    end;
  end;

  SealDetail.Refresh;
  TechCrew.Close;
  NewSealPanel.Visible := False;
end;

procedure TMSTransactionForm.NxLinkLabel1Click(Sender: TObject);
begin
  Close;
end;

procedure TMSTransactionForm.NxLinkLabel20Click(Sender: TObject);
begin
  TechCrew.Close;
  NewSealPanel.Visible := false;
end;

procedure TMSTransactionForm.NxLinkLabel21Click(Sender: TObject);
begin
  TechCrew.Close;
  SelectCrewPanel.Left := 385;
  SelectCrewPanel.Top := 32;
  SelectCrewPanel.BringToFront;
  SelectCrewPanel.Visible := True;
  TechCrew.Open;
  CRDBGrid5.SetFocus;
end;

procedure TMSTransactionForm.NxLinkLabel22Click(Sender: TObject);
begin
  Edit4.Text := TechCrewCrew.Text;
  SelectCrewPanel.Visible := false;
  Edit5.SetFocus;
end;

procedure TMSTransactionForm.NxLinkLabel23Click(Sender: TObject);
begin
  TechCrew.Close;
  SelectCrewPanel.Visible := false;
end;

procedure TMSTransactionForm.NxLinkLabel24Click(Sender: TObject);
Var
  DelBatch: TMyQuery;

begin
  With MeterDataModule do
  begin
    SLClose.Open;
    SLClose.Append;
    SLCloseidsealbatch.Text := SInvidSealBatch.Text;
    SLCloseidtechcrew.Text := SInvidTechCrew.Text;
    SLClosedateclose.AsDateTime := CloseDate.Date;
    SLCloseIssued.AsInteger := SInvTotalPcs.AsInteger;
    SLCloseinstalled.AsInteger := SInvsealsinstalled.AsInteger;
    SLClosedamaged.AsInteger := StrToInt(Damaged.Text);
    SLCloseUnaccounted.AsInteger := StrToInt(unaccounted.Text);
    SLClose.Post;

    DelBatch := TMyQuery.Create(Self);
    DelBatch.Connection := MeterDataModule.MyConnection1;

    DelBatch.SQL.Clear;
    DelBatch.SQL.Add(
      'delete from zanecometer.sealbatch where idtechcrew = :idtechcrew');
    DelBatch.ParamByName('idtechcrew').Text := SInvidTechCrew.Text;
    DelBatch.Execute;

    SInv.Refresh;
    CloseBatchPanel.Visible := false;
    MessageDlg('Done...', mtInformation, [mbOK], 0);
  end;
end;

procedure TMSTransactionForm.NxLinkLabel25Click(Sender: TObject);
begin
  CloseBatchPanel.Visible := false;
end;

procedure TMSTransactionForm.NxLinkLabel26Click(Sender: TObject);
begin
  MtSign.Post;
  SignPanel.Visible := false;
end;

procedure TMSTransactionForm.NxLinkLabel27Click(Sender: TObject);
begin
  MtSign.Post;
  SignPanel.Visible := false;
end;

procedure TMSTransactionForm.NxLinkLabel28Click(Sender: TObject);
begin
  NxNotebook1.ActivePageIndex := 3;
  MeterDataModule.KMTrans.Open;
  MeterDataModule.KMDetail.Open;
end;

procedure TMSTransactionForm.NxLinkLabel29Click(Sender: TObject);
begin
  StockTransferPanel.Left    := 212;
  StockTransferPanel.Top     := 142;
  StockTransferPanel.BringToFront;
  StockTransferPanel.Visible := True;

  With MeterDataModule do
   begin
     DBEdit13.SetFocus;
     KMTrans.Append;
     KMTransDateTransferred.EditMask := '!99/99/00;1;_';
     KMTransDateTransferred.AsDateTime := Now;
   end;

end;

procedure TMSTransactionForm.NxLinkLabel2Click(Sender: TObject);
begin
  SInv.Close;
  SealDetail.Close;
  NxNotebook1.ActivePageIndex := 2;
  SInv.Open;
  SealDetail.Open;
end;

procedure TMSTransactionForm.NxLinkLabel30Click(Sender: TObject);
begin
  if MeterDataModule.KMTransPosted.Text = '1' then
    begin
      MessageDlg('Editing a posted stock transfer is now alllowed.', mtError, [mbOK], 0);
      exit;
    end;


  StockTransferPanel.Left    := 212;
  StockTransferPanel.Top     := 142;
  StockTransferPanel.BringToFront;
  StockTransferPanel.Visible := True;

  With MeterDataModule do
   begin
     KMTrans.Edit;
     KMTransDateTransferred.EditMask := '!99/99/00;1;_';
     DBEdit13.SetFocus;
   end;
end;

procedure TMSTransactionForm.NxLinkLabel31Click(Sender: TObject);
begin
  if not MeterDataModule.KMDetail.IsEmpty then
    begin
      MessageDlg('That stock transfer is not empty... Delete details first.', mtError, [mbOK], 0);
      exit;
    end;

  if MeterDataModule.KMTransPosted.Text = '1' then
    begin
      MessageDlg('That stock transfer is already posted...', mtError, [mbOK], 0);
      exit;
    end;

  if (MessageDlg('Confirm delete', mtConfirmation, [mbYes, mbCancel], 0) = mrCancel) then exit;
  MeterDataModule.KMTrans.Delete;

end;

procedure TMSTransactionForm.NxLinkLabel32Click(Sender: TObject);
Var PostTransfer : TMyQuery;

begin
  if MeterDataModule.KMTransPosted.Text = '1' then
    begin
      MessageDlg('Cannot post already posted stock transfere...', mtError, [mbOK], 0);
      exit;
    end;

if (MessageDlg('Post stock transfer.. You may no longer edit or delete a'+#13+#10+'stock transfer once it has been posted.. Proceed?', mtConfirmation, [mbYes, mbCancel], 0) in [mrCancel, mrNone]) then exit;

PostTransfer := TMyQuery.Create(self);
PostTransfer.Connection := MeterDataModule.MyConnection1;
PostTransfer.SQL.Clear;
PostTransfer.SQL.Add('update zanecometer.meterinv,'); // code 1 for meter inv is transferred.
PostTransfer.SQL.Add('       zanecometer.ktdetail');
PostTransfer.SQL.Add('  set meterinv.status = ''1''');
PostTransfer.SQL.Add(' where meterinv.brand = ktdetail.meterbrand and');
PostTransfer.SQL.Add('       meterinv.serialnumber = ktdetail.serialnumber and');
PostTransfer.SQL.Add('       ktdetail.idkwhrtrans = :idkwhrtrans');
PostTransfer.ParamByName('idkwhrtrans').Text := MeterDataModule.KMTransidKWHRTrans.Text;
PostTransfer.Execute;

MeterDataModule.KMTrans.Edit;
MeterDataModule.KMTransPosted.Text := '1';
MeterDataModule.KMTrans.Post;

MessageDlg('Posting done..', mtInformation, [mbOK], 0);


end;

procedure TMSTransactionForm.NxLinkLabel33Click(Sender: TObject);
begin
  MTPanel.Left := 181;
  MTPanel.Top  := 66;
  MTPanel.BringToFront;
  MTPanel.Visible := True;
  MTransfer.Open;
  CRDBGrid9.SetFocus;
end;

procedure TMSTransactionForm.NxLinkLabel34Click(Sender: TObject);
begin
  if MeterDataModule.KMDetail.IsEmpty then
    begin
     MessageDlg('No detail to delete...', mtError, [mbOK], 0);
     exit;
    end;

  if MeterDataModule.KMTransPosted.Text = '1' then
    begin
      MessageDlg('This meter stock transfer is aleady posted...', mtError, [mbOK], 0);
      exit;
    end;

   if (MessageDlg('Confirm delete.', mtConfirmation, [mbYes, mbCancel], 0) = mrCancel) then exit;

   MeterDataModule.KMDetail.Delete;
end;

procedure TMSTransactionForm.NxLinkLabel35Click(Sender: TObject);
begin
  MeterDataModule.KMTrans.Post;
  StockTransferPanel.Visible := False;
end;

procedure TMSTransactionForm.NxLinkLabel36Click(Sender: TObject);
begin
  MeterDataModule.KMTrans.Cancel;
  StockTransferPanel.Visible := False;
end;

procedure TMSTransactionForm.NxLinkLabel37Click(Sender: TObject);
Var I : Integer;
begin
    with CRDBGrid9.DataSource.DataSet do
    begin
      for i := 0 to CRDBGrid9.SelectedRows.Count-1 do
      begin
        GotoBookmark(Pointer(CRDBGrid9.SelectedRows.Items[i]));
        MeterDataModule.KMDetail.Append;
        MeterDataModule.KMDetailmeterbrand.Text   := MTransferBrand.Text;
        MeterDataModule.KMDetailserialnumber.Text := MTransferSerialNumber.Text;
        MeterDataModule.KMDetail.Append;
      end;
    end;
end;

procedure TMSTransactionForm.NxLinkLabel38Click(Sender: TObject);
begin
  MTransfer.Close;
  MTPanel.Visible := False;
end;

procedure TMSTransactionForm.NxLinkLabel39Click(Sender: TObject);
begin
  if MeterDataModule.KMTrans.IsEmpty then
    begin
     MessageDlg('No records to preview.', mtInformation, [mbOK], 0);
     exit;
    end;
  QuickRep2.Preview;
end;

procedure TMSTransactionForm.NxLinkLabel3Click(Sender: TObject);
begin
  NxNotebook1.ActivePageIndex := 0;
  SearchTrans.Open;
end;

procedure TMSTransactionForm.NxLinkLabel40Click(Sender: TObject);
begin
  MTListPanel.Top   := 105;
  MTListPanel.Left  := 304;
  MTListPanel.BringToFront;
  MTListPanel.Visible := true;

  MTDateFrom.Date := StartOfTheMonth(now);
  MTDateTo.Date   := EndOfTheMonth(now);
end;

procedure TMSTransactionForm.NxLinkLabel41Click(Sender: TObject);
begin
  MTListPanel.Visible := false;
end;

procedure TMSTransactionForm.NxLinkLabel4Click(Sender: TObject);
begin
  NxNotebook1.ActivePageIndex := 1;
end;

procedure TMSTransactionForm.NxLinkLabel5Click(Sender: TObject);
begin
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';

  if SearchTrans.Active = false then
  begin
    MessageDlg('No records were selected for this function...', mtError,
      [mbOK], 0);
    exit;
  end;

  if SearchTrans.IsEmpty then
  begin
    MessageDlg('No records were selected for this function...', mtError,
      [mbOK], 0);
    exit;
  end;

  MInv.Close;

  AssignMeterPanel.Left := 209;
  AssignMeterPanel.Top := 107;
  AssignMeterPanel.BringToFront;
  AssignMeterPanel.Visible := True;
  TransactionDate.Date := Now;
  NxLinkLabel9.Enabled := false;
  Edit1.SetFocus;
end;

procedure TMSTransactionForm.NxLinkLabel6Click(Sender: TObject);
begin
  MInv.Close;
  AssignMeterPanel.Visible := false;
end;

procedure TMSTransactionForm.NxLinkLabel7Click(Sender: TObject);
begin
  AvailableMeterPanel.Left := 329;
  AvailableMeterPanel.Top := 39;
  AvailableMeterPanel.BringToFront;
  AvailableMeterPanel.Visible := True;
  NxEdit2.SetFocus;
end;

procedure TMSTransactionForm.NxLinkLabel8Click(Sender: TObject);
begin
  MtSign.Open;

  if MtSign.IsEmpty then
    MtSign.AppendRecord([]);

  SignPanel.Left := 243;
  SignPanel.Top := 132;
  SignPanel.BringToFront;
  SignPanel.Visible := True;

  MtSign.Edit;
  DBEdit9.SetFocus;
end;

procedure TMSTransactionForm.NxLinkLabel9Click(Sender: TObject);
Var
  MTransQ: TMyQuery;
begin

  if Edit1.Text = '' then
  begin
    MessageDlg('No available Meter Serial selected...', mtError, [mbOK], 0);
    exit;
  end;

  if MInv2.Active = false then
  begin
    MessageDlg(
      'Improper selection procedure.. please select from the link of the serial number..', mtError, [mbOK], 0);
    exit;
  end;

  if (MessageDlg('Will now proceed to update meter history and their ' + #13 +
        #10 + 'respective transaction files... Continue?', mtInformation,
      [mbYes, mbCancel], 0) = mrCancel) then
    exit;

  MTransQ := TMyQuery.Create(Self);
  MTransQ.Connection := MeterDataModule.MyConnection1;

  MTransQ.SQL.Clear;
  MTransQ.SQL.Add('Insert into metertransaction');
  MTransQ.SQL.Add
    ('(DateTrans,TransDesc,AccountNumber,Name,Reading,idMeterInv,serial)');
  MTransQ.SQL.Add('values');
  MTransQ.SQL.Add(
    '(:DateTrans,:TransDesc,:AccountNumber,:Name,:Reading,:idMeterInv,:serial)');
  MTransQ.ParamByName('DateTrans').AsDate := TransactionDate.Date;
  case SearchTranstranscode.AsInteger of
    1:
      MTransQ.ParamByName('TransDesc').Text := 'New Connection';
    2:
      MTransQ.ParamByName('TransDesc').Text := 'Reconnection';
    3:
      MTransQ.ParamByName('TransDesc').Text := 'Change Meter';
  end;
  MTransQ.ParamByName('AccountNumber').Text := SearchTransaccountnumber.Text;
  MTransQ.ParamByName('Name').Text          := SearchTransname.Text;
  MTransQ.ParamByName('Reading').Text       := Edit3.Text;
  MTransQ.ParamByName('idMeterInv').Text    := MInv2idMeterInv.Text;
  MTransQ.ParamByName('serial').Text        := Edit1.Text;
  MTransQ.Execute;

  tmpQ.Close;
  tmpQ.SQL.Clear;
  tmpQ.SQL.Add('select * from metertransaction where DateTrans = :DateTrans and idMeterInv = :idMeterInv');
  tmpQ.ParamByName('DateTrans').Text  := FormatDateTime('YYYY-MM-DD',TransactionDate.Date);
  tmpQ.ParamByName('idMeterInv').Text := MInv2idMeterInv.Text;
  tmpQ.Open;

  MTransQ.SQL.Clear;

  case SearchTranstranscode.AsInteger of
    1:
      begin
        MTransQ.SQL.Add(
          'Update zanecoisd.newconnection set serial = :serial, MeterBrand = :MeterBrand, Initialreading = :Reading,idmeterTrans = :idmeterTrans where idnewconnection = :recordnumber');
        MTransQ.ParamByName('serial').Text            := MInv2SerialNumber.Text;
        MTransQ.ParamByName('MeterBrand').Text        := MInv2Brand.Text;
        MTransQ.ParamByName('recordnumber').Text      := SearchTransidtrans.Text;
        MTransQ.ParamByName('Reading').Text           := Edit3.Text;
        MTransQ.ParamByName('idmeterTrans').AsInteger := tmpQ.FieldByName('idmeterTransaction').AsInteger;
      end;
    2:
      begin
        MTransQ.SQL.Add(
          'Update zanecoisd.recon set serial = :serial, MeterBrand = :MeterBrand, InitialReading = :Reading,idmeterTrans = :idmeterTrans where idrecon = :recordnumber');
        MTransQ.ParamByName('serial').Text       := MInv2SerialNumber.Text;
        MTransQ.ParamByName('MeterBrand').Text   := MInv2Brand.Text;
        MTransQ.ParamByName('recordnumber').Text := SearchTransidtrans.Text;
        MTransQ.ParamByName('Reading').Text      := Edit3.Text;
        MTransQ.ParamByName('idmeterTrans').AsInteger := tmpQ.FieldByName('idmeterTransaction').AsInteger;
      end;
    3:
      begin
        MTransQ.SQL.Add(
          'Update zaneco.changemeter set NewMeterSerial = :serial, NewMeterBrand = :MeterBrand where entry = :recordnumber');
        MTransQ.ParamByName('serial').Text := MInv2SerialNumber.Text;
        MTransQ.ParamByName('MeterBrand').Text := MInv2Brand.Text;
        MTransQ.ParamByName('recordnumber').Text := SearchTransidtrans.Text;
      end;
  end;
  MTransQ.Execute;

  MInv2.Edit;
  MInv2Status.Text := '2';
  MInv2.Post;
  MInv2.Close;
  SearchTrans.Refresh;
  AssignMeterPanel.Visible := false;
end;

procedure TMSTransactionForm.RadioGroup1Click(Sender: TObject);
begin
  MInv.Close;
  MInv.FilterSQL := 'Status = ' + IntToStr(RadioGroup1.ItemIndex);
  MInv.Open;
end;

procedure TMSTransactionForm.SpeedButton1Click(Sender: TObject);
var
 Memo4 : TfrxMemoView;
begin
  MtrListQ.Close;
  MtrListQ.ParamByName('dateFrom').Text := FormatDateTime('YYYY-MM-DD',MTDateFrom.Date);
  MtrListQ.ParamByName('dateTo').Text   := FormatDateTime('YYYY-MM-DD',MTDateTo.Date);
  MtrListQ.Open;

  Memo4      := meterListR.FindComponent('Memo4') as TfrxMemoView;
  Memo4.Text := FormatDateTime('m/d/yyyy',MTDateFrom.Date)  +' to '+FormatDateTime('m/d/yyyy',MTDateTo.Date);

  MTListPanel.Visible := false;
  meterListR.ShowReport;
end;

procedure TMSTransactionForm.UpdateTypeClick(Sender: TObject);
begin
  If UpdateType.ItemIndex = 0 then
  begin
    Edit8.Enabled := True;
    Edit9.Enabled := True;
    Edit8.Text := '';
    Edit9.Text := '';
    Edit8.SetFocus;
  end
  else
  begin
    Edit8.Enabled := false;
    Edit9.Enabled := false;
    Edit8.Text := '';
    Edit9.Text := '';
    Edit7.SetFocus;
  end;
end;

end.
