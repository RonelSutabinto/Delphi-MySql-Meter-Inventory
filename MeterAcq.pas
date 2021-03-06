unit MeterAcq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxCollection, StdCtrls, NxEdit, Grids, DBGrids, CRGrid, Mask, DBCtrls,
  DB, MemDS, DBAccess, MyAccess, ExtCtrls, CRDBGrid1;

type
  TMeterAcqForm = class(TForm)
    NxHeaderPanel1: TNxHeaderPanel;
    NxLinkLabel1: TNxLinkLabel;
    Edit1: TNxEdit;
    NxLinkLabel2: TNxLinkLabel;
    NxLinkLabel3: TNxLinkLabel;
    NxLinkLabel4: TNxLinkLabel;
    Edit2: TNxEdit;
    NxLinkLabel5: TNxLinkLabel;
    NxLinkLabel6: TNxLinkLabel;
    NxLinkLabel7: TNxLinkLabel;
    MeterAcqPanel: TNxHeaderPanel;
    NxLinkLabel8: TNxLinkLabel;
    NxLinkLabel9: TNxLinkLabel;
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
    NxLinkLabel10: TNxLinkLabel;
    SupplierPanel: TNxHeaderPanel;
    NxLinkLabel11: TNxLinkLabel;
    NxLinkLabel12: TNxLinkLabel;
    MeterInvPanel: TNxHeaderPanel;
    CommonMeterBox: TGroupBox;
    CommonMB: TEdit;
    NxLinkLabel14: TNxLinkLabel;
    Label5: TLabel;
    SerialPrefix: TEdit;
    ComboBox1: TComboBox;
    Label10: TLabel;
    Label11: TLabel;
    ComboBox2: TComboBox;
    NxLinkLabel15: TNxLinkLabel;
    NxLinkLabel16: TNxLinkLabel;
    NxLinkLabel17: TNxLinkLabel;
    MeterBrandPanel: TNxHeaderPanel;
    NxLinkLabel13: TNxLinkLabel;
    NxLinkLabel18: TNxLinkLabel;
    InsertMeterTransaction: TMyQuery;
    Panel1: TPanel;
    DBEdit10: TDBEdit;
    SCount: TEdit;
    NextMeterLink: TNxLinkLabel;
    DBEdit13: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit11: TDBEdit;
    Label8: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    CRDBGrid1: TCRDBGrid1;
    CRDBGrid2: TCRDBGrid1;
    CRDBGrid3: TCRDBGrid1;
    CRDBGrid4: TCRDBGrid1;
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure NxLinkLabel10Click(Sender: TObject);
    procedure NxLinkLabel2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NxLinkLabel3Click(Sender: TObject);
    procedure NxLinkLabel4Click(Sender: TObject);
    procedure NxLinkLabel9Click(Sender: TObject);
    procedure NxLinkLabel8Click(Sender: TObject);
    procedure NxLinkLabel11Click(Sender: TObject);
    procedure NxLinkLabel12Click(Sender: TObject);
    procedure NxLinkLabel5Click(Sender: TObject);
    procedure NxLinkLabel15Click(Sender: TObject);
    procedure NextMeterLinkClick(Sender: TObject);
    procedure NxLinkLabel16Click(Sender: TObject);
    procedure NxLinkLabel17Click(Sender: TObject);
    procedure NxLinkLabel6Click(Sender: TObject);
    procedure NxLinkLabel14Click(Sender: TObject);
    procedure NxLinkLabel13Click(Sender: TObject);
    procedure NxLinkLabel18Click(Sender: TObject);
    procedure NxLinkLabel1Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
    procedure NxLinkLabel7Click(Sender: TObject);
    procedure SCountKeyPress(Sender: TObject; var Key: Char);
    procedure CRDBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MeterAcqForm: TMeterAcqForm;

implementation

uses MeterData, MODTOOLS;

{$R *.dfm}

procedure TMeterAcqForm.CRDBGrid1CellClick(Column: TColumn);
begin
  With MeterDataModule do MtInv.FilterSQL := 'IdAcq = '+QuotedStr(MtAcqidacq.Text);
end;

procedure TMeterAcqForm.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
   begin
     Perform(CM_DIALOGKEY,VK_TAB,0);
     key := #0;
   end;
end;

procedure TMeterAcqForm.Edit1Change(Sender: TObject);
begin
  if Edit1.Text = '' then
    begin
      Edit1.Text := 'Search Supplier';
      Edit1.SelectAll;
      exit;
    end;
  With MeterDataModule do MtAcq.FilterSQL := 'supplier like '+QuotedStr('%'+Edit1.Text+'%');
end;

procedure TMeterAcqForm.Edit1Click(Sender: TObject);
begin
  Edit1.SelectAll;
end;

procedure TMeterAcqForm.Edit2Change(Sender: TObject);
begin
  if Edit2.Text = '' then
    begin
      Edit2.Text := 'Search Meter Number';
      Edit2.SelectAll;
      MeterDataModule.MtInv.FilterSQL := 'IdAcq = '+QuotedStr(MeterDataModule.MtAcqidacq.Text);
      exit;
    end;
  MeterDataModule.MtInv.FilterSQL := 'serialnumber like '+QuotedStr('%'+edit2.Text+'%');
end;

procedure TMeterAcqForm.Edit2Click(Sender: TObject);
begin
  Edit2.SelectAll;
end;

procedure TMeterAcqForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  With MeterDataModule do
   begin
     MtAcq.Close;
     MTInv.Close;
   end;
  MeterAcqForm := Nil;
  Action       := caFree;
end;

procedure TMeterAcqForm.FormShow(Sender: TObject);
begin
 with MeterDataModule do
 begin
  MtAcq.Open;
  MtInv.FilterSQL := 'IdAcq = '+QuotedStr(MtAcqidacq.Text);
  MtInv.Open;
 end;
end;

procedure TMeterAcqForm.NextMeterLinkClick(Sender: TObject);
 Var I     : Integer;
     Sr    : String;
     SrNum : Integer;
     Srt   : String;
     DLen  : Integer;

begin
  With MeterDataModule do
    begin
      MtInvIdAcq.Text        := MtAcqidacq.Text;
      MtInv.Post;
      DLen := Length(DBEdit13.Text)-Length(SerialPrefix.Text);

      if StrToInt(SCount.Text) > 0 then
        begin
          Sr    := Copy(MtInvSerialNumber.Text,Length(SerialPrefix.Text)+1,Length(MtInvSerialNumber.Text)-Length(SerialPrefix.Text));
          SrNum := StrToInt(Sr) + 1;

          for I := srnum to srnum+StrToInt(SCount.Text)-2 do
            begin
              srt := IntToStr(I);
              Srt := JustStr(Srt,'0',DLen,1);
              MtInv.Append;
              MtInvIdAcq.Text        := MtAcqidacq.Text;
              MtInvBrand.Text        := CommonMB.Text;
              MtInvType.Text         := ComboBox1.Text;
              MtInvAmphere.Text      := ComboBox2.Text;
              MtInvSerialNumber.Text := SerialPrefix.Text + Srt;
              MtInvStatus.Text       := '0';
              MtInv.Post;
            end;
          SCount.Text := '0';
        end;

      MtInv.Append;
      MtInvBrand.Text        := CommonMB.Text;
      MtInvType.Text         := ComboBox1.Text;
      MtInvAmphere.Text      := ComboBox2.Text;
      MtInvSerialNumber.Text := SerialPrefix.Text;
      MtInvStatus.Text       := '0';

      DBEdit13.AutoSelect    := False;
      DBEdit13.SelStart      := Length(DBEdit13.Text);
      DBEdit13.SetFocus;
    end;
end;

procedure TMeterAcqForm.NxLinkLabel10Click(Sender: TObject);
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
  SupplierPanel.Left := 528;
  SupplierPanel.Top  := 26;
  SupplierPanel.BringToFront;
  SupplierPanel.Visible := True;
end;

procedure TMeterAcqForm.NxLinkLabel11Click(Sender: TObject);
begin
  WitH MeterDataModule do
    begin
      MtAcqSupplier.Text := Suppliersupplier.Text;
      MtAcqAddress.Text  := Supplieraddress.Text;
      Supplier.Close;
      SupplierPanel.Visible := False;
    end;
end;

procedure TMeterAcqForm.NxLinkLabel12Click(Sender: TObject);
begin
  MeterDataModule.Supplier.Close;
  SupplierPanel.Visible := False;
end;

procedure TMeterAcqForm.NxLinkLabel13Click(Sender: TObject);
begin
   CommonMB.Text := MeterDataModule.MBbrand.Text;
   MeterDataModule.MB.Close;
   MeterBrandPanel.Visible := False;
   SerialPrefix.SetFocus;
end;

procedure TMeterAcqForm.NxLinkLabel14Click(Sender: TObject);
begin
  with   MeterDataModule do
  begin

    MB.Open;

    if MB.IsEmpty then
     begin
     MessageDlg('There are no records to select from', mtError, [mbOK], 0);
     MB.Close;
     Exit;
     end;


      MeterBrandPanel.Left    := 444;
      MeterBrandPanel.Top     := 31;
      MeterBrandPanel.BringToFront;
      MeterBrandPanel.Visible := True;
      CRDBGrid4.SetFocus;

  end;

end;

procedure TMeterAcqForm.NxLinkLabel15Click(Sender: TObject);
begin
  With MeterDataModule do
    begin
      MtInv.Append;
      MtInvBrand.Text        := CommonMB.Text;
      MtInvType.Text         := ComboBox1.Text;
      MtInvAmphere.Text      := ComboBox2.Text;
      MtInvSerialNumber.Text := SerialPrefix.Text;
      MtInvStatus.Text       := '0';
      Panel1.Visible         := True;
      DBEdit13.AutoSelect    := False;
      DBEdit13.SelStart      := Length(DBEdit13.Text);
      DBEdit13.SetFocus;
    end;
end;

procedure TMeterAcqForm.NxLinkLabel16Click(Sender: TObject);
begin
  MeterDataModule.MtInv.Post;
  MeterInvPanel.Visible := False;
end;

procedure TMeterAcqForm.NxLinkLabel17Click(Sender: TObject);
begin
  MeterDataModule.MtInv.Cancel;
  MeterInvPanel.Visible := False;
end;

procedure TMeterAcqForm.NxLinkLabel18Click(Sender: TObject);
begin
   MeterDataModule.MB.Close;
   MeterBrandPanel.Visible := False;
end;

procedure TMeterAcqForm.NxLinkLabel1Click(Sender: TObject);
begin
  Close;
end;

procedure TMeterAcqForm.NxLinkLabel2Click(Sender: TObject);
begin
  MeterAcqPanel.Left := 268;
  MeterAcqPanel.Top  := 103;
  MeterAcqPanel.BringToFront;
  MeterAcqPanel.Visible := True;
  DBEdit1.SetFocus;
  MeterDataModule.MtAcqDateAcquired.EditMask := '!99/99/00;1;_';
  MeterDataModule.MtAcq.Append;
end;

procedure TMeterAcqForm.NxLinkLabel3Click(Sender: TObject);
begin
  MeterAcqPanel.Left := 268;
  MeterAcqPanel.Top  := 103;
  MeterAcqPanel.BringToFront;
  MeterAcqPanel.Visible := True;
  MeterDataModule.MtAcq.Edit;
  DBEdit1.SetFocus;
end;

procedure TMeterAcqForm.NxLinkLabel4Click(Sender: TObject);
begin
  With MeterDataModule do
    begin
      MtInv.Refresh;
      if not MtInv.IsEmpty then
         begin
           MessageDlg('Cannot delete that Acquisition... Detail is not empty...', mtError, [mbOK], 0);
           Exit;
         end;

       MessageDlg('Confirm delete..', mtWarning, [mbYes, mbCancel], 0);
       MtAcq.Delete;
     end;
end;

procedure TMeterAcqForm.NxLinkLabel5Click(Sender: TObject);
begin
  MeterInvPanel.Left    := 4;
  MeterInvPanel.Top     := 128;
  MeterInvPanel.BringToFront;
  MeterInvPanel.Visible := True;
  CommonMeterBox.Enabled := True;
  NextMeterLink.Enabled  := True;
  CommonMB.SetFocus;
end;

procedure TMeterAcqForm.NxLinkLabel6Click(Sender: TObject);
begin
  MeterInvPanel.Left     := 4;
  MeterInvPanel.Top      := 128;
  MeterInvPanel.BringToFront;
  MeterInvPanel.Visible  := True;
  Panel1.Visible         := True;
  CommonMeterBox.Enabled := False;
  NextMeterLink.Enabled  := False;
  DBEdit13.AutoSelect    := False;
  DBEdit13.SelStart      := Length(DbEdit13.Text);
  DBEdit13.SetFocus;
  MeterDataModule.MtInv.Edit;
end;

procedure TMeterAcqForm.NxLinkLabel7Click(Sender: TObject);
Var DelTrans : TMyQuery;

begin
  DelTrans            := TMyQuery.Create(Self);
  DelTrans.Connection := MeterDataModule.MyConnection1;

  DelTrans.SQL.Clear;
  DelTrans.SQL.Add('Select * from metertransaction where idmeterinv = :idmeterinv');
  DelTrans.ParamByName('idMeterInv').Text := MeterDataModule.MtInvidMeterInv.Text;
  DelTrans.Open;

  if DelTrans.RecordCount > 1 then
    begin
       MessageDlg('Cannot delete that meter.. More than one (1) transaction is already recorded in its history file..', mtError, [mbOK], 0);
       exit;
    end;

  DelTrans.Close;

  if (MessageDlg('Confirm delete', mtConfirmation, [mbYes, mbCancel], 0) = mrCancel) then exit;
  DelTrans.SQL.Clear;
  DelTrans.SQL.Add('delete from metertransaction where idmeterinv = :idmeterinv');
  DelTrans.ParamByName('idMeterInv').Text := MeterDataModule.MtInvidMeterInv.Text;
  DelTrans.Execute;
  MeterDataModule.MtInv.Delete;
end;

procedure TMeterAcqForm.NxLinkLabel8Click(Sender: TObject);
begin
  MeterDataModule.MtAcq.Cancel;
  MeterAcqPanel.Visible := False;
end;

procedure TMeterAcqForm.NxLinkLabel9Click(Sender: TObject);
begin
  MeterDataModule.MtAcq.Post;
  MeterAcqPanel.Visible := False;
end;

procedure TMeterAcqForm.SCountKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then if NextMeterLink.Enabled = true then NextMeterLinkClick(self);
end;

end.
