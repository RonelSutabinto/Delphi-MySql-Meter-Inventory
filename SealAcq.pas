unit SealAcq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, CRGrid, NxCollection, Mask, DBCtrls, MyAccess,
  NxEdit, CRDBGrid1;

type
  TSealAcqForm = class(TForm)
    NxHeaderPanel1: TNxHeaderPanel;
    NxLinkLabel1: TNxLinkLabel;
    Edit1: TNxEdit;
    NxLinkLabel2: TNxLinkLabel;
    NxLinkLabel3: TNxLinkLabel;
    NxLinkLabel4: TNxLinkLabel;
    MeterSealPanel: TNxHeaderPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    NxLinkLabel9: TNxLinkLabel;
    NxLinkLabel8: TNxLinkLabel;
    SupplierPanel: TNxHeaderPanel;
    NxLinkLabel11: TNxLinkLabel;
    NxLinkLabel12: TNxLinkLabel;
    NxLinkLabel10: TNxLinkLabel;
    CRDBGrid1: TCRDBGrid1;
    CRDBGrid3: TCRDBGrid1;
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure NxLinkLabel2Click(Sender: TObject);
    procedure NxLinkLabel3Click(Sender: TObject);
    procedure NxLinkLabel9Click(Sender: TObject);
    procedure NxLinkLabel8Click(Sender: TObject);
    procedure NxLinkLabel4Click(Sender: TObject);
    procedure NxLinkLabel1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure NxLinkLabel10Click(Sender: TObject);
    procedure NxLinkLabel12Click(Sender: TObject);
    procedure NxLinkLabel11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SealAcqForm: TSealAcqForm;

implementation

uses MeterData;

{$R *.dfm}

procedure TSealAcqForm.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;
end;

procedure TSealAcqForm.DBEdit7Exit(Sender: TObject);
begin
  With MeterDataModule do
   begin
     SLAcqTotalPcs.AsInteger := SLAcqBoxes.AsInteger * SLAcqPcs.AsInteger;
   end;
end;

procedure TSealAcqForm.Edit1Change(Sender: TObject);
begin
  if Edit1.Text = '' then
    begin
      Edit1.Text := 'Search Supplier';
      Edit1.SelectAll;
      exit;
    end;
  With MeterDataModule do SLAcq.FilterSQL := 'supplier like '+QuotedStr('%'+Edit1.Text+'%');
end;

procedure TSealAcqForm.Edit1Click(Sender: TObject);
begin
  Edit1.SelectAll;
end;

procedure TSealAcqForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  MeterDataModule.SLAcq.Close;
  SealAcqForm := Nil;
end;

procedure TSealAcqForm.FormShow(Sender: TObject);
begin
 with MeterDataModule do SLAcq.Open;
end;

procedure TSealAcqForm.NxLinkLabel10Click(Sender: TObject);
begin
  with MeterDataModule do
    begin
      Supplier.Open;
      if Supplier.IsEmpty then
        begin
          MessageDlg('No supplier on file...', mtInformation, [mbOK], 0);
          Supplier.Close;
          exit;
        end;
    end;
  SupplierPanel.Left := 73;
  SupplierPanel.Top  := 40;
  SupplierPanel.BringToFront;
  SupplierPanel.Visible := True;
end;

procedure TSealAcqForm.NxLinkLabel11Click(Sender: TObject);
begin
  WitH MeterDataModule do
    begin
      SLAcqSupplier.Text := Suppliersupplier.Text;
      SLAcqAddress.Text  := Supplieraddress.Text;
      Supplier.Close;
      SupplierPanel.Visible := False;
    end;
end;

procedure TSealAcqForm.NxLinkLabel12Click(Sender: TObject);
begin
  MeterDataModule.Supplier.Close;
  SupplierPanel.Visible := False;
end;

procedure TSealAcqForm.NxLinkLabel1Click(Sender: TObject);
begin
  Close;
end;

procedure TSealAcqForm.NxLinkLabel2Click(Sender: TObject);
begin
  MeterSealPanel.Left := 87;
  MeterSealPanel.Top  := 84;
  MeterSealPanel.BringToFront;
  MeterSealPanel.Visible := True;

  With MeterDataModule do
    begin
      DBEdit1.SetFocus;
      SLAcqDateAcquired.EditMask := '!99/99/00;1;_';
      SLAcq.Append;
    end;
end;

procedure TSealAcqForm.NxLinkLabel3Click(Sender: TObject);
begin
  MeterSealPanel.Left := 87;
  MeterSealPanel.Top  := 84;
  MeterSealPanel.BringToFront;
  MeterSealPanel.Visible := True;

  With MeterDataModule do
    begin
      SLAcqDateAcquired.EditMask := '!99/99/00;1;_';
      SLAcq.Edit;
      DBEdit1.SetFocus;
    end;
end;

procedure TSealAcqForm.NxLinkLabel4Click(Sender: TObject);
Var SealBatchAcq : TMyQuery;

begin
  SealBatchAcq := TMyQuery.Create(self);
  SealBatchAcq.Connection := MeterDataModule.MyConnection1;

  SealBatchAcq.SQL.Clear;
  SealBatchAcq.SQL.Add('Select * from sealbatch where idsealacq = :idsealacq');
  SealBatchAcq.ParamByName('idsealacq').Text := MeterDataModule.SLAcqidsealacq.Text;
  SealBatchAcq.Open;

  if not SealBatchAcq.IsEmpty then
    begin
      MessageDlg('Cannot delete that record... '+#13+#10+'Seals were already assigned to authorized personnel...', mtError, [mbOK], 0);
      SealBatchAcq.Close;
      exit;
    end;

  if (MessageDlg('Confirm delete.', mtConfirmation, [mbYes, mbCancel], 0) = mrCancel) then exit;

  MeterDataModule.SLAcq.Delete;
end;

procedure TSealAcqForm.NxLinkLabel8Click(Sender: TObject);
begin
  MeterDataModule.SLAcq.Cancel;
  MeterSealPanel.Visible := False;
end;

procedure TSealAcqForm.NxLinkLabel9Click(Sender: TObject);
begin
  MeterDataModule.SLAcq.Post;
  MeterSealPanel.Visible := False;
end;

end.


