unit MeterQuery;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBAccess, MyAccess, MemDS, StdCtrls, ExtCtrls, NxCollection,
  Grids, DBGrids, CRGrid, NxEdit, CRDBGrid1;

type
  TMeterQueryForm = class(TForm)
    NxHeaderPanel1: TNxHeaderPanel;
    NxLinkLabel1: TNxLinkLabel;
    QueryOption: TRadioGroup;
    Edit1: TNxEdit;
    Master: TMyQuery;
    MyConnection1: TMyConnection;
    MasterCode: TIntegerField;
    MasterArea: TStringField;
    MasterBook: TStringField;
    MasterSequence: TStringField;
    MasterAccountNumber: TStringField;
    MasterName: TStringField;
    MasterAddress: TStringField;
    MasterRateCode: TStringField;
    MasterConsCode: TStringField;
    MasterConnCode: TStringField;
    MasterTransformer: TStringField;
    MasterMeterBrand: TStringField;
    MasterSerial: TStringField;
    MasterMultiplier: TFloatField;
    MasterNewConnectionDate: TDateField;
    MasterReconnectionDate: TDateField;
    MasterDisconnectionDate: TDateField;
    MasterPreviousReadingDate: TDateField;
    MasterPresentReadingDate: TDateField;
    MasterPreviousReadingKWH: TFloatField;
    MasterPresentReadingKWH: TFloatField;
    MasterDiff: TFloatField;
    MasterDemand: TFloatField;
    MasterFlatRateWattage: TFloatField;
    MasterFeedBackCode: TStringField;
    MasterCM: TStringField;
    MasterCMMultiplier: TFloatField;
    MasterCMPreviousReadingKWH: TFloatField;
    MasterCMPresentReadingKWH: TFloatField;
    MasterCMKilowattHour: TFloatField;
    MasterCMDemand: TFloatField;
    MasterKilowattHour: TFloatField;
    MasterKilowattUsed: TFloatField;
    MasterGenSysCharge: TFloatField;
    MasterHostCommCharge: TFloatField;
    MasterForexCharge: TFloatField;
    MasterTCDemandCharge: TFloatField;
    MasterTCTransSystemCharge: TFloatField;
    MasterSystemLossCharge: TFloatField;
    MasterDCDemandCharge: TFloatField;
    MasterDCDistributionCharge: TFloatField;
    MasterSCRetCustCharge: TFloatField;
    MasterSCSupplySysCharge: TFloatField;
    MasterMCRetailCustCharge: TFloatField;
    MasterMCSystemCharge: TFloatField;
    MasterUCNPCStrandedDebts: TFloatField;
    MasterUCNPCStrandedContCost: TFloatField;
    MasterUCDUStrandedContCost: TFloatField;
    MasterUCME: TFloatField;
    MasterUCEqTaxesAndRoyalties: TFloatField;
    MasterUCEC: TFloatField;
    MasterUCCrossSubRemoval: TFloatField;
    MasterICCrossSubsidyCharge: TFloatField;
    MasterPowerActRateRed: TFloatField;
    MasterLifelineDiscSubs: TFloatField;
    MasterLoanCondo: TFloatField;
    MasterTransformerRental: TFloatField;
    MasterOCCode1: TStringField;
    MasterOCAmount1: TFloatField;
    MasterOCMo1: TFloatField;
    MasterOCTotal1: TFloatField;
    MasterOCCode2: TStringField;
    MasterOCAmount2: TFloatField;
    MasterOCMo2: TFloatField;
    MasterOCTotal2: TFloatField;
    MasterOCCode3: TStringField;
    MasterOCAmount3: TFloatField;
    MasterOCMo3: TFloatField;
    MasterOCTotal3: TFloatField;
    MasterTotalBill: TFloatField;
    MasterBillNumber: TStringField;
    MasterOEBRNumber: TStringField;
    MasterBillMonth: TStringField;
    MasterDeleteRemarks: TStringField;
    MasterPoleNumber: TStringField;
    MasterFeederNumber: TStringField;
    MasterXFormerQty: TIntegerField;
    MasterXFormerKVA: TStringField;
    MasterAge30: TFloatField;
    MasterAge60: TFloatField;
    MasterAge90: TFloatField;
    MasterAge120: TFloatField;
    MasterAgeOver120: TFloatField;
    MasterAgeTotal: TFloatField;
    MasterTotalPayments: TFloatField;
    MasterARBalance: TFloatField;
    MasterLCCustMo: TFloatField;
    MasterPrevYearAdjPowerCost: TFloatField;
    MasterSysLossUnderRecov: TFloatField;
    MasterVATDisc: TFloatField;
    MasterVATDiscAmt: TFloatField;
    MasterVATDistDiscAmt: TFloatField;
    MasterVATGenCoDiscAmt: TFloatField;
    MasterVATTransCoDiscAmt: TFloatField;
    MasterVATSystemLossDiscAmt: TFloatField;
    MasterVATDist: TFloatField;
    MasterVATGenCO: TFloatField;
    MasterVATTransCO: TFloatField;
    MasterVATSystemLossGenCO: TFloatField;
    MasterVATSystemLossTransCO: TFloatField;
    MasterVAT: TFloatField;
    MasterDiffBillPerKwhr: TFloatField;
    MasterDiffBillPerKW: TFloatField;
    MasterDiffBillPerCust: TFloatField;
    MasterMCC: TFloatField;
    MasterPKVROebrNumber: TStringField;
    MasterPKVRBillMonth: TStringField;
    MasterPKVRAmount: TFloatField;
    MasterSCDisc: TFloatField;
    MasterWRateCode: TStringField;
    MasterSCAmt4Disc: TFloatField;
    MasterDWLEN1: TFloatField;
    MasterDWLEN2: TFloatField;
    Label2: TLabel;
    Label3: TLabel;
    dsMaster: TMyDataSource;
    dsServiceHistory: TMyDataSource;
    ServiceHistory: TMyQuery;
    ServiceHistoryDate: TDateField;
    ServiceHistoryaccountnumber: TStringField;
    ServiceHistoryServiceType: TStringField;
    ServiceHistoryTransactionDetail: TStringField;
    Meter: TMyQuery;
    dsMeter: TMyDataSource;
    Meterdatetrans: TDateField;
    Meteraccountnumber: TStringField;
    Metername: TStringField;
    Meterbrand: TStringField;
    Meterserialnumber: TStringField;
    Metertransdesc: TStringField;
    Meterterminalseal: TStringField;
    Metercalibrationseal1: TStringField;
    Metercalibrationseal2: TStringField;
    NxLinkLabel2: TNxLinkLabel;
    Duplicate: TMyQuery;
    dsDuplicate: TMyDataSource;
    NxLinkLabel3: TNxLinkLabel;
    Duplicatecode: TIntegerField;
    Duplicateaccountnumber: TStringField;
    Duplicatename: TStringField;
    Duplicateratecode: TStringField;
    Duplicateconncode: TStringField;
    Duplicateserial: TStringField;
    CRDBGrid1: TCRDBGrid1;
    CRDBGrid2: TCRDBGrid1;
    CRDBGrid3: TCRDBGrid1;
    Meterreading: TFloatField;
    procedure NxLinkLabel1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QueryOptionClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure CRDBGrid1DblClick(Sender: TObject);
    procedure NxLinkLabel3Click(Sender: TObject);
    procedure NxLinkLabel2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MeterQueryForm: TMeterQueryForm;

implementation

uses MeterData;

{$R *.dfm}

procedure TMeterQueryForm.CRDBGrid1DblClick(Sender: TObject);
begin
  if Master.Active = True then
     if Master.IsEmpty then
       begin
         MessageDlg('No service history to view...', mtError, [mbOK], 0);
         exit;
       end;

  ServiceHistory.Close;
  ServiceHistory.ParamByName('Code').Text := CRDBGrid1.DataSource.DataSet.FieldByName('Code').Text;
  ServiceHistory.Open;

  if QueryOption.ItemIndex >= 0 then
  begin

  Meter.Close;

  case QueryOption.ItemIndex of
  0 : Meter.FilterSQL  := 'SerialNumber = '+QuotedStr(CRDBGrid1.DataSource.DataSet.FieldByName('Serial').Text);
  1 : Meter.FilterSQL  := 'AccountNumber = '+QuotedStr(CRDBGrid1.DataSource.DataSet.FieldByName('AccountNumber').Text);
  2 : Meter.FilterSQL  := 'name like '+QuotedStr(CRDBGrid1.DataSource.DataSet.FieldByName('name').Text+'%');
  end;

  Meter.Open;

  end;

end;

procedure TMeterQueryForm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
   begin
     if QueryOption.ItemIndex < 0 then
       begin
        MessageDlg('Select a search option', mtInformation, [mbOK], 0);
        exit;
       end;

     Master.Close;
     Meter.Close;
          case QueryOption.ItemIndex of
          0 : begin
               Master.FilterSQL := 'Serial = '+QuotedStr(Edit1.Text);
               Meter.FilterSQL  := 'SerialNumber = '+QuotedStr(Edit1.Text);
              end;
          1 : begin
               Master.FilterSQL := 'AccountNumber = '+QuotedStr(Edit1.Text);
               Meter.FilterSQL  := 'AccountNumber = '+QuotedStr(Edit1.Text);
              end;
          2 : begin
               Master.FilterSQL := 'Name like '+QuotedStr(Edit1.Text);
               Meter.FilterSQL  := 'Name like '+QuotedStr(Edit1.Text);
              end;
          end;
     Master.Open;
     Meter.Open;
   end;
end;

procedure TMeterQueryForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  MeterQueryForm := Nil;
end;

procedure TMeterQueryForm.FormShow(Sender: TObject);
begin
MyConnection1.Connected := false;
if MeterQueryForm.Caption = 'DMO Meter Query Form' then
  begin
      MyConnection1.server := 'server';
      MyConnection1.Database := 'zaneco';
  end else if MeterQueryForm.Caption = 'PAO Meter Query Form' then begin
      MyConnection1.server := 'serverpao';
      MyConnection1.Database := 'zaneco';
  end else if MeterQueryForm.Caption = 'SAO Meter Query Form'  then begin
      MyConnection1.server := 'serversao';
      MyConnection1.Database := 'zaneco';
    end else if MeterQueryForm.Caption = 'LAO Meter Query Form'  then begin
      MyConnection1.server := 'serverlao';
      MyConnection1.Database := 'zaneco';
    end;
    MyConnection1.Connected := TRUE;
  end;

procedure TMeterQueryForm.NxLinkLabel1Click(Sender: TObject);
begin
  Close;
end;

procedure TMeterQueryForm.NxLinkLabel2Click(Sender: TObject);
begin
  CRDBGrid1.DataSource := dsDuplicate;
  Duplicate.Open;
end;

procedure TMeterQueryForm.NxLinkLabel3Click(Sender: TObject);
begin
  CRDBGrid1.DataSource := dsMaster;
  Master.Close;
  Duplicate.Close;
end;

procedure TMeterQueryForm.QueryOptionClick(Sender: TObject);
begin
  case QueryOption.ItemIndex of
   0 : Edit1.Text := 'Search by Meter Number';
   1 : Edit1.Text := 'Search by Account Number';
   2 : Edit1.Text := 'Search by Consumer Name';
  end;
  Edit1.SetFocus;
  Edit1.SelectAll;
end;

end.
