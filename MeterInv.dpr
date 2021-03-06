program MeterInv;

uses
  Forms,
  MeterInvIntro in 'MeterInvIntro.pas' {IntroForm},
  MeterData in 'MeterData.pas' {MeterDataModule: TDataModule},
  MeterInvLab in 'MeterInvLab.pas' {MeterTrans},
  MeterUsers in 'MeterUsers.pas' {UsersForm},
  MeterQuery in 'MeterQuery.pas' {MeterQueryForm},
  MeterAcq in 'MeterAcq.pas' {MeterAcqForm},
  SealAcq in 'SealAcq.pas' {SealAcqForm},
  MODTOOLS in 'MODTOOLS.PAS',
  LabTransactions in 'LabTransactions.pas' {LabTransForm},
  MSTrans in 'MSTrans.pas' {MSTransactionForm},
  SealQuery in 'SealQuery.pas' {SealQueryForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TIntroForm, IntroForm);
  Application.CreateForm(TLabTransForm, LabTransForm);
  Application.CreateForm(TMeterDataModule, MeterDataModule);
  Application.CreateForm(TMeterQueryForm, MeterQueryForm);
  Application.Run;
end.
