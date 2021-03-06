unit MeterUsers;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxCollection, Grids, DBGrids, CRGrid, StdCtrls, ExtCtrls, DBCtrls,
  Mask, CRDBGrid1;

type
  TUsersForm = class(TForm)
    NxHeaderPanel1: TNxHeaderPanel;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    NxButton3: TNxButton;
    NxButton4: TNxButton;
    UserPanel: TNxHeaderPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Edit1: TEdit;
    Label4: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    NxLinkLabel1: TNxLinkLabel;
    NxLinkLabel2: TNxLinkLabel;
    CRDBGrid1: TCRDBGrid1;
    procedure NxButton4Click(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure NxButton3Click(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure NxLinkLabel1Click(Sender: TObject);
    procedure NxLinkLabel2Click(Sender: TObject);
    procedure DBRadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UsersForm: TUsersForm;

implementation

uses MeterData;

{$R *.dfm}

procedure TUsersForm.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;
end;

procedure TUsersForm.DBRadioGroup1Click(Sender: TObject);
begin
  case DBRadioGroup1.ItemIndex of
   0 : MeterDataModule.UsersRestriction.Text := 'ADMINISTRATOR';
   1 : MeterDataModule.UsersRestriction.Text := 'INVENTORY';
   2 : MeterDataModule.UsersRestriction.Text := 'LABORATORY';
  end;
end;

procedure TUsersForm.NxButton1Click(Sender: TObject);
begin
   UserPanel.Caption := 'New User';
   UserPanel.Left    := 22;
   UserPanel.Top     := 40;
   UserPanel.BringToFront;
   UserPanel.Visible := True;

   DBEdit1.SetFocus;
   MeterDataModule.Users.Append;
end;

procedure TUsersForm.NxButton2Click(Sender: TObject);
begin
   UserPanel.Caption := 'New User';
   UserPanel.Left    := 22;
   UserPanel.Top     := 40;
   UserPanel.BringToFront;
   UserPanel.Visible := True;

   MeterDataModule.Users.Edit;
   DBEdit1.SetFocus;
end;

procedure TUsersForm.NxButton3Click(Sender: TObject);
begin
  if MeterDataModule.Users.IsEmpty then
     begin
     MessageDlg('Nothing to delete', mtError, [mbOK], 0);
     exit;
     end;

  if (MessageDlg('Confirm delete', mtWarning, [mbYes, mbCancel], 0) = mrCancel) then exit;

  MeterDataModule.Users.Delete;
end;

procedure TUsersForm.NxButton4Click(Sender: TObject);
begin
   MeterDataModule.Users.Close;
   Close;
end;

procedure TUsersForm.NxLinkLabel1Click(Sender: TObject);
begin
   MeterDataModule.Users.Post;
   UserPanel.Visible := False;
end;

procedure TUsersForm.NxLinkLabel2Click(Sender: TObject);
begin
  MeterDataModule.Users.Cancel;
  UserPanel.Visible := False;
end;

end.
