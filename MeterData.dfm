object MeterDataModule: TMeterDataModule
  OldCreateOrder = False
  Height = 503
  Width = 736
  object MyConnection1: TMyConnection
    Database = 'zanecometer'
    DataTypeMap = <
      item
        DBType = 209
        FieldType = ftLargeint
        IgnoreErrors = True
      end>
    Username = '19zan72'
    Server = 'server'
    Connected = True
    LoginPrompt = False
    Left = 39
    Top = 25
    EncryptedPassword = '8FFF9EFF8CFF9CFF9EFF93FF85FF9EFF91FF'
  end
  object LoginUser: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from meterusers'
      'where username = :username and'
      '      password = :password')
    Left = 39
    Top = 89
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'username'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'password'
        Value = nil
      end>
    object LoginUseridMeterUsers: TLargeintField
      FieldName = 'idMeterUsers'
    end
    object LoginUserUserName: TStringField
      FieldName = 'UserName'
    end
    object LoginUserPassWord: TStringField
      FieldName = 'PassWord'
      Size = 30
    end
    object LoginUserEmpName: TStringField
      FieldName = 'EmpName'
      Size = 45
    end
    object LoginUserRestrictionCode: TStringField
      FieldName = 'RestrictionCode'
      Size = 1
    end
    object LoginUserRestriction: TStringField
      FieldName = 'Restriction'
      Size = 30
    end
  end
  object Users: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from meterusers')
    Left = 39
    Top = 169
    object UsersidMeterUsers: TLargeintField
      FieldName = 'idMeterUsers'
    end
    object UsersUserName: TStringField
      FieldName = 'UserName'
    end
    object UsersPassWord: TStringField
      FieldName = 'PassWord'
      Size = 30
    end
    object UsersEmpName: TStringField
      FieldName = 'EmpName'
      Size = 45
    end
    object UsersRestrictionCode: TStringField
      FieldName = 'RestrictionCode'
      Size = 1
    end
    object UsersRestriction: TStringField
      FieldName = 'Restriction'
      Size = 30
    end
  end
  object dsUsers: TMyDataSource
    DataSet = Users
    Left = 39
    Top = 233
  end
  object MtAcq: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from acq '
      'order by dateacquired desc')
    Left = 152
    Top = 25
    object MtAcqidacq: TLargeintField
      FieldName = 'idacq'
    end
    object MtAcqDateAcquired: TDateField
      FieldName = 'DateAcquired'
    end
    object MtAcqRRNumber: TStringField
      FieldName = 'RRNumber'
    end
    object MtAcqDRNumber: TStringField
      FieldName = 'DRNumber'
    end
    object MtAcqSINumber: TStringField
      FieldName = 'SINumber'
    end
    object MtAcqSupplier: TStringField
      FieldName = 'Supplier'
      Size = 40
    end
    object MtAcqAddress: TStringField
      FieldName = 'Address'
      Size = 40
    end
    object MtAcqPcs: TLargeintField
      FieldName = 'Pcs'
    end
    object MtAcqCost: TFloatField
      FieldName = 'Cost'
    end
    object MtAcqAmount: TFloatField
      FieldName = 'Amount'
      currency = True
    end
  end
  object dsMtAcq: TMyDataSource
    DataSet = MtAcq
    Left = 151
    Top = 89
  end
  object MtInv: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from MeterInv'
      'order by brand, serialnumber'
      ''
      '/* select mt.name,'
      '       mt.reading,'
      '       mt.calibrationseal1,'
      '       mt.calibrationseal2,'
      '       mt.metercondition,'
      '       mt.remarks,'
      '       mi.idmeterinv,'
      '       mi.idacq,'
      '       mi.serialnumber,'
      '       mi.brand,'
      '       mi.type,'
      '       mi.amphere,'
      '       mi.accuracy,'
      '       mi.status'
      '     '
      'from metertransaction mt'
      'join meterinv mi on (mi.idmeterinv = mt.idmeterinv)'
      'order by mi.brand, mi.serialnumber */')
    Left = 254
    Top = 25
    object MtInvidMeterInv: TLargeintField
      FieldName = 'idMeterInv'
    end
    object MtInvIdAcq: TLargeintField
      FieldName = 'IdAcq'
    end
    object MtInvSerialNumber: TStringField
      FieldName = 'SerialNumber'
    end
    object MtInvBrand: TStringField
      FieldName = 'Brand'
    end
    object MtInvType: TStringField
      FieldName = 'Type'
      Size = 30
    end
    object MtInvAmphere: TStringField
      FieldName = 'Amphere'
      Size = 15
    end
    object MtInvAccuracy: TFloatField
      FieldName = 'Accuracy'
    end
    object MtInvStatus: TStringField
      FieldName = 'Status'
      Size = 10
    end
  end
  object dsMtInv: TMyDataSource
    DataSet = MtInv
    Left = 253
    Top = 89
  end
  object MtTrans: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from MeterTransaction'
      'order by DateTrans desc')
    Left = 358
    Top = 25
    object MtTransidMeterTransaction: TLargeintField
      FieldName = 'idMeterTransaction'
    end
    object MtTransDateTrans: TDateField
      FieldName = 'DateTrans'
    end
    object MtTransTransDesc: TStringField
      FieldName = 'TransDesc'
    end
    object MtTransName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object MtTransLocation: TStringField
      FieldName = 'Location'
      Size = 50
    end
    object MtTransAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 10
    end
    object MtTransReading: TFloatField
      FieldName = 'Reading'
    end
    object MtTransTerminalSeal: TStringField
      FieldName = 'TerminalSeal'
    end
    object MtTransRemarks: TMemoField
      FieldName = 'Remarks'
      BlobType = ftMemo
    end
    object MtTransMeterCondition: TStringField
      FieldName = 'MeterCondition'
      Size = 15
    end
    object MtTransAccuracy: TFloatField
      FieldName = 'Accuracy'
    end
    object MtTransCalibrationSeal1: TStringField
      FieldName = 'CalibrationSeal1'
      Size = 15
    end
    object MtTransCalibrationSeal2: TStringField
      FieldName = 'CalibrationSeal2'
      Size = 15
    end
    object MtTransidMeterInv: TFloatField
      FieldName = 'idMeterInv'
    end
  end
  object dsMtTans: TMyDataSource
    DataSet = MtTrans
    Left = 357
    Top = 89
  end
  object SLBatch: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select slb.idsealbatch,'
      '       slb.idtechcrew,'
      '       slb.idsealacq,'
      '       slb.boxes,'
      '       slb.pcs,'
      '       slb.totalpcs,'
      '       slu.crew'
      'from sealbatch slb'
      
        'left join zanecoisd.techcrew slu on (slb.idtechcrew = slu.idtech' +
        'crew)')
    Left = 151
    Top = 166
    object SLBatchidsealbatch: TLargeintField
      FieldName = 'idsealbatch'
    end
    object SLBatchidtechcrew: TFloatField
      FieldName = 'idtechcrew'
    end
    object SLBatchidsealacq: TFloatField
      FieldName = 'idsealacq'
    end
    object SLBatchboxes: TLargeintField
      FieldName = 'boxes'
    end
    object SLBatchpcs: TLargeintField
      FieldName = 'pcs'
    end
    object SLBatchtotalpcs: TLargeintField
      FieldName = 'totalpcs'
    end
    object SLBatchcrew: TStringField
      FieldName = 'crew'
    end
  end
  object dsSLBatch: TMyDataSource
    DataSet = SLBatch
    Left = 150
    Top = 233
  end
  object SLInv: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from sealinv')
    Left = 252
    Top = 166
    object SLInvidSealInv: TLargeintField
      FieldName = 'idSealInv'
    end
    object SLInvidTechCrew: TFloatField
      FieldName = 'idTechCrew'
    end
    object SLInvSealNumber: TStringField
      FieldName = 'SealNumber'
    end
    object SLInvStatus: TStringField
      FieldName = 'Status'
      Size = 1
    end
    object SLInvDateInst: TDateField
      FieldName = 'DateInst'
    end
    object SLInvMeterBrand: TStringField
      FieldName = 'MeterBrand'
    end
    object SLInvSerialNumber: TStringField
      FieldName = 'SerialNumber'
    end
    object SLInvidSealBatch: TFloatField
      FieldName = 'idSealBatch'
    end
    object SLInvCode: TFloatField
      FieldName = 'Code'
    end
  end
  object dsSLInv: TMyDataSource
    DataSet = SLInv
    Left = 251
    Top = 233
  end
  object SLAcq: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from sealacq'
      'order by dateacquired desc')
    Left = 357
    Top = 168
    object SLAcqidsealacq: TLargeintField
      FieldName = 'idsealacq'
    end
    object SLAcqDateAcquired: TDateField
      FieldName = 'DateAcquired'
    end
    object SLAcqRRNumber: TStringField
      FieldName = 'RRNumber'
    end
    object SLAcqDRNumber: TStringField
      FieldName = 'DRNumber'
    end
    object SLAcqSINumber: TStringField
      FieldName = 'SINumber'
    end
    object SLAcqSupplier: TStringField
      FieldName = 'Supplier'
      Size = 40
    end
    object SLAcqAddress: TStringField
      FieldName = 'Address'
      Size = 40
    end
    object SLAcqBoxes: TLargeintField
      FieldName = 'Boxes'
    end
    object SLAcqPcs: TLargeintField
      FieldName = 'Pcs'
    end
    object SLAcqTotalPcs: TLargeintField
      FieldName = 'TotalPcs'
    end
    object SLAcqCost: TFloatField
      FieldName = 'Cost'
    end
    object SLAcqAmount: TFloatField
      FieldName = 'Amount'
    end
  end
  object dsSLAcq: TMyDataSource
    DataSet = SLAcq
    Left = 357
    Top = 232
  end
  object Supplier: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select distinct supplier, address from '
      '  ((select supplier, address from acq) union '
      '   (select supplier, address from sealacq)) Tacq')
    Left = 460
    Top = 27
    object Suppliersupplier: TStringField
      FieldName = 'supplier'
      Size = 40
    end
    object Supplieraddress: TStringField
      FieldName = 'address'
      Size = 40
    end
  end
  object dsSupplier: TMyDataSource
    DataSet = Supplier
    Left = 460
    Top = 91
  end
  object MB: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select distinct brand from meterinv')
    Left = 564
    Top = 27
    object MBbrand: TStringField
      FieldName = 'brand'
    end
  end
  object dsMB: TMyDataSource
    DataSet = MB
    Left = 564
    Top = 91
  end
  object SLClose: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from sealclose')
    Left = 462
    Top = 168
    object SLCloseidsealclose: TIntegerField
      FieldName = 'idsealclose'
    end
    object SLCloseidsealbatch: TFloatField
      FieldName = 'idsealbatch'
    end
    object SLCloseidtechcrew: TFloatField
      FieldName = 'idtechcrew'
    end
    object SLClosedateclose: TDateField
      FieldName = 'dateclose'
    end
    object SLCloseIssued: TIntegerField
      FieldName = 'Issued'
    end
    object SLCloseinstalled: TIntegerField
      FieldName = 'installed'
    end
    object SLClosedamaged: TIntegerField
      FieldName = 'damaged'
    end
    object SLCloseUnaccounted: TIntegerField
      FieldName = 'Unaccounted'
    end
  end
  object dsSLClose: TMyDataSource
    DataSet = SLClose
    Left = 464
    Top = 232
  end
  object KMTrans: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from kwhrtrans order by idkwhrtrans')
    Left = 564
    Top = 165
    object KMTransidKWHRTrans: TLargeintField
      FieldName = 'idKWHRTrans'
    end
    object KMTransDateTransferred: TDateField
      FieldName = 'DateTransferred'
    end
    object KMTransReference: TStringField
      FieldName = 'Reference'
      Size = 10
    end
    object KMTransDescription: TStringField
      FieldName = 'Description'
      Size = 45
    end
    object KMTransPosted: TStringField
      FieldName = 'Posted'
      Size = 1
    end
  end
  object dsKMTrans: TMyDataSource
    DataSet = KMTrans
    Left = 562
    Top = 232
  end
  object KMDetail: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from ktdetail order by idktdetail')
    MasterSource = dsKMTrans
    MasterFields = 'idKWHRTrans'
    DetailFields = 'idkwhrtrans'
    Left = 665
    Top = 167
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idKWHRTrans'
        Value = nil
      end>
    object KMDetailidktdetail: TLargeintField
      FieldName = 'idktdetail'
    end
    object KMDetailidkwhrtrans: TFloatField
      FieldName = 'idkwhrtrans'
    end
    object KMDetailmeterbrand: TStringField
      FieldName = 'meterbrand'
      Size = 10
    end
    object KMDetailserialnumber: TStringField
      FieldName = 'serialnumber'
    end
  end
  object dsKMDetail: TMyDataSource
    DataSet = KMDetail
    Left = 664
    Top = 232
  end
  object MTshowdetails: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select mt.name,'
      '       mt.reading,'
      '       mt.calibrationseal1,'
      '       mt.calibrationseal2,'
      '       mt.metercondition,'
      '       mt.remarks,'
      '       mi.idmeterinv,'
      '       mi.idacq,'
      '       mi.serialnumber'
      '       /*mi.brand,'
      '       mi.type,'
      '       mi.amphere,'
      '       mi.accuracy,'
      '       mi.status*/'
      '     '
      'from metertransaction mt'
      'join meterinv mi on (mi.idmeterinv = mt.idmeterinv)'
      'where mi.serialnumber = :serialnumber')
    Left = 656
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'serialnumber'
        Value = nil
      end>
    object MTshowdetailsname: TStringField
      FieldName = 'name'
      Size = 50
    end
    object MTshowdetailsreading: TFloatField
      FieldName = 'reading'
    end
    object MTshowdetailscalibrationseal1: TStringField
      FieldName = 'calibrationseal1'
      Size = 15
    end
    object MTshowdetailscalibrationseal2: TStringField
      FieldName = 'calibrationseal2'
      Size = 15
    end
    object MTshowdetailsmetercondition: TStringField
      FieldName = 'metercondition'
      Size = 15
    end
    object MTshowdetailsremarks: TMemoField
      FieldName = 'remarks'
      BlobType = ftMemo
    end
    object MTshowdetailsidmeterinv: TLargeintField
      FieldName = 'idmeterinv'
    end
    object MTshowdetailsidacq: TLargeintField
      FieldName = 'idacq'
    end
    object MTshowdetailsserialnumber: TStringField
      FieldName = 'serialnumber'
    end
  end
  object dsMTshowdetails: TMyDataSource
    DataSet = MTshowdetails
    Left = 656
    Top = 88
  end
  object MyConnection2: TMyConnection
    Username = '19zan72'
    Left = 40
    Top = 312
    EncryptedPassword = '8FFF9EFF8CFF9CFF9EFF93FF85FF9EFF91FF'
  end
  object master: TMyQuery
    Connection = MyConnection2
    SQL.Strings = (
      'select * from zaneco.master'
      'where serial = :serialno')
    Left = 40
    Top = 368
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'serialno'
        Value = nil
      end>
    object masterCode: TIntegerField
      FieldName = 'Code'
    end
    object masterArea: TStringField
      FieldName = 'Area'
      FixedChar = True
      Size = 3
    end
    object masterBook: TStringField
      FieldName = 'Book'
      FixedChar = True
      Size = 3
    end
    object masterSequence: TStringField
      FieldName = 'Sequence'
      Size = 4
    end
    object masterAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 10
    end
    object masterName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object masterAddress: TStringField
      FieldName = 'Address'
      Size = 50
    end
    object masterRateCode: TStringField
      FieldName = 'RateCode'
      FixedChar = True
      Size = 1
    end
    object masterConsCode: TStringField
      FieldName = 'ConsCode'
      FixedChar = True
      Size = 1
    end
    object masterConnCode: TStringField
      FieldName = 'ConnCode'
      FixedChar = True
      Size = 1
    end
    object masterTransformer: TStringField
      FieldName = 'Transformer'
      Size = 80
    end
    object masterMeterBrand: TStringField
      FieldName = 'MeterBrand'
    end
    object masterSerial: TStringField
      FieldName = 'Serial'
    end
    object masterMultiplier: TFloatField
      FieldName = 'Multiplier'
    end
    object masterNewConnectionDate: TDateField
      FieldName = 'NewConnectionDate'
    end
    object masterReconnectionDate: TDateField
      FieldName = 'ReconnectionDate'
    end
    object masterDisconnectionDate: TDateField
      FieldName = 'DisconnectionDate'
    end
    object masterPreviousReadingDate: TDateField
      FieldName = 'PreviousReadingDate'
    end
    object masterPresentReadingDate: TDateField
      FieldName = 'PresentReadingDate'
    end
    object masterPreviousReadingKWH: TFloatField
      FieldName = 'PreviousReadingKWH'
    end
    object masterPresentReadingKWH: TFloatField
      FieldName = 'PresentReadingKWH'
    end
    object masterDiff: TFloatField
      FieldName = 'Diff'
    end
    object masterDemand: TFloatField
      FieldName = 'Demand'
    end
    object masterFlatRateWattage: TFloatField
      FieldName = 'FlatRateWattage'
    end
    object masterFeedBackCode: TStringField
      FieldName = 'FeedBackCode'
      FixedChar = True
      Size = 2
    end
    object masterCM: TStringField
      FieldName = 'CM'
      FixedChar = True
      Size = 1
    end
    object masterCMMultiplier: TFloatField
      FieldName = 'CMMultiplier'
    end
    object masterCMPreviousReadingKWH: TFloatField
      FieldName = 'CMPreviousReadingKWH'
    end
    object masterCMPresentReadingKWH: TFloatField
      FieldName = 'CMPresentReadingKWH'
    end
    object masterCMKilowattHour: TFloatField
      FieldName = 'CMKilowattHour'
    end
    object masterCMDemand: TFloatField
      FieldName = 'CMDemand'
    end
    object masterKilowattHour: TFloatField
      FieldName = 'KilowattHour'
    end
    object masterKilowattUsed: TFloatField
      FieldName = 'KilowattUsed'
    end
    object masterisFixDemand: TIntegerField
      FieldName = 'isFixDemand'
    end
    object masterGenSysCharge: TFloatField
      FieldName = 'GenSysCharge'
    end
    object masterHostCommCharge: TFloatField
      FieldName = 'HostCommCharge'
    end
    object masterForexCharge: TFloatField
      FieldName = 'ForexCharge'
    end
    object masterTCDemandCharge: TFloatField
      FieldName = 'TCDemandCharge'
    end
    object masterTCTransSystemCharge: TFloatField
      FieldName = 'TCTransSystemCharge'
    end
    object masterSystemLossCharge: TFloatField
      FieldName = 'SystemLossCharge'
    end
    object masterDCDemandCharge: TFloatField
      FieldName = 'DCDemandCharge'
    end
    object masterDCDistributionCharge: TFloatField
      FieldName = 'DCDistributionCharge'
    end
    object masterSCRetCustCharge: TFloatField
      FieldName = 'SCRetCustCharge'
    end
    object masterSCSupplySysCharge: TFloatField
      FieldName = 'SCSupplySysCharge'
    end
    object masterMCRetailCustCharge: TFloatField
      FieldName = 'MCRetailCustCharge'
    end
    object masterMCSystemCharge: TFloatField
      FieldName = 'MCSystemCharge'
    end
    object masterUCNPCStrandedDebts: TFloatField
      FieldName = 'UCNPCStrandedDebts'
    end
    object masterUCNPCStrandedContCost: TFloatField
      FieldName = 'UCNPCStrandedContCost'
    end
    object masterUCDUStrandedContCost: TFloatField
      FieldName = 'UCDUStrandedContCost'
    end
    object masterUCME: TFloatField
      FieldName = 'UCME'
    end
    object masterUCEqTaxesAndRoyalties: TFloatField
      FieldName = 'UCEqTaxesAndRoyalties'
    end
    object masterUCEC: TFloatField
      FieldName = 'UCEC'
    end
    object masterUCCrossSubRemoval: TFloatField
      FieldName = 'UCCrossSubRemoval'
    end
    object masterICCrossSubsidyCharge: TFloatField
      FieldName = 'ICCrossSubsidyCharge'
    end
    object masterPowerActRateRed: TFloatField
      FieldName = 'PowerActRateRed'
    end
    object masterLifelineDiscSubs: TFloatField
      FieldName = 'LifelineDiscSubs'
    end
    object masterLoanCondo: TFloatField
      FieldName = 'LoanCondo'
    end
    object masterTransformerRental: TFloatField
      FieldName = 'TransformerRental'
    end
    object masterOCCode1: TStringField
      FieldName = 'OCCode1'
      Size = 10
    end
    object masterOCAmount1: TFloatField
      FieldName = 'OCAmount1'
    end
    object masterOCMo1: TFloatField
      FieldName = 'OCMo1'
    end
    object masterOCTotal1: TFloatField
      FieldName = 'OCTotal1'
    end
    object masterOCCode2: TStringField
      FieldName = 'OCCode2'
      Size = 10
    end
    object masterOCAmount2: TFloatField
      FieldName = 'OCAmount2'
    end
    object masterOCMo2: TFloatField
      FieldName = 'OCMo2'
    end
    object masterOCTotal2: TFloatField
      FieldName = 'OCTotal2'
    end
    object masterOCCode3: TStringField
      FieldName = 'OCCode3'
      Size = 10
    end
    object masterOCAmount3: TFloatField
      FieldName = 'OCAmount3'
    end
    object masterOCMo3: TFloatField
      FieldName = 'OCMo3'
    end
    object masterOCTotal3: TFloatField
      FieldName = 'OCTotal3'
    end
    object masterTotalBill: TFloatField
      FieldName = 'TotalBill'
    end
    object masterBillNumber: TStringField
      FieldName = 'BillNumber'
      Size = 15
    end
    object masterOEBRNumber: TStringField
      FieldName = 'OEBRNumber'
      Size = 10
    end
    object masterBillMonth: TStringField
      FieldName = 'BillMonth'
      Size = 4
    end
    object masterDeleteRemarks: TStringField
      FieldName = 'DeleteRemarks'
      Size = 30
    end
    object masterPoleNumber: TStringField
      FieldName = 'PoleNumber'
      Size = 80
    end
    object masterFeederNumber: TStringField
      FieldName = 'FeederNumber'
    end
    object masterXFormerQty: TIntegerField
      FieldName = 'XFormerQty'
    end
    object masterXFormerKVA: TStringField
      FieldName = 'XFormerKVA'
    end
    object masterAge30: TFloatField
      FieldName = 'Age30'
    end
    object masterAge60: TFloatField
      FieldName = 'Age60'
    end
    object masterAge90: TFloatField
      FieldName = 'Age90'
    end
    object masterAge120: TFloatField
      FieldName = 'Age120'
    end
    object masterAgeOver120: TFloatField
      FieldName = 'AgeOver120'
    end
    object masterAgeTotal: TFloatField
      FieldName = 'AgeTotal'
    end
    object masterTotalPayments: TFloatField
      FieldName = 'TotalPayments'
    end
    object masterARBalance: TFloatField
      FieldName = 'ARBalance'
    end
    object masterLCCustMo: TFloatField
      FieldName = 'LCCustMo'
    end
    object masterPrevYearAdjPowerCost: TFloatField
      FieldName = 'PrevYearAdjPowerCost'
    end
    object masterSysLossUnderRecov: TFloatField
      FieldName = 'SysLossUnderRecov'
    end
    object masterVATDisc: TFloatField
      FieldName = 'VATDisc'
    end
    object masterVATDiscAmt: TFloatField
      FieldName = 'VATDiscAmt'
    end
    object masterVATDistDiscAmt: TFloatField
      FieldName = 'VATDistDiscAmt'
    end
    object masterVATGenCoDiscAmt: TFloatField
      FieldName = 'VATGenCoDiscAmt'
    end
    object masterVATTransCoDiscAmt: TFloatField
      FieldName = 'VATTransCoDiscAmt'
    end
    object masterVATSystemLossDiscAmt: TFloatField
      FieldName = 'VATSystemLossDiscAmt'
    end
    object masterVATDist: TFloatField
      FieldName = 'VATDist'
    end
    object masterVATGenCO: TFloatField
      FieldName = 'VATGenCO'
    end
    object masterVATTransCO: TFloatField
      FieldName = 'VATTransCO'
    end
    object masterVATSystemLossGenCO: TFloatField
      FieldName = 'VATSystemLossGenCO'
    end
    object masterVATSystemLossTransCO: TFloatField
      FieldName = 'VATSystemLossTransCO'
    end
    object masterVAT: TFloatField
      FieldName = 'VAT'
    end
    object masterDiffBillPerKwhr: TFloatField
      FieldName = 'DiffBillPerKwhr'
    end
    object masterDiffBillPerKW: TFloatField
      FieldName = 'DiffBillPerKW'
    end
    object masterDiffBillPerCust: TFloatField
      FieldName = 'DiffBillPerCust'
    end
    object masterMCC: TFloatField
      FieldName = 'MCC'
    end
    object masterPKVROebrNumber: TStringField
      FieldName = 'PKVROebrNumber'
    end
    object masterPKVRBillMonth: TStringField
      FieldName = 'PKVRBillMonth'
      Size = 4
    end
    object masterPKVRAmount: TFloatField
      FieldName = 'PKVRAmount'
    end
    object masterSCDisc: TFloatField
      FieldName = 'SCDisc'
    end
    object masterWRateCode: TStringField
      FieldName = 'WRateCode'
      Size = 1
    end
    object masterSCAmt4Disc: TFloatField
      FieldName = 'SCAmt4Disc'
    end
    object masterDWLEN1: TFloatField
      FieldName = 'DWLEN1'
    end
    object masterDWLEN2: TFloatField
      FieldName = 'DWLEN2'
    end
    object masterCBook: TStringField
      FieldName = 'CBook'
      Size = 6
    end
    object masterRPTax: TFloatField
      FieldName = 'RPTax'
    end
    object masterRateOrder: TStringField
      FieldName = 'RateOrder'
      Size = 6
    end
    object masterBTax: TFloatField
      FieldName = 'BTax'
    end
    object masterRateOrderNo: TIntegerField
      FieldName = 'RateOrderNo'
    end
    object masterOtherGenRateAdj: TFloatField
      FieldName = 'OtherGenRateAdj'
    end
    object masterOtherTransCostAdj: TFloatField
      FieldName = 'OtherTransCostAdj'
    end
    object masterOtherTransDemandCostAdj: TFloatField
      FieldName = 'OtherTransDemandCostAdj'
    end
    object masterOtherSystemLossCostAdj: TFloatField
      FieldName = 'OtherSystemLossCostAdj'
    end
    object masterOtherLifelineRateCostAdj: TFloatField
      FieldName = 'OtherLifelineRateCostAdj'
    end
    object masterOtherSeniorCitizenRateAdj: TFloatField
      FieldName = 'OtherSeniorCitizenRateAdj'
    end
    object masterFitall: TFloatField
      FieldName = 'Fitall'
    end
    object masterreferenceAtmNo: TStringField
      FieldName = 'referenceAtmNo'
      Size = 16
    end
  end
  object dsMaster: TMyDataSource
    DataSet = master
    Left = 40
    Top = 424
  end
  object MtTestnew: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from zanecometer.metertest')
    Left = 256
    Top = 312
    object MtTestnewidmtest: TIntegerField
      FieldName = 'idmtest'
    end
    object MtTestnewmtestdate: TDateField
      FieldName = 'mtestdate'
    end
    object MtTestnewconsumer: TStringField
      FieldName = 'consumer'
      Size = 50
    end
    object MtTestnewaddress: TStringField
      FieldName = 'address'
      Size = 50
    end
    object MtTestnewmeterbrand: TStringField
      FieldName = 'meterbrand'
    end
    object MtTestnewserial: TStringField
      FieldName = 'serial'
      Size = 30
    end
    object MtTestnewreading: TStringField
      FieldName = 'reading'
      Size = 10
    end
    object MtTestnewtype: TStringField
      FieldName = 'type'
    end
    object MtTestnewvolts: TStringField
      FieldName = 'volts'
      Size = 10
    end
    object MtTestnewphase: TStringField
      FieldName = 'phase'
      Size = 10
    end
    object MtTestnewkh: TStringField
      FieldName = 'kh'
    end
    object MtTestnewta: TStringField
      FieldName = 'ta'
    end
    object MtTestnewfl1: TStringField
      FieldName = 'fl1'
      Size = 10
    end
    object MtTestnewfl2: TStringField
      FieldName = 'fl2'
      Size = 10
    end
    object MtTestnewfl3: TStringField
      FieldName = 'fl3'
      Size = 10
    end
    object MtTestnewfltotal: TStringField
      FieldName = 'fltotal'
      Size = 10
    end
    object MtTestnewll1: TStringField
      FieldName = 'll1'
      Size = 10
    end
    object MtTestnewll2: TStringField
      FieldName = 'll2'
      Size = 10
    end
    object MtTestnewll3: TStringField
      FieldName = 'll3'
      Size = 10
    end
    object MtTestnewlltotal: TStringField
      FieldName = 'lltotal'
      Size = 10
    end
    object MtTestnewgenave: TStringField
      FieldName = 'genave'
      Size = 10
    end
    object MtTestnewremarks: TStringField
      FieldName = 'remarks'
      Size = 10
    end
  end
  object dsMtTestnew: TMyDataSource
    DataSet = MtTestnew
    Left = 256
    Top = 360
  end
  object dsMtTest: TMyDataSource
    DataSet = MtTest
    Left = 152
    Top = 360
  end
  object MtTest: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from zanecometer.metertest'
      'order by mtestdate asc')
    Left = 152
    Top = 312
    object MtTestidmtest: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'idmtest'
      Origin = 'metertest.idmtest'
    end
    object MtTestmtestdate: TDateField
      FieldName = 'mtestdate'
      Origin = 'metertest.mtestdate'
    end
    object MtTestconsumer: TStringField
      FieldName = 'consumer'
      Origin = 'metertest.consumer'
      Size = 50
    end
    object MtTestaddress: TStringField
      FieldName = 'address'
      Origin = 'metertest.address'
      Size = 50
    end
    object MtTestmeterbrand: TStringField
      FieldName = 'meterbrand'
      Origin = 'metertest.meterbrand'
    end
    object MtTestserial: TStringField
      FieldName = 'serial'
      Origin = 'metertest.serial'
      Size = 30
    end
    object MtTestreading: TStringField
      FieldName = 'reading'
      Origin = 'metertest.reading'
      Size = 10
    end
    object MtTesttype: TStringField
      FieldName = 'type'
      Origin = 'metertest.type'
    end
    object MtTestvolts: TStringField
      FieldName = 'volts'
      Origin = 'metertest.volts'
      Size = 10
    end
    object MtTestphase: TStringField
      FieldName = 'phase'
      Origin = 'metertest.phase'
      Size = 10
    end
    object MtTestkh: TStringField
      FieldName = 'kh'
      Origin = 'metertest.kh'
    end
    object MtTestta: TStringField
      FieldName = 'ta'
      Origin = 'metertest.ta'
    end
    object MtTestfl1: TStringField
      FieldName = 'fl1'
      Origin = 'metertest.fl1'
      Size = 10
    end
    object MtTestfl2: TStringField
      FieldName = 'fl2'
      Origin = 'metertest.fl2'
      Size = 10
    end
    object MtTestfl3: TStringField
      FieldName = 'fl3'
      Origin = 'metertest.fl3'
      Size = 10
    end
    object MtTestfltotal: TStringField
      FieldName = 'fltotal'
      Origin = 'metertest.fltotal'
      Size = 10
    end
    object MtTestll1: TStringField
      FieldName = 'll1'
      Origin = 'metertest.ll1'
      Size = 10
    end
    object MtTestll2: TStringField
      FieldName = 'll2'
      Origin = 'metertest.ll2'
      Size = 10
    end
    object MtTestll3: TStringField
      FieldName = 'll3'
      Origin = 'metertest.ll3'
      Size = 10
    end
    object MtTestlltotal: TStringField
      FieldName = 'lltotal'
      Origin = 'metertest.lltotal'
      Size = 10
    end
    object MtTestgenave: TStringField
      FieldName = 'genave'
      Origin = 'metertest.genave'
      Size = 10
    end
    object MtTestremarks: TStringField
      FieldName = 'remarks'
      Origin = 'metertest.remarks'
      Size = 10
    end
  end
  object MTsummary: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from zanecometer.metertest')
    Left = 360
    Top = 312
    object MTsummaryidmtest: TIntegerField
      FieldName = 'idmtest'
    end
    object MTsummarymtestdate: TDateField
      FieldName = 'mtestdate'
    end
    object MTsummaryconsumer: TStringField
      FieldName = 'consumer'
      Size = 50
    end
    object MTsummaryaddress: TStringField
      FieldName = 'address'
      Size = 50
    end
    object MTsummarymeterbrand: TStringField
      FieldName = 'meterbrand'
    end
    object MTsummaryserial: TStringField
      FieldName = 'serial'
      Size = 30
    end
    object MTsummaryreading: TStringField
      FieldName = 'reading'
      Size = 10
    end
    object MTsummarytype: TStringField
      FieldName = 'type'
    end
    object MTsummaryvolts: TStringField
      FieldName = 'volts'
      Size = 10
    end
    object MTsummaryphase: TStringField
      FieldName = 'phase'
      Size = 10
    end
    object MTsummarykh: TStringField
      FieldName = 'kh'
    end
    object MTsummaryta: TStringField
      FieldName = 'ta'
    end
    object MTsummaryfl1: TStringField
      FieldName = 'fl1'
      Size = 10
    end
    object MTsummaryfl2: TStringField
      FieldName = 'fl2'
      Size = 10
    end
    object MTsummaryfl3: TStringField
      FieldName = 'fl3'
      Size = 10
    end
    object MTsummaryfltotal: TStringField
      FieldName = 'fltotal'
      Size = 10
    end
    object MTsummaryll1: TStringField
      FieldName = 'll1'
      Size = 10
    end
    object MTsummaryll2: TStringField
      FieldName = 'll2'
      Size = 10
    end
    object MTsummaryll3: TStringField
      FieldName = 'll3'
      Size = 10
    end
    object MTsummarylltotal: TStringField
      FieldName = 'lltotal'
      Size = 10
    end
    object MTsummarygenave: TStringField
      FieldName = 'genave'
      Size = 10
    end
    object MTsummaryremarks: TStringField
      FieldName = 'remarks'
      Size = 10
    end
  end
  object dsMTsummary: TMyDataSource
    DataSet = MTsummary
    Left = 360
    Top = 360
  end
  object Qisonumber: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      
        'Select * from isofmnumber where department = '#39'TSD'#39' and reporttyp' +
        'e = :rtype')
    Left = 456
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rtype'
        Value = nil
      end>
  end
end
