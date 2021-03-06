unit LabTransactions;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxCollection, ExtCtrls, DB, MemDS, DBAccess, MyAccess, NxPageControl,
  Grids, DBGrids, CRGrid, StdCtrls, DBCtrls, Mask, ComCtrls, Menus, NxEdit,
  QuickRpt, QRCtrls, DateUtils, CRDBGrid1, Buttons, frxClass, frxDBSet;

type
  TLabTransForm = class(TForm)
    NxHeaderPanel1: TNxHeaderPanel;
    NxLinkLabel1: TNxLinkLabel;
    Panel1: TPanel;
    NxLinkLabel2: TNxLinkLabel;
    NxLinkLabel3: TNxLinkLabel;
    NxNotebook1: TNxNotebook;
    MeterCalibrationUpdate: TNxTabSheet;
    CalibrationHistory: TNxTabSheet;
    Edit1: TNxEdit;
    NxLinkLabel4: TNxLinkLabel;
    AccomplishmentPanel: TNxHeaderPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBComboBox;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBMemo1: TDBMemo;
    NxLinkLabel16: TNxLinkLabel;
    NxLinkLabel17: TNxLinkLabel;
    ComboBox1: TComboBox;
    NxLinkLabel5: TNxLinkLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    CalHistory: TMyQuery;
    CalHistoryDateTrans: TDateField;
    CalHistoryReading: TFloatField;
    CalHistoryMeterCondition: TStringField;
    CalHistoryAccuracy: TFloatField;
    CalHistoryCalibrationSeal1: TStringField;
    CalHistoryCalibrationSeal2: TStringField;
    CalHistorySerialNumber: TStringField;
    CalHistoryBrand: TStringField;
    CalHistoryType: TStringField;
    CalHistoryAmphere: TStringField;
    dsCalHistory: TMyDataSource;
    CalOptionsPanel: TNxHeaderPanel;
    Label8: TLabel;
    DateFrom: TDateTimePicker;
    DateTo: TDateTimePicker;
    NxLinkLabel7: TNxLinkLabel;
    RadioGroup1: TRadioGroup;
    NxButton1: TNxButton;
    NxLinkLabel6: TNxLinkLabel;
    PrintPanel: TPanel;
    QuickRep1: TQuickRep;
    QRBand5: TQRBand;
    QRLabel43: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
    CalHistoryRemarks: TMemoField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    CalSign: TMyQuery;
    CalSignidCalSign: TLargeintField;
    CalSignPreparedBy: TStringField;
    CalSignPBPosition: TStringField;
    CalSignReceivedBy: TStringField;
    CalSignRBPosition: TStringField;
    NxLinkLabel8: TNxLinkLabel;
    SignPanel: TNxHeaderPanel;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    dsCalSign: TDataSource;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    NxLinkLabel9: TNxLinkLabel;
    NxLinkLabel10: TNxLinkLabel;
    SummaryBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    CRDBGrid1: TCRDBGrid1;
    CRDBGrid2: TCRDBGrid1;
    ShowDetailsPanel: TNxHeaderPanel;
    NxLinkLabel11: TNxLinkLabel;
    PopupMenu1: TPopupMenu;
    ShowDetails1: TMenuItem;
    CRDBGrid3: TCRDBGrid;
    NxLinkLabel12: TNxLinkLabel;
    MeterTest: TNxTabSheet;
    Panel2: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    DateTimePicker1: TDateTimePicker;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    NxLinkLabel13: TNxLinkLabel;
    CRDBGrid4: TCRDBGrid;
    Label13: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Label31: TLabel;
    Label32: TLabel;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    NxLinkLabel15: TNxLinkLabel;
    Panel3: TPanel;
    Label34: TLabel;
    Label33: TLabel;
    NxLinkLabel18: TNxLinkLabel;
    NxLinkLabel19: TNxLinkLabel;
    NxLinkLabel14: TNxLinkLabel;
    PopupMenu2: TPopupMenu;
    MeterTestSignPanel: TNxHeaderPanel;
    NxLinkLabel20: TNxLinkLabel;
    NxLinkLabel21: TNxLinkLabel;
    Label35: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    MTestSign: TMyQuery;
    dsMTestSign: TMyDataSource;
    MTestSignidmtestsign: TIntegerField;
    MTestSigncalibratedby: TStringField;
    MTestSignPBposition: TStringField;
    MTestSigncheckedby: TStringField;
    MTestSignCBposition: TStringField;
    MTestSignnotedby: TStringField;
    MTestSignNBposition: TStringField;
    MTsummaryPanel: TNxHeaderPanel;
    NxLinkLabel22: TNxLinkLabel;
    Label41: TLabel;
    MTDateFrom: TDateTimePicker;
    MTDateTo: TDateTimePicker;
    RadioGroup2: TRadioGroup;
    SpeedButton1: TSpeedButton;
    Refresh1: TMenuItem;
    N1: TMenuItem;
    PrintMeterTestResult1: TMenuItem;
    metertestreport: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    ViewLarge1: TMenuItem;
    N2: TMenuItem;
    MTsummaryreport: TfrxReport;
    PrintMeterTestSummary1: TMenuItem;
    frxDBDataset3: TfrxDBDataset;
    CheckBox1: TCheckBox;
    frxiso: TfrxDBDataset;
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure NxLinkLabel4Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure NxLinkLabel16Click(Sender: TObject);
    procedure NxLinkLabel17Click(Sender: TObject);
    procedure NxLinkLabel2Click(Sender: TObject);
    procedure ComboBox1CloseUp(Sender: TObject);
    procedure NxLinkLabel5Click(Sender: TObject);
    procedure NxLinkLabel3Click(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure NxLinkLabel7Click(Sender: TObject);
    procedure NxLinkLabel6Click(Sender: TObject);
    procedure NxLinkLabel1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NxLinkLabel8Click(Sender: TObject);
    procedure NxLinkLabel9Click(Sender: TObject);
    procedure NxLinkLabel10Click(Sender: TObject);
    procedure NxLinkLabel11Click(Sender: TObject);
    procedure ShowDetails1Click(Sender: TObject);
    procedure CRDBGrid1CellClick(Column: TColumn);
    procedure NxLinkLabel12Click(Sender: TObject);
    procedure NxLinkLabel13Click(Sender: TObject);
    procedure NxLinkLabel15Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
    procedure DateTimePicker1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit9KeyPress(Sender: TObject; var Key: Char);
    procedure Edit10KeyPress(Sender: TObject; var Key: Char);
    procedure Edit11KeyPress(Sender: TObject; var Key: Char);
    procedure Edit12KeyPress(Sender: TObject; var Key: Char);
    procedure Edit13KeyPress(Sender: TObject; var Key: Char);
    procedure Edit14KeyPress(Sender: TObject; var Key: Char);
    procedure Edit15KeyPress(Sender: TObject; var Key: Char);
    procedure Edit16KeyPress(Sender: TObject; var Key: Char);
    procedure Edit17KeyPress(Sender: TObject; var Key: Char);
    procedure NxLinkLabel18Click(Sender: TObject);
    procedure NxLinkLabel19Click(Sender: TObject);
    procedure NxLinkLabel14Click(Sender: TObject);
    procedure NxLinkLabel20Click(Sender: TObject);
    procedure NxLinkLabel21Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure PrintMeterTestResult1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure ViewLarge1Click(Sender: TObject);
    procedure PrintMeterTestSummary1Click(Sender: TObject);
    procedure NxLinkLabel22Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LabTransForm: TLabTransForm;

implementation

uses MeterData;

{$R *.dfm}

procedure TLabTransForm.CheckBox1Click(Sender: TObject);
{var
Total : Currency;
begin
if edit20.Text <> '' then
  total := StrToCurr(edit20.text)
else begin
    if checkbox1.State = cbchecked then
      Label34.Caption := 'Damage'
    else
      begin
          if (total >= 98) and (total <= 102) then
            begin Label34.caption := 'Passed'  ; end
          else if edit20.text = '' then
            begin Label34.caption := 'Result' end
          else
            begin Label34.caption := 'Failed'; end;
  end;
  end;
end;  }
begin

if checkbox1.State = cbchecked then
  Label34.Caption := 'Damaged'
else
  Label34.caption := 'Result';
end;

procedure TLabTransForm.ComboBox1CloseUp(Sender: TObject);
begin
  With MeterDataModule do
  case ComboBox1.ItemIndex of
  0 : begin
        MtInv.Close;
        MtInv.FilterSQL := 'Status = ''0''';
        MtInv.Open;
      end;
  1 : begin
        MtInv.Close;
        MtInv.FilterSQL := 'Status = ''6''';
        MtInv.Open;
      end;
  end;

end;

procedure TLabTransForm.CRDBGrid1CellClick(Column: TColumn);
begin
if ShowDetailsPanel.Visible = true then   begin
  with MeterDataModule do begin
  MTshowdetails.Close;
  MTshowdetails.ParamByName('serialnumber').Text := MeterDataModule.MtInvSerialNumber.Text;
  MTshowdetails.Open;
  end;
end;
end;

procedure TLabTransForm.DateTimePicker1KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    begin
     Key := #0;
     Perform(CM_DIALOGKEY,VK_TAB,0);
    end;
end;

procedure TLabTransForm.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;
end;

procedure TLabTransForm.Edit10KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    begin
     Key := #0;
     Perform(CM_DIALOGKEY,VK_TAB,0);
    end;
end;

procedure TLabTransForm.Edit11KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    begin
     Key := #0;
     Perform(CM_DIALOGKEY,VK_TAB,0);
    end;
end;

procedure TLabTransForm.Edit12KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    begin
     Key := #0;
     Perform(CM_DIALOGKEY,VK_TAB,0);
    end;
end;

procedure TLabTransForm.Edit13KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    begin
     Key := #0;
     Perform(CM_DIALOGKEY,VK_TAB,0);
    end;
end;

procedure TLabTransForm.Edit14KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    begin
     Key := #0;
     Perform(CM_DIALOGKEY,VK_TAB,0);
    end;
end;

procedure TLabTransForm.Edit15KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    begin
     Key := #0;
     Perform(CM_DIALOGKEY,VK_TAB,0);
    end;
end;

procedure TLabTransForm.Edit16KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    begin
     Key := #0;
     Perform(CM_DIALOGKEY,VK_TAB,0);
    end;
end;

procedure TLabTransForm.Edit17KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    begin
     Key := #0;
     Perform(CM_DIALOGKEY,VK_TAB,0);
    end;
end;

procedure TLabTransForm.Edit1Change(Sender: TObject);
begin
  if Edit1.Text = '' then
    begin
      Edit1.Text := 'Serial Number';
      Edit1.SelectAll;
      exit;
    end;
  With MeterDataModule do MtInv.FilterSQL := 'SerialNumber like '+QuotedStr('%'+Edit1.Text+'%');
end;

procedure TLabTransForm.Edit1Click(Sender: TObject);
begin
  Edit1.SelectAll;
end;

procedure TLabTransForm.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    begin
     Key := #0;
     Perform(CM_DIALOGKEY,VK_TAB,0);
    end;
end;

procedure TLabTransForm.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    begin
     Key := #0;
     Perform(CM_DIALOGKEY,VK_TAB,0);
    end;
end;

procedure TLabTransForm.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    begin
     Key := #0;
     Perform(CM_DIALOGKEY,VK_TAB,0);
    end;
end;

procedure TLabTransForm.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    begin
     Key := #0;
     Perform(CM_DIALOGKEY,VK_TAB,0);
    end;
end;

procedure TLabTransForm.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    begin
     Key := #0;
     Perform(CM_DIALOGKEY,VK_TAB,0);
    end;
end;

procedure TLabTransForm.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    begin
     Key := #0;
     Perform(CM_DIALOGKEY,VK_TAB,0);
    end;
end;

procedure TLabTransForm.Edit8KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    begin
     Key := #0;
     Perform(CM_DIALOGKEY,VK_TAB,0);
    end;
end;

procedure TLabTransForm.Edit9KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    begin
     Key := #0;
     Perform(CM_DIALOGKEY,VK_TAB,0);
    end;
end;

procedure TLabTransForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   MeterDataModule.MtInv.Close;
   Action := caFree;
   LabTransForm := Nil;
end;

procedure TLabTransForm.FormShow(Sender: TObject);
begin
  NxLinkLabel2Click(Self);
  LabTransForm.Height := 410;
end;

procedure TLabTransForm.NxButton1Click(Sender: TObject);
begin
  CalHistory.Close;
  case RadioGroup1.ItemIndex of
   0 : CalHistory.FilterSQL := 'DateTrans between '+QuotedStr(FormatDateTime('YYYY-MM-DD',DateFrom.Date))+' and '+
                                                    QuotedStr(FormatDateTime('YYYY-MM-DD',DateTo.Date))+' and '+
                               'trim(transdesc) = ''CALIBRATION NEW''';
   1 : CalHistory.FilterSQL := 'DateTrans between '+QuotedStr(FormatDateTime('YYYY-MM-DD',DateFrom.Date))+' and '+
                                                    QuotedStr(FormatDateTime('YYYY-MM-DD',DateTo.Date))+' and '+
                               'trim(transdesc) = ''CALIBRATION REPAIR''';
  end;
  CalHistory.Open;

end;

procedure TLabTransForm.NxLinkLabel10Click(Sender: TObject);
begin
  CalSign.Cancel;
  SignPanel.Visible := False;
end;

procedure TLabTransForm.NxLinkLabel11Click(Sender: TObject);
begin
  //CRDBGrid1.Enabled := True;
  ShowDetailsPanel.Visible := False;
  LabTransForm.Height := 410;
end;

procedure TLabTransForm.NxLinkLabel12Click(Sender: TObject);
begin
NxLinkLabel11Click(self);
NxNotebook1.ActivePageIndex := 2;
LabTransForm.Height := 550;
DateTimePicker1.Date := now;
label34.Caption := 'Result';

MeterDataModule.MtTest.Close;
MeterDataModule.MtTest.open;

end;

procedure TLabTransForm.NxLinkLabel13Click(Sender: TObject);
begin
if edit5.Text = '' then
begin  MessageDlg('Enter Serial Number.....', mtError, [mbOK], 0);end else
with MeterDataModule do begin
    master.Close;
    master.ParamByName('serialno').Text := edit5.Text;
    master.Open;
    If not master.IsEmpty then begin
      master.Open;
      edit2.Text := masterName.Text;
      edit3.Text := masterAddress.Text;
      edit4.Text := masterMeterBrand.Text;
      edit6.SetFocus;
    end else begin MessageDlg('No Record Found.....', mtInformation, [mbOK], 0); edit5.SetFocus; end;

end;
end;


procedure TLabTransForm.NxLinkLabel14Click(Sender: TObject);
begin
  MTestSign.Open;

  if MTestSign.IsEmpty then MTestSign.AppendRecord([]);

  MeterTestSignPanel.Left := 143;
  MeterTestSignPanel.Top  := 122;
  MeterTestSignPanel.BringToFront;
  MeterTestSignPanel.Visible := True;

  MTestSign.Edit;
  //DBEdit11.SetFocus;
end;

procedure TLabTransForm.NxLinkLabel15Click(Sender: TObject);
var
  //a   : string;
  F1  : Currency;
  F2  : Currency;
  F3  : Currency;
  T1  : Currency;
  Ave1  : Currency;
  L1  : Currency;
  L2  : Currency;
  L3  : Currency;
  T2  : Currency;
  Ave2  : Currency;
  Total : Currency;

begin
if (edit12.Text <> '') or (edit13.Text <> '') or (edit14.Text <> '' )or
   (edit15.Text <> '') or (edit16.Text <> '') or (edit17.Text <> '' )then begin

  F1   := StrToCurr(edit12.text);
  F2   := StrToCurr(edit13.Text);
  F3   := StrToCurr(edit14.Text);
  L1   := StrToCurr(edit15.Text);
  L2   := StrToCurr(edit16.Text);
  L3   := StrToCurr(edit17.Text);

  Ave1 := 00.70;
  Ave2 := 00.30;

  T1  := (((F1+F2+F3)/3)* Ave1);
  T2  := (((L1+L2+L3)/3)* Ave2);
  Total := T1+T2;

  Edit18.Text := (Format('%n', [T1]));
  Edit19.Text := (Format('%n', [T2]));
  Edit20.Text := (Format('%n', [Total]));

if (Total >= 98) and (Total <= 102) then
  begin Label34.caption := 'Passed'  ; end
else
  begin Label34.caption := 'Failed'; end;

end else begin MessageDlg('Incomplete Test Result.....', mtError, [mbOK], 0); end;




end;

procedure TLabTransForm.NxLinkLabel16Click(Sender: TObject);
begin
  With MeterDataModule do
    begin
       MtTrans.Post;
       MtInv.Edit;

       if MtTransMeterCondition.Text = 'GOOD' then begin
       MtInvStatus.Text := '2'; end
       else if MtTransMeterCondition.Text = 'REHUB' then begin
        MtInvStatus.Text := '6';
       end
       else MtInvStatus.Text := '4';


       MtInv.Post;
       MtInv.Refresh;
       MtTrans.Close;
       AccomplishmentPanel.Visible := False;
       CRDBGrid1.Enabled := True;
    end;
end;

procedure TLabTransForm.NxLinkLabel17Click(Sender: TObject);
begin
  MeterDataModule.MtTrans.Cancel;
  CRDBGrid1.Enabled := True;
  AccomplishmentPanel.Visible := False;
end;

procedure TLabTransForm.NxLinkLabel18Click(Sender: TObject);
begin
with MeterDataModule do
begin
  mttestnew.Close;
  mttestnew.SQL.Clear;
  mttestnew.sql.Add('insert into metertest');
  mttestnew.sql.Add(       '( mtestdate,  consumer,  address,  meterbrand,  serial,  reading,  type,  volts,  phase,  kh,  ta,  fl1,  fl2,  fl3,  fltotal,  ll1,  ll2,  ll3,  lltotal,  genave,  remarks)') ;
  mttestnew.SQL.Add('values (:mtestdate, :consumer, :address, :meterbrand, :serial, :reading, :type, :volts, :phase, :kh, :ta, :fl1, :fl2, :fl3, :fltotal, :ll1, :ll2, :ll3, :lltotal, :genave, :remarks)');

  mttestnew.Params.ParamByName('mtestdate').AsDate    := DateTimePicker1.Date;
  mttestnew.Params.ParamByName('consumer').text     := edit2.Text;
  mttestnew.Params.ParamByName('address').text      := edit3.Text;
  mttestnew.Params.ParamByName('meterbrand').text   := edit4.Text;
  mttestnew.Params.ParamByName('serial').text       := edit5.Text;
  mttestnew.Params.ParamByName('reading').text      := Edit6.Text;
  mttestnew.Params.ParamByName('type').Text         := edit7.Text;
  mttestnew.Params.ParamByName('volts').text        := edit8.Text;
  mttestnew.Params.ParamByName('phase').text        := edit9.Text;
  mttestnew.Params.ParamByName('kh').text           := edit10.Text;
  mttestnew.Params.ParamByName('ta').text           := edit11.Text;
  mttestnew.Params.ParamByName('fl1').text          := edit12.Text;
  mttestnew.Params.ParamByName('fl2').text          := edit13.Text;
  mttestnew.Params.ParamByName('fl3').text          := edit14.Text;
  mttestnew.Params.ParamByName('fltotal').text       := edit18.Text;
  mttestnew.Params.ParamByName('ll1').text          := edit15.Text;
  mttestnew.Params.ParamByName('ll2').text          := edit16.Text;
  mttestnew.Params.ParamByName('ll3').text          := edit17.Text;
  mttestnew.Params.ParamByName('lltotal').text       := edit19.Text;
  mttestnew.Params.ParamByName('genave').text       := edit20.Text;
  mttestnew.Params.ParamByName('remarks').text      := label34.Caption;

  if (MessageDlg('Confirm Save?...', mtConfirmation, [mbYes, mbCancel], 0) = mrYes) then  begin
  mttestnew.execute;
  mttestnew.Close;
  MeterDataModule.Mttest.Close;
  MeterDataModule.MtTest.Open;
  end;
end;
end;

procedure TLabTransForm.NxLinkLabel19Click(Sender: TObject);
begin
DateTimePicker1.Date  := now;
edit2.Text := '';
edit3.Text := '';
edit4.Text := '';
edit5.Text := '';
Edit6.Text := '';
edit7.Text := '';
edit8.Text := '';
edit9.Text := '';
edit10.Text := '';
edit11.Text := '';
edit12.Text := '';
edit13.Text := '';
edit14.Text := '';
edit18.Text := '';
edit15.Text := '';
edit16.Text := '';
edit17.Text := '';
edit19.Text := '';
edit20.Text := '';
label34.Caption := 'Result';
end;

procedure TLabTransForm.NxLinkLabel1Click(Sender: TObject);
begin
  Close;
end;

procedure TLabTransForm.NxLinkLabel20Click(Sender: TObject);
begin
  MTestSign.Cancel;
  MeterTestSignPanel.Visible := False;
end;

procedure TLabTransForm.NxLinkLabel21Click(Sender: TObject);
begin
  MTestSign.Post;
  MeterTestSignPanel.Visible := False;
end;

procedure TLabTransForm.NxLinkLabel22Click(Sender: TObject);
begin
MTsummaryPanel.Visible:=false;
MTsummaryPanel.SendToBack;
end;

procedure TLabTransForm.NxLinkLabel2Click(Sender: TObject);
begin
 With MeterDataModule do
   begin
      MtInv.Close;
      MtInv.FilterSQL := 'Status = ''0''';
      MtInv.Open;
   end;
 NxNotebook1.ActivePageIndex := 0;
 Edit1.SetFocus;
 LabTransForm.Height := 410;
end;

procedure TLabTransForm.NxLinkLabel3Click(Sender: TObject);
begin
  NxLinkLabel11Click(self);
  LabTransForm.Height := 410;
  NxNotebook1.ActivePageIndex := 1;
end;

procedure TLabTransForm.NxLinkLabel4Click(Sender: TObject);
begin
   AccomplishmentPanel.Left := 204;
   AccomplishmentPanel.Top  := 58;
   AccomplishmentPanel.BringToFront;
   AccomplishmentPanel.Visible := True;

   DBEdit2.SetFocus;
   With MeterDataModule do
     begin
       AccomplishmentPanel.Caption := 'Serial '+MtInvSerialNumber.Text;
       MtTrans.Open;
       MtTrans.Append;
       MtTransidMeterInv.Text      := MtInvidMeterInv.Text;
       if MtInvStatus.Text = '0' then
       MtTransTransDesc.Text       := 'CALIBRATION NEW';

       if MtInvStatus.Text = '6' then
       MtTransTransDesc.Text       := 'CALIBRATION REPAIR';

       MtTransDateTrans.AsDateTime := Now;
       MtTransDateTrans.EditMask   := '!99/99/00;1;_';
       MtTransMeterCondition.Text  := 'GOOD';
     end;
   CRDBGrid1.Enabled := False;
end;

procedure TLabTransForm.NxLinkLabel5Click(Sender: TObject);
begin
  DateFrom.Date := StartOfTheMonth(Now);
  DateTo.Date   := EndOfTheMonth(Now);
  CalOptionsPanel.Left := 177;
  CalOptionsPanel.Top  := 50;
  CalOptionsPanel.BringToFront;
  CalOptionsPanel.Visible := True;
end;

procedure TLabTransForm.NxLinkLabel6Click(Sender: TObject);
begin
  if CalHistory.Active = False then
    begin
      MessageDlg('No records were selected', mtError, [mbOK], 0);
      exit;
    end;

  if CalHistory.IsEmpty then
    begin
      MessageDlg('No records to print', mtError, [mbOK], 0);
      exit;
    end;

  case RadioGroup1.ItemIndex of
    0 : QRLabel40.Caption := 'CALIBRATION REPORT - NEW METERS';
    1 : QRLabel40.Caption := 'CALIBRATION REPORT - REPAIRED METERS';
  end;

  QRLabel39.Caption := 'PERIOD COVERED   '+DateToStr(DateFrom.Date)+' - '+DateToStr(DateTo.Date);
  QuickRep1.Preview;

end;

procedure TLabTransForm.NxLinkLabel7Click(Sender: TObject);
begin
  CalOptionsPanel.Visible := False;
end;

procedure TLabTransForm.NxLinkLabel8Click(Sender: TObject);
begin
  NxLinkLabel11Click(self);
  LabTransForm.Height := 410;
  NxNotebook1.ActivePageIndex := 1;
  CalSign.Open;

  if CalSign.IsEmpty then CalSign.AppendRecord([]);

  SignPanel.Left := 243;
  SignPanel.Top  := 132;
  SignPanel.BringToFront;
  SignPanel.Visible := True;

  CalSign.Edit;
  DBEdit7.SetFocus;
end;

procedure TLabTransForm.NxLinkLabel9Click(Sender: TObject);
begin
  CalSign.Post;
  SignPanel.Visible := False;
end;

procedure TLabTransForm.PrintMeterTestResult1Click(Sender: TObject);
begin
  MeterdataModule.Qisonumber.Close;
  MeterdataModule.Qisonumber.ParamByName('rtype').Text := 'Meter Test';
  MeterdataModule.Qisonumber.Open;

  metertestreport.ShowReport;
end;

procedure TLabTransForm.PrintMeterTestSummary1Click(Sender: TObject);
begin
MTsummaryPanel.BringToFront;
MTsummaryPanel.Top  := 122;
MTsummaryPanel.Left := 143;
MTsummaryPanel.Visible := true;
MTDateFrom.Date := StartOfTheMonth(Now);
MTDateTo.Date := EndOfTheMonth(Now);
end;

procedure TLabTransForm.Refresh1Click(Sender: TObject);
begin
MeterDataModule.MTtest.Close;
MeterDataModule.MTtest.Open;
end;

procedure TLabTransForm.ShowDetails1Click(Sender: TObject);
begin
   LabTransForm.Height := 550;
   ShowDetailsPanel.Left := 8;
   ShowDetailsPanel.Top  := 390;
   ShowDetailsPanel.BringToFront;
   ShowDetailsPanel.Visible := True;

{if Master.Active = True then
if Master.IsEmpty then
begin
MessageDlg('No service history to view...', mtError, [mbOK], 0);
exit;
end;     }
with MeterDataModule do begin
MTshowdetails.Close;
MTshowdetails.ParamByName('serialnumber').Text := MeterDataModule.MtInvSerialNumber.Text;
MTshowdetails.Open;
end;

end;

procedure TLabTransForm.SpeedButton1Click(Sender: TObject);
var
Memo5 : TfrxMemoView ;
begin
Memo5       := MTsummaryreport.FindComponent('Memo5') as TfrxMemoView;
Memo5.Text  := 'Period Covered : '+ DateToStr(MTDateFrom.Date) + ' - ' + DateToStr(MTDateTo.Date);

MTestSign.Close;
with MeterDataModule do
begin
  MeterdataModule.MTsummary.Close;
  case RadioGroup2.ItemIndex of
   0 : MTsummary.FilterSQL := 'mTestDate between '+QuotedStr(FormatDateTime('YYYY-MM-DD',MTDateFrom.Date))+' and '+
                                                   QuotedStr(FormatDateTime('YYYY-MM-DD',MTDateTo.Date));
   1 : MTsummary.FilterSQL := 'mTestDate between '+QuotedStr(FormatDateTime('YYYY-MM-DD',MTDateFrom.Date))+' and '+
                                                   QuotedStr(FormatDateTime('YYYY-MM-DD',MTDateTo.Date))+' and '+
                                                   'trim(remarks) = ''Passed''';
   2 : MTsummary.FilterSQL := 'mTestDate between '+QuotedStr(FormatDateTime('YYYY-MM-DD',MTDateFrom.Date))+' and '+
                                                   QuotedStr(FormatDateTime('YYYY-MM-DD',MTDateTo.Date))+' and '+
                                                   'trim(remarks) = ''Failed''';
   3 : MTsummary.FilterSQL := 'mTestDate between '+QuotedStr(FormatDateTime('YYYY-MM-DD',MTDateFrom.Date))+' and '+
                                                   QuotedStr(FormatDateTime('YYYY-MM-DD',MTDateTo.Date))+' and '+
                                                   'trim(remarks) = ''Damaged''';
  end;
  MeterdataModule.MTsummary.Open;
end;

MTestSign.Open;
MTsummaryreport.ShowReport;
end;

procedure TLabTransForm.ViewLarge1Click(Sender: TObject);
begin
if CRDBGrid4.Height = 198 then
  begin
    CRDBGrid4.Height := 488;
  end else
  begin
    CRDBGrid4.Height := 198;
  end;




end;

end.

