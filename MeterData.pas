unit MeterData;

interface

uses
  SysUtils, Classes, DB, DBAccess, MyAccess, MemDS;

type
  TMeterDataModule = class(TDataModule)
    MyConnection1: TMyConnection;
    LoginUser: TMyQuery;
    Users: TMyQuery;
    LoginUseridMeterUsers: TLargeintField;
    LoginUserUserName: TStringField;
    LoginUserPassWord: TStringField;
    LoginUserEmpName: TStringField;
    LoginUserRestrictionCode: TStringField;
    LoginUserRestriction: TStringField;
    UsersidMeterUsers: TLargeintField;
    UsersUserName: TStringField;
    UsersPassWord: TStringField;
    UsersEmpName: TStringField;
    UsersRestrictionCode: TStringField;
    UsersRestriction: TStringField;
    dsUsers: TMyDataSource;
    MtAcq: TMyQuery;
    MtAcqidacq: TLargeintField;
    MtAcqDateAcquired: TDateField;
    MtAcqRRNumber: TStringField;
    MtAcqDRNumber: TStringField;
    MtAcqSINumber: TStringField;
    MtAcqSupplier: TStringField;
    MtAcqAddress: TStringField;
    MtAcqPcs: TLargeintField;
    MtAcqCost: TFloatField;
    dsMtAcq: TMyDataSource;
    MtInv: TMyQuery;
    dsMtInv: TMyDataSource;
    MtTrans: TMyQuery;
    MtTransidMeterTransaction: TLargeintField;
    MtTransDateTrans: TDateField;
    MtTransTransDesc: TStringField;
    MtTransName: TStringField;
    MtTransLocation: TStringField;
    MtTransAccountNumber: TStringField;
    MtTransReading: TFloatField;
    MtTransTerminalSeal: TStringField;
    MtTransRemarks: TMemoField;
    MtTransMeterCondition: TStringField;
    MtTransAccuracy: TFloatField;
    MtTransCalibrationSeal1: TStringField;
    MtTransCalibrationSeal2: TStringField;
    MtTransidMeterInv: TFloatField;
    dsMtTans: TMyDataSource;
    SLBatch: TMyQuery;
    dsSLBatch: TMyDataSource;
    SLInv: TMyQuery;
    dsSLInv: TMyDataSource;
    SLAcq: TMyQuery;
    SLAcqidsealacq: TLargeintField;
    SLAcqDateAcquired: TDateField;
    SLAcqRRNumber: TStringField;
    SLAcqDRNumber: TStringField;
    SLAcqSINumber: TStringField;
    SLAcqSupplier: TStringField;
    SLAcqAddress: TStringField;
    SLAcqPcs: TLargeintField;
    SLAcqCost: TFloatField;
    SLAcqAmount: TFloatField;
    dsSLAcq: TMyDataSource;
    SLAcqBoxes: TLargeintField;
    SLAcqTotalPcs: TLargeintField;
    MtAcqAmount: TFloatField;
    Supplier: TMyQuery;
    dsSupplier: TMyDataSource;
    Suppliersupplier: TStringField;
    Supplieraddress: TStringField;
    MB: TMyQuery;
    MBbrand: TStringField;
    dsMB: TMyDataSource;
    SLBatchidsealbatch: TLargeintField;
    SLBatchidtechcrew: TFloatField;
    SLBatchidsealacq: TFloatField;
    SLBatchboxes: TLargeintField;
    SLBatchpcs: TLargeintField;
    SLBatchtotalpcs: TLargeintField;
    SLBatchcrew: TStringField;
    SLInvidSealInv: TLargeintField;
    SLInvidTechCrew: TFloatField;
    SLInvSealNumber: TStringField;
    SLInvStatus: TStringField;
    SLInvDateInst: TDateField;
    SLInvMeterBrand: TStringField;
    SLInvSerialNumber: TStringField;
    SLInvidSealBatch: TFloatField;
    SLClose: TMyQuery;
    dsSLClose: TMyDataSource;
    SLCloseidsealclose: TIntegerField;
    SLCloseidsealbatch: TFloatField;
    SLCloseidtechcrew: TFloatField;
    SLClosedateclose: TDateField;
    SLCloseIssued: TIntegerField;
    SLCloseinstalled: TIntegerField;
    SLClosedamaged: TIntegerField;
    SLCloseUnaccounted: TIntegerField;
    SLInvCode: TFloatField;
    KMTrans: TMyQuery;
    KMTransidKWHRTrans: TLargeintField;
    KMTransDateTransferred: TDateField;
    KMTransReference: TStringField;
    KMTransDescription: TStringField;
    dsKMTrans: TMyDataSource;
    KMDetail: TMyQuery;
    KMDetailidktdetail: TLargeintField;
    KMDetailidkwhrtrans: TFloatField;
    KMDetailmeterbrand: TStringField;
    KMDetailserialnumber: TStringField;
    dsKMDetail: TMyDataSource;
    KMTransPosted: TStringField;
    MTshowdetails: TMyQuery;
    dsMTshowdetails: TMyDataSource;
    MTshowdetailsname: TStringField;
    MTshowdetailsreading: TFloatField;
    MTshowdetailscalibrationseal1: TStringField;
    MTshowdetailscalibrationseal2: TStringField;
    MTshowdetailsmetercondition: TStringField;
    MTshowdetailsremarks: TMemoField;
    MTshowdetailsidmeterinv: TLargeintField;
    MTshowdetailsidacq: TLargeintField;
    MTshowdetailsserialnumber: TStringField;
    MtInvidMeterInv: TLargeintField;
    MtInvIdAcq: TLargeintField;
    MtInvSerialNumber: TStringField;
    MtInvBrand: TStringField;
    MtInvType: TStringField;
    MtInvAmphere: TStringField;
    MtInvAccuracy: TFloatField;
    MtInvStatus: TStringField;
    MyConnection2: TMyConnection;
    master: TMyQuery;
    dsMaster: TMyDataSource;
    masterCode: TIntegerField;
    masterArea: TStringField;
    masterBook: TStringField;
    masterSequence: TStringField;
    masterAccountNumber: TStringField;
    masterName: TStringField;
    masterAddress: TStringField;
    masterRateCode: TStringField;
    masterConsCode: TStringField;
    masterConnCode: TStringField;
    masterTransformer: TStringField;
    masterMeterBrand: TStringField;
    masterSerial: TStringField;
    masterMultiplier: TFloatField;
    masterNewConnectionDate: TDateField;
    masterReconnectionDate: TDateField;
    masterDisconnectionDate: TDateField;
    masterPreviousReadingDate: TDateField;
    masterPresentReadingDate: TDateField;
    masterPreviousReadingKWH: TFloatField;
    masterPresentReadingKWH: TFloatField;
    masterDiff: TFloatField;
    masterDemand: TFloatField;
    masterFlatRateWattage: TFloatField;
    masterFeedBackCode: TStringField;
    masterCM: TStringField;
    masterCMMultiplier: TFloatField;
    masterCMPreviousReadingKWH: TFloatField;
    masterCMPresentReadingKWH: TFloatField;
    masterCMKilowattHour: TFloatField;
    masterCMDemand: TFloatField;
    masterKilowattHour: TFloatField;
    masterKilowattUsed: TFloatField;
    masterisFixDemand: TIntegerField;
    masterGenSysCharge: TFloatField;
    masterHostCommCharge: TFloatField;
    masterForexCharge: TFloatField;
    masterTCDemandCharge: TFloatField;
    masterTCTransSystemCharge: TFloatField;
    masterSystemLossCharge: TFloatField;
    masterDCDemandCharge: TFloatField;
    masterDCDistributionCharge: TFloatField;
    masterSCRetCustCharge: TFloatField;
    masterSCSupplySysCharge: TFloatField;
    masterMCRetailCustCharge: TFloatField;
    masterMCSystemCharge: TFloatField;
    masterUCNPCStrandedDebts: TFloatField;
    masterUCNPCStrandedContCost: TFloatField;
    masterUCDUStrandedContCost: TFloatField;
    masterUCME: TFloatField;
    masterUCEqTaxesAndRoyalties: TFloatField;
    masterUCEC: TFloatField;
    masterUCCrossSubRemoval: TFloatField;
    masterICCrossSubsidyCharge: TFloatField;
    masterPowerActRateRed: TFloatField;
    masterLifelineDiscSubs: TFloatField;
    masterLoanCondo: TFloatField;
    masterTransformerRental: TFloatField;
    masterOCCode1: TStringField;
    masterOCAmount1: TFloatField;
    masterOCMo1: TFloatField;
    masterOCTotal1: TFloatField;
    masterOCCode2: TStringField;
    masterOCAmount2: TFloatField;
    masterOCMo2: TFloatField;
    masterOCTotal2: TFloatField;
    masterOCCode3: TStringField;
    masterOCAmount3: TFloatField;
    masterOCMo3: TFloatField;
    masterOCTotal3: TFloatField;
    masterTotalBill: TFloatField;
    masterBillNumber: TStringField;
    masterOEBRNumber: TStringField;
    masterBillMonth: TStringField;
    masterDeleteRemarks: TStringField;
    masterPoleNumber: TStringField;
    masterFeederNumber: TStringField;
    masterXFormerQty: TIntegerField;
    masterXFormerKVA: TStringField;
    masterAge30: TFloatField;
    masterAge60: TFloatField;
    masterAge90: TFloatField;
    masterAge120: TFloatField;
    masterAgeOver120: TFloatField;
    masterAgeTotal: TFloatField;
    masterTotalPayments: TFloatField;
    masterARBalance: TFloatField;
    masterLCCustMo: TFloatField;
    masterPrevYearAdjPowerCost: TFloatField;
    masterSysLossUnderRecov: TFloatField;
    masterVATDisc: TFloatField;
    masterVATDiscAmt: TFloatField;
    masterVATDistDiscAmt: TFloatField;
    masterVATGenCoDiscAmt: TFloatField;
    masterVATTransCoDiscAmt: TFloatField;
    masterVATSystemLossDiscAmt: TFloatField;
    masterVATDist: TFloatField;
    masterVATGenCO: TFloatField;
    masterVATTransCO: TFloatField;
    masterVATSystemLossGenCO: TFloatField;
    masterVATSystemLossTransCO: TFloatField;
    masterVAT: TFloatField;
    masterDiffBillPerKwhr: TFloatField;
    masterDiffBillPerKW: TFloatField;
    masterDiffBillPerCust: TFloatField;
    masterMCC: TFloatField;
    masterPKVROebrNumber: TStringField;
    masterPKVRBillMonth: TStringField;
    masterPKVRAmount: TFloatField;
    masterSCDisc: TFloatField;
    masterWRateCode: TStringField;
    masterSCAmt4Disc: TFloatField;
    masterDWLEN1: TFloatField;
    masterDWLEN2: TFloatField;
    masterCBook: TStringField;
    masterRPTax: TFloatField;
    masterRateOrder: TStringField;
    masterBTax: TFloatField;
    masterRateOrderNo: TIntegerField;
    masterOtherGenRateAdj: TFloatField;
    masterOtherTransCostAdj: TFloatField;
    masterOtherTransDemandCostAdj: TFloatField;
    masterOtherSystemLossCostAdj: TFloatField;
    masterOtherLifelineRateCostAdj: TFloatField;
    masterOtherSeniorCitizenRateAdj: TFloatField;
    masterFitall: TFloatField;
    masterreferenceAtmNo: TStringField;
    MtTestnew: TMyQuery;
    dsMtTestnew: TMyDataSource;
    MtTestnewidmtest: TIntegerField;
    MtTestnewmtestdate: TDateField;
    MtTestnewconsumer: TStringField;
    MtTestnewaddress: TStringField;
    MtTestnewmeterbrand: TStringField;
    MtTestnewserial: TStringField;
    MtTestnewreading: TStringField;
    MtTestnewtype: TStringField;
    MtTestnewvolts: TStringField;
    MtTestnewphase: TStringField;
    MtTestnewkh: TStringField;
    MtTestnewta: TStringField;
    MtTestnewfl1: TStringField;
    MtTestnewfl2: TStringField;
    MtTestnewfl3: TStringField;
    MtTestnewfltotal: TStringField;
    MtTestnewll1: TStringField;
    MtTestnewll2: TStringField;
    MtTestnewll3: TStringField;
    MtTestnewlltotal: TStringField;
    MtTestnewgenave: TStringField;
    MtTestnewremarks: TStringField;
    dsMtTest: TMyDataSource;
    MtTest: TMyQuery;
    MtTestidmtest: TIntegerField;
    MtTestmtestdate: TDateField;
    MtTestconsumer: TStringField;
    MtTestaddress: TStringField;
    MtTestmeterbrand: TStringField;
    MtTestserial: TStringField;
    MtTestreading: TStringField;
    MtTesttype: TStringField;
    MtTestvolts: TStringField;
    MtTestphase: TStringField;
    MtTestkh: TStringField;
    MtTestta: TStringField;
    MtTestfl1: TStringField;
    MtTestfl2: TStringField;
    MtTestfl3: TStringField;
    MtTestfltotal: TStringField;
    MtTestll1: TStringField;
    MtTestll2: TStringField;
    MtTestll3: TStringField;
    MtTestlltotal: TStringField;
    MtTestgenave: TStringField;
    MtTestremarks: TStringField;
    MTsummary: TMyQuery;
    dsMTsummary: TMyDataSource;
    MTsummaryidmtest: TIntegerField;
    MTsummarymtestdate: TDateField;
    MTsummaryconsumer: TStringField;
    MTsummaryaddress: TStringField;
    MTsummarymeterbrand: TStringField;
    MTsummaryserial: TStringField;
    MTsummaryreading: TStringField;
    MTsummarytype: TStringField;
    MTsummaryvolts: TStringField;
    MTsummaryphase: TStringField;
    MTsummarykh: TStringField;
    MTsummaryta: TStringField;
    MTsummaryfl1: TStringField;
    MTsummaryfl2: TStringField;
    MTsummaryfl3: TStringField;
    MTsummaryfltotal: TStringField;
    MTsummaryll1: TStringField;
    MTsummaryll2: TStringField;
    MTsummaryll3: TStringField;
    MTsummarylltotal: TStringField;
    MTsummarygenave: TStringField;
    MTsummaryremarks: TStringField;
    Qisonumber: TMyQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MeterDataModule: TMeterDataModule;

implementation

{$R *.dfm}

end.
