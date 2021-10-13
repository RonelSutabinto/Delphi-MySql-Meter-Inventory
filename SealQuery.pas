unit SealQuery;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxCollection, Grids, DBGrids, CRGrid, DB, DBAccess, MyAccess, MemDS,
  StdCtrls, NxEdit, CRDBGrid1;

type
  TSealQueryForm = class(TForm)
    NxHeaderPanel1: TNxHeaderPanel;
    NxLinkLabel1: TNxLinkLabel;
    Edit1: TNxEdit;
    SInq: TMyQuery;
    SInqidSealInv: TLargeintField;
    SInqidTechCrew: TFloatField;
    SInqSealNumber: TStringField;
    SInqStatus: TStringField;
    SInqDateInst: TDateField;
    SInqMeterBrand: TStringField;
    SInqSerialNumber: TStringField;
    SInqidSealBatch: TFloatField;
    SInqCode: TFloatField;
    SInqname: TStringField;
    SInqaddress: TStringField;
    dsSInq: TMyDataSource;
    SInqcrew: TStringField;
    CRDBGrid1: TCRDBGrid1;
    procedure Edit1Change(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure NxLinkLabel1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SealQueryForm: TSealQueryForm;

implementation

uses MeterData;

{$R *.dfm}

procedure TSealQueryForm.Edit1Change(Sender: TObject);
begin
  if Edit1.Text = '' then
    begin
      Edit1.Text := 'Search Seal Number';
      Edit1.SelectAll;
      exit;
    end;
end;

procedure TSealQueryForm.Edit1Click(Sender: TObject);
begin
  Edit1.SelectAll;
end;

procedure TSealQueryForm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      SInq.Close;
      SInq.ParamByName('SealNumber').Text := '%'+Edit1.Text+'%';
      SInq.Open;
    end;
end;

procedure TSealQueryForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  SealQueryForm := Nil;
end;

procedure TSealQueryForm.NxLinkLabel1Click(Sender: TObject);
begin
  Close;
  SInq.Close;
end;

end.
