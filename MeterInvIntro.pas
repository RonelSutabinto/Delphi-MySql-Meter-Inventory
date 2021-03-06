unit MeterInvIntro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DsFancyButton, ExtCtrls, StdCtrls, NxEdit, NxCollection, NxFocus, DB,
  MemDS, DBAccess, MyAccess;

type
  TIntroForm = class(TForm)
    NxHeaderPanel1: TNxHeaderPanel;
    Label1: TLabel;
    Label2: TLabel;
    username: TNxEdit;
    password: TNxEdit;
    NxFocus1: TNxFocus;
    Image1: TImage;
    LogIn: TNxLinkLabel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    Image2: TImage;
    CreateMeterTestTable: TMyQuery;
    CreateMeterTestSign: TMyQuery;
    alterQ: TMyQuery;
    procedure FormShow(Sender: TObject);
    procedure LogInClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure UsernameKeyPress(Sender: TObject; var Key: Char);
    procedure passwordKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  IntroForm : TIntroForm;
  ApplyID   : Integer;
implementation

uses MeterData, MeterInvLab;

{$R *.dfm}

procedure TIntroForm.FormShow(Sender: TObject);
begin
  DoubleBuffered := True;
end;

procedure TIntroForm.LogInClick(Sender: TObject);
begin
  With MeterDataModule do
    begin
      LoginUser.ParamByName('username').Text  := Username.Text;
      LoginUser.ParamByName('Password').Text  := Password.Text;
      LoginUser.Open;

      If LoginUser.IsEmpty then
        begin
          MessageDlg('Username and password invalid.....', mtError, [mbOK], 0);
          Username.SetFocus;
          Users.Close;
          exit;

        end;

      Hide;

      If not Assigned(MeterTrans) then
      MeterTrans := TMeterTrans.Create(Application);

      With MeterTrans do
      case combobox1.itemindex of
        1 : Label2.Caption := 'DIPOLOG MAIN OFFICE';
        2 : Label2.Caption := 'PI?AN AREA OFFICE';
        3 : Label2.Caption := 'SINDANGAN AREA OFFICE';
        4 : Label2.Caption := 'LILOY AREA OFFICE';
      end;

      MeterTrans.Show;

    end;

    try
      alterQ.Execute;
    except
    end;
end;

procedure TIntroForm.ComboBox1Change(Sender: TObject);
begin
MeterDataModule.MyConnection1.Connected := false;
With MeterDataModule do
case combobox1.ItemIndex of
  1 : begin
         try
          MyConnection1.server := 'server';
          MyConnection1.Database := 'zanecometer';
          MyConnection1.Connected := true;

          MyConnection2.server := 'server';
          MyConnection2.Database := 'zanecometer';
          MyConnection2.Connected := true;
         except
          MessageDlg('DIPOLOG MAIN OFFICE OFFLINE..', mtWarning, [mbOK], 0);
          end;
      end;
  2 : begin
        try
          MyConnection1.server := 'serverpao';
          MyConnection1.Database := 'zanecometer';
          MyConnection1.Connected := true;

          MyConnection2.server := 'serverpao';
          MyConnection2.Database := 'zanecometer';
          MyConnection2.Connected := true;
        except
          MessageDlg('PINAN AREA OFFICE OFFLINE..', mtWarning, [mbOK], 0);
        end;
      end;
  3 : begin
        try
          MyConnection1.server := 'serversao';
          MyConnection1.Database := 'zanecometer';
          MyConnection1.Connected := true;

          MyConnection2.server := 'serversao';
          MyConnection2.Database := 'zanecometer';
          MyConnection2.Connected := true;
        except
          MessageDlg('SINDANGAN AREA OFFICE OFFLINE..', mtWarning, [mbOK], 0);
        end;
      end;
  4 : begin
        try
          MyConnection1.server := 'serverlao';
          MyConnection1.Database := 'zanecometer';
          MyConnection1.Connected := true;

          MyConnection2.server := 'serverlao';
          MyConnection2.Database := 'zanecometer';
          MyConnection2.Connected := true;
        except
          MessageDlg('LILOY AREA OFFICE OFFLINE..', mtWarning, [mbOK], 0);
        end;
      end;
  end;


{if ComboBox1.ItemIndex = 1 then
  begin
      try
          MyConnection1.server := 'server';
          MyConnection1.Username := 'root';
          MyConnection1.Password := 'blaise';
          MyConnection1.Database := 'zanecometer';
          MyConnection1.Connected := true;
      except
          MessageDlg('DIPOLOG MAIN OFFICE OFFLINE..', mtWarning, [mbOK], 0);
      end;

  end else if ComboBox1.ItemIndex = 2 then
  begin
      try
          MyConnection1.server := 'serverpao';
          MyConnection1.Username := 'root';
          myconnection1.Password := 'blaise';
          MyConnection1.Database := 'zanecometer';
          MyConnection1.Connected := true;
      except
          MessageDlg('PINAN AREA OFFICE OFFLINE..', mtWarning, [mbOK], 0);
      end;

  end else if ComboBox1.ItemIndex = 3 then
  begin
      try
          MyConnection1.server := 'serversao';
          MyConnection1.Username := 'root';
          myconnection1.Password := 'blaise';
          MyConnection1.Database := 'zanecometer';
          MyConnection1.Connected := true;
      except
          MessageDlg('SINDANGAN AREA OFFICE OFFLINE..', mtWarning, [mbOK], 0);
      end;

    end else if ComboBox1.ItemIndex = 4 then
  begin
      try
          MyConnection1.server := 'serverlao';
          MyConnection1.Username := 'root';
          myconnection1.Password := 'blaise';
          MyConnection1.Database := 'zanecometer';
          MyConnection1.Connected := true;
      except
          MessageDlg('LILOY AREA OFFICE OFFLINE..', mtWarning, [mbOK], 0);
      end;

    end;   }

try
  CreateMeterTestTable.Active := true;
except end;
try
  CreateMeterTestSign.Active := true;
except end;

end;


procedure TIntroForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  IntroForm := Nil;
end;

procedure TIntroForm.UsernameKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    begin
     Key := #0;
     Perform(CM_DIALOGKEY,VK_TAB,0);
    end;
end;


procedure TIntroForm.passwordKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
    begin
      Key := #0;
      LogInClick(Self);
    end;
end;

end.
