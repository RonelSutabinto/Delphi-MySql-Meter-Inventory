unit MeterInvLab;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Menus, StdCtrls, jpeg, ExtCtrls, NxCollection;

type
  TMeterTrans = class(TForm)
    MainMenu1: TMainMenu;
    Files1: TMenuItem;
    ransaction1: TMenuItem;
    Users1: TMenuItem;
    N1: TMenuItem;
    MeterQuqery1: TMenuItem;
    MeterAcquisition1: TMenuItem;
    SealAcquisition1: TMenuItem;
    N2: TMenuItem;
    Quit1: TMenuItem;
    MeterTransaction1: TMenuItem;
    LaboratoryTransaction1: TMenuItem;
    SealQuery1: TMenuItem;
    N3: TMenuItem;
    Image1: TImage;
    Image2: TImage;
    Panel1: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Label161: TLabel;
    Label162: TLabel;
    NxLabel34: TNxLabel;
    NxLabel1: TNxLabel;
    procedure Users1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MeterQuqery1Click(Sender: TObject);
    procedure Quit1Click(Sender: TObject);
    procedure MeterAcquisition1Click(Sender: TObject);
    procedure SealAcquisition1Click(Sender: TObject);
    procedure LaboratoryTransaction1Click(Sender: TObject);
    procedure MeterTransaction1Click(Sender: TObject);
    procedure SealQuery1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MeterTrans: TMeterTrans;

implementation

uses MeterUsers, MeterData, MeterInvIntro, MeterQuery, MeterAcq, SealAcq,
  LabTransactions, MSTrans, SealQuery;

{$R *.dfm}

procedure TMeterTrans.ComboBox1Change(Sender: TObject);
begin
{With MeterQueryForm do
if ComboBox1.ItemIndex = 1 then
  begin
      MyConnection1.server := 'server';
      MyConnection1.Username := 'root';
      MyConnection1.Password := 'blaise';
      MyConnection1.Database := 'zanecometer';
  end else if ComboBox1.ItemIndex = 2 then
  begin
      MyConnection1.server := 'serverpao';
      MyConnection1.Username := 'root';
      myconnection1.Password := 'blaise';
      MyConnection1.Database := 'zanecometer';
  end else if ComboBox1.ItemIndex = 3 then
  begin
      MyConnection1.server := 'serversao';
      MyConnection1.Username := 'root';
      myconnection1.Password := 'blaise';
      MyConnection1.Database := 'zanecometer';
    end else if ComboBox1.ItemIndex = 4 then
  begin
      MyConnection1.server := 'serverlao';
      MyConnection1.Username := 'root';
      myconnection1.Password := 'blaise';
      MyConnection1.Database := 'zanecometer';
    end;     }
end;

procedure TMeterTrans.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
  MeterTrans := Nil;
  IntroForm.Close;
end;

procedure TMeterTrans.LaboratoryTransaction1Click(Sender: TObject);
begin
  if not assigned(LabTransForm) then LabTransForm := TLabTransForm.Create(Self);
  LabTransForm.Show;
end;

procedure TMeterTrans.MeterAcquisition1Click(Sender: TObject);
begin
  if not assigned(MeterAcqForm) then MeterAcqForm := TMeterAcqForm.Create(Self);
  MeterAcqForm.Show;

end;

procedure TMeterTrans.MeterQuqery1Click(Sender: TObject);
begin
  if not assigned(MeterQueryForm) then MeterQueryForm := TMeterQueryForm.Create(Self);

  if label2.Caption = 'DIPOLOG MAIN OFFICE' then
    meterqueryform.Caption := 'DMO Meter Query Form'
  else if label2.Caption = 'PI?AN AREA OFFICE' then
    meterqueryform.Caption := 'PAO Meter Query Form'
  else if label2.Caption = 'SINDANGAN AREA OFFICE' then
    meterqueryform.Caption := 'SAO Meter Query Form'
  else if label2.Caption = 'LILOY AREA OFFICE' then
    meterqueryform.Caption := 'LAO Meter Query Form' ;

  MeterQueryForm.Show;
end;

procedure TMeterTrans.MeterTransaction1Click(Sender: TObject);
begin
  if not assigned(MSTransactionForm) then MSTransactionForm := TMSTransactionForm.Create(Self);
  MSTransactionForm.Show;
end;

procedure TMeterTrans.Quit1Click(Sender: TObject);
begin
  Close;
end;

procedure TMeterTrans.SealAcquisition1Click(Sender: TObject);
begin
  if not assigned(SealAcqForm) then SealAcqForm := TSealAcqForm.Create(Self);
  SealAcqForm.Show;
end;

procedure TMeterTrans.SealQuery1Click(Sender: TObject);
begin
  if not assigned(SealQueryForm) then SealQueryForm := TSealQueryForm.Create(Self);
  SealQueryForm.Show;
end;

procedure TMeterTrans.Users1Click(Sender: TObject);
begin
  MeterDataModule.Users.Open;

  if not assigned(UsersForm) then UsersForm := TUsersForm.Create(Self);
  UsersForm.Show;
end;

end.
