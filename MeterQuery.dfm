object MeterQueryForm: TMeterQueryForm
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'MeterQueryForm'
  ClientHeight = 497
  ClientWidth = 972
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object NxHeaderPanel1: TNxHeaderPanel
    Left = 0
    Top = 0
    Width = 972
    Height = 497
    AdaptiveColors = False
    Align = alClient
    BorderWidth = 3
    Caption = 'Meter Query'
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -12
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    ParentHeaderFont = False
    TabOrder = 0
    DesignSize = (
      966
      491)
    FullWidth = 972
    object Label2: TLabel
      Left = 18
      Top = 307
      Width = 137
      Height = 13
      Caption = 'Billing Master Service History'
    end
    object Label3: TLabel
      Left = 370
      Top = 38
      Width = 65
      Height = 13
      Caption = 'Meter History'
    end
    object NxLinkLabel1: TNxLinkLabel
      Left = 927
      Top = 5
      Width = 31
      Height = 15
      Anchors = [akTop, akRight]
      Caption = 'Close'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HoverColor = clRed
      ParentFont = False
      TextDistance = 2
      Transparent = True
      VertSpacing = 2
      OnClick = NxLinkLabel1Click
    end
    object QueryOption: TRadioGroup
      Left = 16
      Top = 40
      Width = 337
      Height = 49
      Caption = 'Query Options'
      Columns = 3
      Ctl3D = True
      Items.Strings = (
        'Meter Number'
        'Account Number'
        'Consumer Name')
      ParentCtl3D = False
      TabOrder = 1
      OnClick = QueryOptionClick
    end
    object Edit1: TNxEdit
      Left = 16
      Top = 99
      Width = 337
      Height = 21
      Glyph.Data = {
        06030000424D060300000000000036000000280000000F0000000F0000000100
        180000000000D002000000000000000000000000000000000000FFFFFFD0CFCB
        D9DBD9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000AAA59F555978906D76B4B6B3FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000008ABBD92E95FB
        646DAC947175B4B6B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000EAF7FF4ABBFF3395F3646CAB967175B3B7B4FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFEBF4FE
        49BBFF3295F5636BAA967175C5C6C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFECF4FE4CBDFF2E95F85B669DA3A09CC9
        C7CB957D808E7173927C7F9C9B9DFAFCFDFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFE8F3FF64C3FFA4A8A7947A7CD8A98AFEEFBEFFFFD7FFFDD3D2B5A16C59
        5BEEF1F1FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCB9BCF7C69CFF
        FDC9FFFFCDFFFFDEFFFFEAFFFFFFE5CEC474686AFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFD9A894FFF9C6FFE7B2FFFFD1FFFFE5FFFFFAFFFFFFFFFF
        F0917168E0E2E3000000FFFFFFFFFFFFFFFFFFFFFFFFF3EEF2EAC7A5FFE8B4FF
        E4B0FFFFCFFFFFE1FFFFEDFFFFEAFFFFE1C5AC91C4C5C8000000FFFFFFFFFFFF
        FFFFFFFFFFFFF3ECF0ECD0AFFFE3ADFFE3B1FFF7C2FFFFD3FFFFDBFFFFDAFFFF
        D6C9A98BC8C8CC000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCB49BFFFFE0FF
        E1BBFFDDAAFFF2BEFFF6C2FFF4BFFFFFCDA67D6EF0F4F6000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFDCBFBDFAF1DFFFFFFFFFE2B8FFD8A6FFDCA8FFF9C5ECC0
        96AF9DA0FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDAAA9E9
        D6C2FFFFD5FFF8C4FFF7C2E4B490BA9B9CFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5D7D9C7AAA5D7B7AFDDBFBEE8E1E5FFFF
        FFFFFFFFFFFFFF000000}
      TabOrder = 2
      OnKeyPress = Edit1KeyPress
    end
    object NxLinkLabel2: TNxLinkLabel
      Left = 254
      Top = 126
      Width = 99
      Height = 15
      Caption = 'View Duplicate Serial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HoverColor = clRed
      ParentFont = False
      TextDistance = 2
      VertSpacing = 2
      OnClick = NxLinkLabel2Click
    end
    object NxLinkLabel3: TNxLinkLabel
      Left = 19
      Top = 126
      Width = 63
      Height = 15
      Caption = 'Billing Master'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HoverColor = clRed
      ParentFont = False
      TextDistance = 2
      VertSpacing = 2
      OnClick = NxLinkLabel3Click
    end
    object CRDBGrid1: TCRDBGrid1
      Left = 16
      Top = 147
      Width = 337
      Height = 153
      DataSource = dsMaster
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = CRDBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'AccountNumber'
          Title.Caption = 'Account #'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ConnCode'
          Title.Alignment = taCenter
          Title.Caption = 'Conn'
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Name'
          Title.Alignment = taCenter
          Width = 144
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Serial'
          Title.Alignment = taCenter
          Width = 124
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Address'
          Title.Alignment = taCenter
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RateCode'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MeterBrand'
          Width = 124
          Visible = True
        end>
    end
    object CRDBGrid2: TCRDBGrid1
      Left = 16
      Top = 325
      Width = 337
      Height = 153
      DataSource = dsServiceHistory
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Date'
          Title.Alignment = taCenter
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'accountnumber'
          Title.Caption = 'Account #'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ServiceType'
          Title.Alignment = taCenter
          Title.Caption = 'Service Type'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TransactionDetail'
          Title.Alignment = taCenter
          Title.Caption = 'Transaction Detail'
          Width = 300
          Visible = True
        end>
    end
    object CRDBGrid3: TCRDBGrid1
      Left = 368
      Top = 56
      Width = 590
      Height = 422
      DataSource = dsMeter
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'datetrans'
          Title.Alignment = taCenter
          Title.Caption = 'Date'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'accountnumber'
          Title.Alignment = taCenter
          Title.Caption = 'Account #'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'name'
          Title.Alignment = taCenter
          Title.Caption = 'Name'
          Width = 151
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'transdesc'
          Title.Alignment = taCenter
          Title.Caption = 'Description'
          Width = 102
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'brand'
          Title.Alignment = taCenter
          Title.Caption = 'Brand'
          Width = 124
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'reading'
          Title.Caption = 'Reading'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'serialnumber'
          Title.Alignment = taCenter
          Title.Caption = 'Serial Number'
          Width = 124
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'terminalseal'
          Title.Alignment = taCenter
          Title.Caption = 'Terminal Seal'
          Width = 124
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'calibrationseal1'
          Title.Alignment = taCenter
          Title.Caption = 'Calibration Seal 1'
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'calibrationseal2'
          Title.Alignment = taCenter
          Title.Caption = 'Calibration Seal 2'
          Width = 94
          Visible = True
        end>
    end
  end
  object Master: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from master')
    Left = 472
    Top = 104
    object MasterCode: TIntegerField
      FieldName = 'Code'
    end
    object MasterArea: TStringField
      FieldName = 'Area'
      FixedChar = True
      Size = 3
    end
    object MasterBook: TStringField
      FieldName = 'Book'
      FixedChar = True
      Size = 3
    end
    object MasterSequence: TStringField
      FieldName = 'Sequence'
      Size = 4
    end
    object MasterAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 10
    end
    object MasterName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object MasterAddress: TStringField
      FieldName = 'Address'
      Size = 50
    end
    object MasterRateCode: TStringField
      FieldName = 'RateCode'
      FixedChar = True
      Size = 1
    end
    object MasterConsCode: TStringField
      FieldName = 'ConsCode'
      FixedChar = True
      Size = 1
    end
    object MasterConnCode: TStringField
      FieldName = 'ConnCode'
      FixedChar = True
      Size = 1
    end
    object MasterTransformer: TStringField
      FieldName = 'Transformer'
      Size = 80
    end
    object MasterMeterBrand: TStringField
      FieldName = 'MeterBrand'
    end
    object MasterSerial: TStringField
      FieldName = 'Serial'
    end
    object MasterMultiplier: TFloatField
      FieldName = 'Multiplier'
    end
    object MasterNewConnectionDate: TDateField
      FieldName = 'NewConnectionDate'
    end
    object MasterReconnectionDate: TDateField
      FieldName = 'ReconnectionDate'
    end
    object MasterDisconnectionDate: TDateField
      FieldName = 'DisconnectionDate'
    end
    object MasterPreviousReadingDate: TDateField
      FieldName = 'PreviousReadingDate'
    end
    object MasterPresentReadingDate: TDateField
      FieldName = 'PresentReadingDate'
    end
    object MasterPreviousReadingKWH: TFloatField
      FieldName = 'PreviousReadingKWH'
    end
    object MasterPresentReadingKWH: TFloatField
      FieldName = 'PresentReadingKWH'
    end
    object MasterDiff: TFloatField
      FieldName = 'Diff'
    end
    object MasterDemand: TFloatField
      FieldName = 'Demand'
    end
    object MasterFlatRateWattage: TFloatField
      FieldName = 'FlatRateWattage'
    end
    object MasterFeedBackCode: TStringField
      FieldName = 'FeedBackCode'
      FixedChar = True
      Size = 2
    end
    object MasterCM: TStringField
      FieldName = 'CM'
      FixedChar = True
      Size = 1
    end
    object MasterCMMultiplier: TFloatField
      FieldName = 'CMMultiplier'
    end
    object MasterCMPreviousReadingKWH: TFloatField
      FieldName = 'CMPreviousReadingKWH'
    end
    object MasterCMPresentReadingKWH: TFloatField
      FieldName = 'CMPresentReadingKWH'
    end
    object MasterCMKilowattHour: TFloatField
      FieldName = 'CMKilowattHour'
    end
    object MasterCMDemand: TFloatField
      FieldName = 'CMDemand'
    end
    object MasterKilowattHour: TFloatField
      FieldName = 'KilowattHour'
    end
    object MasterKilowattUsed: TFloatField
      FieldName = 'KilowattUsed'
    end
    object MasterGenSysCharge: TFloatField
      FieldName = 'GenSysCharge'
    end
    object MasterHostCommCharge: TFloatField
      FieldName = 'HostCommCharge'
    end
    object MasterForexCharge: TFloatField
      FieldName = 'ForexCharge'
    end
    object MasterTCDemandCharge: TFloatField
      FieldName = 'TCDemandCharge'
    end
    object MasterTCTransSystemCharge: TFloatField
      FieldName = 'TCTransSystemCharge'
    end
    object MasterSystemLossCharge: TFloatField
      FieldName = 'SystemLossCharge'
    end
    object MasterDCDemandCharge: TFloatField
      FieldName = 'DCDemandCharge'
    end
    object MasterDCDistributionCharge: TFloatField
      FieldName = 'DCDistributionCharge'
    end
    object MasterSCRetCustCharge: TFloatField
      FieldName = 'SCRetCustCharge'
    end
    object MasterSCSupplySysCharge: TFloatField
      FieldName = 'SCSupplySysCharge'
    end
    object MasterMCRetailCustCharge: TFloatField
      FieldName = 'MCRetailCustCharge'
    end
    object MasterMCSystemCharge: TFloatField
      FieldName = 'MCSystemCharge'
    end
    object MasterUCNPCStrandedDebts: TFloatField
      FieldName = 'UCNPCStrandedDebts'
    end
    object MasterUCNPCStrandedContCost: TFloatField
      FieldName = 'UCNPCStrandedContCost'
    end
    object MasterUCDUStrandedContCost: TFloatField
      FieldName = 'UCDUStrandedContCost'
    end
    object MasterUCME: TFloatField
      FieldName = 'UCME'
    end
    object MasterUCEqTaxesAndRoyalties: TFloatField
      FieldName = 'UCEqTaxesAndRoyalties'
    end
    object MasterUCEC: TFloatField
      FieldName = 'UCEC'
    end
    object MasterUCCrossSubRemoval: TFloatField
      FieldName = 'UCCrossSubRemoval'
    end
    object MasterICCrossSubsidyCharge: TFloatField
      FieldName = 'ICCrossSubsidyCharge'
    end
    object MasterPowerActRateRed: TFloatField
      FieldName = 'PowerActRateRed'
    end
    object MasterLifelineDiscSubs: TFloatField
      FieldName = 'LifelineDiscSubs'
    end
    object MasterLoanCondo: TFloatField
      FieldName = 'LoanCondo'
    end
    object MasterTransformerRental: TFloatField
      FieldName = 'TransformerRental'
    end
    object MasterOCCode1: TStringField
      FieldName = 'OCCode1'
      Size = 10
    end
    object MasterOCAmount1: TFloatField
      FieldName = 'OCAmount1'
    end
    object MasterOCMo1: TFloatField
      FieldName = 'OCMo1'
    end
    object MasterOCTotal1: TFloatField
      FieldName = 'OCTotal1'
    end
    object MasterOCCode2: TStringField
      FieldName = 'OCCode2'
      Size = 10
    end
    object MasterOCAmount2: TFloatField
      FieldName = 'OCAmount2'
    end
    object MasterOCMo2: TFloatField
      FieldName = 'OCMo2'
    end
    object MasterOCTotal2: TFloatField
      FieldName = 'OCTotal2'
    end
    object MasterOCCode3: TStringField
      FieldName = 'OCCode3'
      Size = 10
    end
    object MasterOCAmount3: TFloatField
      FieldName = 'OCAmount3'
    end
    object MasterOCMo3: TFloatField
      FieldName = 'OCMo3'
    end
    object MasterOCTotal3: TFloatField
      FieldName = 'OCTotal3'
    end
    object MasterTotalBill: TFloatField
      FieldName = 'TotalBill'
    end
    object MasterBillNumber: TStringField
      FieldName = 'BillNumber'
      Size = 15
    end
    object MasterOEBRNumber: TStringField
      FieldName = 'OEBRNumber'
      Size = 10
    end
    object MasterBillMonth: TStringField
      FieldName = 'BillMonth'
      Size = 4
    end
    object MasterDeleteRemarks: TStringField
      FieldName = 'DeleteRemarks'
      Size = 30
    end
    object MasterPoleNumber: TStringField
      FieldName = 'PoleNumber'
      Size = 80
    end
    object MasterFeederNumber: TStringField
      FieldName = 'FeederNumber'
    end
    object MasterXFormerQty: TIntegerField
      FieldName = 'XFormerQty'
    end
    object MasterXFormerKVA: TStringField
      FieldName = 'XFormerKVA'
    end
    object MasterAge30: TFloatField
      FieldName = 'Age30'
    end
    object MasterAge60: TFloatField
      FieldName = 'Age60'
    end
    object MasterAge90: TFloatField
      FieldName = 'Age90'
    end
    object MasterAge120: TFloatField
      FieldName = 'Age120'
    end
    object MasterAgeOver120: TFloatField
      FieldName = 'AgeOver120'
    end
    object MasterAgeTotal: TFloatField
      FieldName = 'AgeTotal'
    end
    object MasterTotalPayments: TFloatField
      FieldName = 'TotalPayments'
    end
    object MasterARBalance: TFloatField
      FieldName = 'ARBalance'
    end
    object MasterLCCustMo: TFloatField
      FieldName = 'LCCustMo'
    end
    object MasterPrevYearAdjPowerCost: TFloatField
      FieldName = 'PrevYearAdjPowerCost'
    end
    object MasterSysLossUnderRecov: TFloatField
      FieldName = 'SysLossUnderRecov'
    end
    object MasterVATDisc: TFloatField
      FieldName = 'VATDisc'
    end
    object MasterVATDiscAmt: TFloatField
      FieldName = 'VATDiscAmt'
    end
    object MasterVATDistDiscAmt: TFloatField
      FieldName = 'VATDistDiscAmt'
    end
    object MasterVATGenCoDiscAmt: TFloatField
      FieldName = 'VATGenCoDiscAmt'
    end
    object MasterVATTransCoDiscAmt: TFloatField
      FieldName = 'VATTransCoDiscAmt'
    end
    object MasterVATSystemLossDiscAmt: TFloatField
      FieldName = 'VATSystemLossDiscAmt'
    end
    object MasterVATDist: TFloatField
      FieldName = 'VATDist'
    end
    object MasterVATGenCO: TFloatField
      FieldName = 'VATGenCO'
    end
    object MasterVATTransCO: TFloatField
      FieldName = 'VATTransCO'
    end
    object MasterVATSystemLossGenCO: TFloatField
      FieldName = 'VATSystemLossGenCO'
    end
    object MasterVATSystemLossTransCO: TFloatField
      FieldName = 'VATSystemLossTransCO'
    end
    object MasterVAT: TFloatField
      FieldName = 'VAT'
    end
    object MasterDiffBillPerKwhr: TFloatField
      FieldName = 'DiffBillPerKwhr'
    end
    object MasterDiffBillPerKW: TFloatField
      FieldName = 'DiffBillPerKW'
    end
    object MasterDiffBillPerCust: TFloatField
      FieldName = 'DiffBillPerCust'
    end
    object MasterMCC: TFloatField
      FieldName = 'MCC'
    end
    object MasterPKVROebrNumber: TStringField
      FieldName = 'PKVROebrNumber'
    end
    object MasterPKVRBillMonth: TStringField
      FieldName = 'PKVRBillMonth'
      Size = 4
    end
    object MasterPKVRAmount: TFloatField
      FieldName = 'PKVRAmount'
    end
    object MasterSCDisc: TFloatField
      FieldName = 'SCDisc'
    end
    object MasterWRateCode: TStringField
      FieldName = 'WRateCode'
      Size = 1
    end
    object MasterSCAmt4Disc: TFloatField
      FieldName = 'SCAmt4Disc'
    end
    object MasterDWLEN1: TFloatField
      FieldName = 'DWLEN1'
    end
    object MasterDWLEN2: TFloatField
      FieldName = 'DWLEN2'
    end
  end
  object MyConnection1: TMyConnection
    Username = '19zan72'
    LoginPrompt = False
    Left = 400
    Top = 104
    EncryptedPassword = '8FFF9EFF8CFF9CFF9EFF93FF85FF9EFF91FF'
  end
  object dsMaster: TMyDataSource
    DataSet = Master
    Left = 472
    Top = 160
  end
  object dsServiceHistory: TMyDataSource
    DataSet = ServiceHistory
    Left = 549
    Top = 160
  end
  object ServiceHistory: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select * from'
      '(( select Date, '
      '          accountnumber, '
      '          '#39'Disconnection'#39' as ServiceType, '
      
        '          Concat(Name,'#39'  SN '#39',serialNumber,'#39' RDG '#39',lastreading) ' +
        'as TransactionDetail'
      '          from Disconnection where code = :code )'
      ' union'
      '( select Date, '
      '          accountnumber, '
      '          '#39'Reconnection'#39' as ServiceType,'
      
        '          Concat(Name,'#39'  SN '#39',serialNumber,'#39' RDG '#39',InitialReadin' +
        'g) as TransactionDetail'
      '          from Reconnection where code = :code )'
      ' union'
      '( select Date, '
      '          accountnumber, '
      '          '#39'Change Meter'#39' as ServiceType, '
      '          Concat(Name,'
      
        '                 '#39'  OLD SN '#39',OldSerialNumber,'#39' RDG '#39',LastReading' +
        ','
      
        '                 '#39' | NEW SN '#39',NewMeterSerial,'#39' RDG '#39',InitialRead' +
        'ing) as TransactionDetail'
      '          from ChangeMeter where code = :code )'
      'union'
      '( select Date, '
      '          accountnumber, '
      '          '#39'Change Name'#39' as ServiceType, '
      '          Concat('#39'  Old Name '#39',OldName,'
      '                 '#39' | New Name '#39',NewName) as TransactionDetail'
      '          from ChangeName where code = :code )'
      'union'
      '( select Date, '
      '          '#39#39' as AccountNumber, '
      '          '#39'Transfer Area'#39' as ServiceType, '
      
        '          Concat('#39'Old Address : Area-'#39',OldArea,'#39' Book-'#39',OldBook,' +
        #39' Acct-'#39',OldAccountNumber,'#39' '#39',OldAddress,'
      
        '                 '#39' | New Address : Area-'#39',NewArea,'#39' Book-'#39',NewBo' +
        'ok,'#39' Accct-'#39',NewAccountNumber,'#39' '#39',NewAddress) as TransactionDeta' +
        'il'
      '          from TransferArea where code = :code )'
      ') Service'
      'order by date')
    Left = 552
    Top = 104
    ParamData = <
      item
        DataType = ftString
        Name = 'code'
        Value = '100'
      end
      item
        DataType = ftString
        Name = 'code'
        Value = '100'
      end
      item
        DataType = ftString
        Name = 'code'
        Value = '100'
      end
      item
        DataType = ftString
        Name = 'code'
        Value = '100'
      end
      item
        DataType = ftString
        Name = 'code'
        Value = '100'
      end>
    object ServiceHistoryDate: TDateField
      FieldName = 'Date'
    end
    object ServiceHistoryaccountnumber: TStringField
      FieldName = 'accountnumber'
      Size = 10
    end
    object ServiceHistoryServiceType: TStringField
      FieldName = 'ServiceType'
      Size = 13
    end
    object ServiceHistoryTransactionDetail: TStringField
      FieldName = 'TransactionDetail'
      Size = 160
    end
  end
  object Meter: TMyQuery
    Connection = MeterDataModule.MyConnection1
    SQL.Strings = (
      'select mt.datetrans,'
      '       mt.accountnumber,'
      '       mt.name,'
      '       mt.transdesc,'
      '       mt.terminalseal,'
      '       mt.reading,'
      '       mt.calibrationseal1,'
      '       mt.calibrationseal2,'
      '       mi.brand,'
      '       mi.serialnumber'
      'from metertransaction mt'
      'join meterinv mi on (mi.idmeterinv = mt.idmeterinv)')
    Left = 632
    Top = 104
    object Meterdatetrans: TDateField
      FieldName = 'datetrans'
    end
    object Meteraccountnumber: TStringField
      FieldName = 'accountnumber'
      Size = 10
    end
    object Metername: TStringField
      FieldName = 'name'
      Size = 50
    end
    object Metertransdesc: TStringField
      FieldName = 'transdesc'
    end
    object Meterbrand: TStringField
      FieldName = 'brand'
    end
    object Meterserialnumber: TStringField
      FieldName = 'serialnumber'
    end
    object Meterterminalseal: TStringField
      FieldName = 'terminalseal'
    end
    object Metercalibrationseal1: TStringField
      FieldName = 'calibrationseal1'
      Size = 15
    end
    object Metercalibrationseal2: TStringField
      FieldName = 'calibrationseal2'
      Size = 15
    end
    object Meterreading: TFloatField
      FieldName = 'reading'
    end
  end
  object dsMeter: TMyDataSource
    DataSet = Meter
    Left = 631
    Top = 160
  end
  object Duplicate: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'select code, '
      '       accountnumber, '
      '       name, '
      '       ratecode, '
      '       conncode, '
      '       serial from master a where exists'
      ' (select serial, count(accountnumber) taccount from master b'
      '  where ifnull(serial,0) <> 0 and a.serial = b.serial'
      '   group by serial'
      '   having taccount > 1)'
      'order by serial asc')
    Left = 712
    Top = 104
    object Duplicatecode: TIntegerField
      FieldName = 'code'
    end
    object Duplicateaccountnumber: TStringField
      FieldName = 'accountnumber'
      Size = 10
    end
    object Duplicatename: TStringField
      FieldName = 'name'
      Size = 50
    end
    object Duplicateratecode: TStringField
      FieldName = 'ratecode'
      FixedChar = True
      Size = 1
    end
    object Duplicateconncode: TStringField
      FieldName = 'conncode'
      FixedChar = True
      Size = 1
    end
    object Duplicateserial: TStringField
      FieldName = 'serial'
    end
  end
  object dsDuplicate: TMyDataSource
    DataSet = Duplicate
    Left = 711
    Top = 160
  end
end
