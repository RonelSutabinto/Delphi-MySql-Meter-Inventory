object MeterAcqForm: TMeterAcqForm
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'MeterAcqForm'
  ClientHeight = 432
  ClientWidth = 897
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
    Width = 897
    Height = 432
    AdaptiveColors = False
    Align = alClient
    Caption = 'Meter Acquisition '
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -12
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    ParentHeaderFont = False
    TabOrder = 0
    DesignSize = (
      895
      430)
    FullWidth = 897
    object NxLinkLabel1: TNxLinkLabel
      Left = 850
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
    object Edit1: TNxEdit
      Left = 9
      Top = 33
      Width = 201
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
      Text = 'Search Supplier'
      OnChange = Edit1Change
      OnClick = Edit1Click
    end
    object NxLinkLabel2: TNxLinkLabel
      Left = 374
      Top = 37
      Width = 20
      Height = 15
      Caption = 'Add'
      HoverColor = clRed
      TextDistance = 2
      VertSpacing = 2
      OnClick = NxLinkLabel2Click
    end
    object NxLinkLabel3: TNxLinkLabel
      Left = 408
      Top = 37
      Width = 19
      Height = 15
      Caption = 'Edit'
      HoverColor = clRed
      TextDistance = 2
      VertSpacing = 2
      OnClick = NxLinkLabel3Click
    end
    object NxLinkLabel4: TNxLinkLabel
      Left = 440
      Top = 37
      Width = 32
      Height = 15
      Caption = 'Delete'
      HoverColor = clRed
      TextDistance = 2
      VertSpacing = 2
      OnClick = NxLinkLabel4Click
    end
    object Edit2: TNxEdit
      Left = 480
      Top = 35
      Width = 201
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
      TabOrder = 7
      Text = 'Search Meter Number'
      OnChange = Edit2Change
      OnClick = Edit2Click
    end
    object NxLinkLabel5: TNxLinkLabel
      Left = 787
      Top = 37
      Width = 20
      Height = 15
      Caption = 'Add'
      HoverColor = clRed
      TextDistance = 2
      VertSpacing = 2
      OnClick = NxLinkLabel5Click
    end
    object NxLinkLabel6: TNxLinkLabel
      Left = 821
      Top = 37
      Width = 19
      Height = 15
      Caption = 'Edit'
      HoverColor = clRed
      TextDistance = 2
      VertSpacing = 2
      OnClick = NxLinkLabel6Click
    end
    object NxLinkLabel7: TNxLinkLabel
      Left = 853
      Top = 37
      Width = 32
      Height = 15
      Caption = 'Delete'
      HoverColor = clRed
      TextDistance = 2
      VertSpacing = 2
      OnClick = NxLinkLabel7Click
    end
    object MeterAcqPanel: TNxHeaderPanel
      Left = 646
      Top = 289
      Width = 358
      Height = 223
      AdaptiveColors = False
      Caption = 'Meter Acquisition Record'
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      ParentHeaderFont = False
      TabOrder = 11
      Visible = False
      DesignSize = (
        356
        221)
      FullWidth = 358
      object Label1: TLabel
        Left = 18
        Top = 45
        Width = 65
        Height = 13
        Caption = 'DateAcquired'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 32
        Top = 69
        Width = 51
        Height = 13
        Caption = 'RRNumber'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 32
        Top = 93
        Width = 51
        Height = 13
        Caption = 'DRNumber'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 36
        Top = 117
        Width = 47
        Height = 13
        Caption = 'SINumber'
        FocusControl = DBEdit4
      end
      object Label6: TLabel
        Left = 44
        Top = 165
        Width = 39
        Height = 13
        Caption = 'Address'
        FocusControl = DBEdit6
      end
      object Label7: TLabel
        Left = 59
        Top = 189
        Width = 24
        Height = 13
        Caption = 'Units'
        FocusControl = DBEdit7
      end
      object NxLinkLabel8: TNxLinkLabel
        Left = 285
        Top = 5
        Width = 51
        Height = 18
        Anchors = [akTop, akRight]
        Caption = 'Cancel'
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF5F5F6A21255504085004074E21255561616AFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E5060010F7E0011AD000EAE00
          0EAE0007A90006A000049401016351515DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          272D54001AB70012BF0004C30004C30004C30004C30004C30001BD0002A10001
          89282848FFFFFFFFFFFFFFFFFF42465C0021C50013CB0000CA3435C30909C500
          00CE0000CE0909C52223C00000CA0007A9000189444455FFFFFFFFFFFF001FA3
          001ED40000CE6E6EE2FFFFFFCDCEED1214CF1618CFD3D4EFFFFFFF5454DC0000
          CE0002A100016DFFFFFF4E5268002CDE000EDC0000E45555E9FFFFFFFFFFFFD3
          D4EFD3D4EFFFFFFFFFFFFF5555E90000E40000CA0004944E4E5F16286B002FE3
          0000E40000E40000E46F6FF0FFFFFFFFFFFFFFFFFFFFFFFF7878F10000E40000
          E40000DD0006A015164D011A750032E90000E90000E90000E91B22E7E7E9FAFF
          FFFFFFFFFFE7E9FA171EE70000E90000E90000E4000AA004074E0117720032E9
          0009EF0001F01A20EFDBE0F9FFFFFFFFFFFFFFFFFFFFFFFFD5DBF9171EEE0001
          F00000E4000AA002075015205E0038F4001CF20001F07475F9FFFFFFFFFFFF6E
          6EF96464F9FFFFFFFFFFFF8183F90001F0000DD60011AD16184F4E4E5F0030E5
          0036F40008F91919F9A2A2FD5E5EFB0000F90000F95E5EFBB4B4FD2C2CFA0001
          F00012BF0011AD4E4E5FFFFFFF000E89003BF80036F40000F90000F90000F900
          00F90000F90000F90000F90001F0001FCE001AB7000579FFFFFFFFFFFF444455
          0012BF003BF80038F40020F50008F90000F90000F90008F9001CEA0022CF001F
          C7000AA042465CFFFFFFFFFFFFFFFFFF2828480012BF0032E90038F40038F400
          32E90030E5002CDE002CDE001FCE000EAE27274CFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF505060010182000DD6001CEA0021F0001FEC0017E10009D10005794E4E
          5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF61616A22226800
          057900057922226860606DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        HoverColor = clRed
        TextDistance = 2
        Transparent = True
        VertSpacing = 2
        OnClick = NxLinkLabel8Click
        ExplicitLeft = 287
      end
      object NxLinkLabel9: TNxLinkLabel
        Left = 229
        Top = 4
        Width = 47
        Height = 22
        Anchors = [akTop, akRight]
        Caption = 'Save'
        Glyph.Data = {
          E6040000424DE604000000000000360000002800000014000000140000000100
          180000000000B004000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFEAEAEA949494D8D8D8F9F9F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF95
          95954747473131302A262E6C5A5692877FDAD5CFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA6A6A65E5E
          5E58514E2B6F8300AEFF0368AF162F643C3237938C80BAB6A9FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7A7A75C5C5C4D4E4F
          5E4C4184A8A133B2C600BAE200BAFF0034DB0E248B1E264453514C8F8F8FF0F0
          F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7A7A75B5B5B4A4E50623C23F9
          AD77F6B084FFE0C9CFC7AD7F739F002BFF0531E45A5542454545727272FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABABAB5B5B5B4E4C442238840025F63222
          896D3754B26547E2914A002BFC0732DA5F5A475C5C5C7C7C7CFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFACACAC5A5A5A4B4A46363C560430D90030FF002EFF
          002BFF0E29D80032FF0631DC5B57465959597B7B7BFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFAEAEAE5A5A5A47474744433E4D493A4C4A403E43582239900A
          32C50031FF0230E858554B5656557C7C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFAFAFAF5A5A5A44444432323230302F3332313A39344A473C5D5847443F
          2C4444435757545454547C7C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1
          B1B1595959424241312B2A2D29282F2D2D2E2D2D3939394848482E2E2E343432
          5A5A5A5252527C7C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B4B45857
          57424445679DAA5A777D494F503F3D3C3B3130443E3D2C28282C2A2A4F4F4F51
          51517C7C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B4B4595756424C4F
          86FDFF86F5FF8AF8FF87E6F47EC9D26FA1A6536C6D414343524D4D4D4D4D7C7C
          7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6B6B658555540484B90FFFF88
          EEFF85ECFF8DF5FF95FFFF98FFFF9CFFFFA0FFFF6E96964843437D7D7DFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B9B95654533F474990FFFF89EFFF8DF3
          FF8FF5FF8FF5FF91F7FF93F9FF9BFFFF73A4A6443E3E848484FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFBABABA5754543A434786F6FF8DF3FF8DF3FF8DF3FF
          8CF2FF8CF2FF92F8FF9AFFFF6F9FA2433D3C828282FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFBCBCBC56545339414670E0FF6FD5FF73D9FF77DDFF7DE3FF81
          E7FF84EAFF90FDFF6C9DA13F3939838383FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBEBEBE54525137414672EAFF70DCFF74DEFF76DFFF7AE1FF7EE5FF82E8
          FF8AF6FF6798A03F3938828282FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBB
          BBBB5050502624233D5B6A4D849D5AA2C168C3E575DFFF7AE5FF81EFFF8BFFFF
          689BA536302F838383FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0E09595
          958686866762605A5451473F3B413733433B3840484A455B61527C863B4B4F4C
          4A49F2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FCFCFCFFFFFFFFFFFFD7D7D7D0D0CFCECCCC989594868180C6C4C3FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF}
        HoverColor = clRed
        TextDistance = 2
        Transparent = True
        VertSpacing = 2
        OnClick = NxLinkLabel9Click
        ExplicitLeft = 231
      end
      object DBEdit1: TDBEdit
        Left = 88
        Top = 41
        Width = 250
        Height = 21
        Ctl3D = True
        DataField = 'DateAcquired'
        DataSource = MeterDataModule.dsMtAcq
        ParentCtl3D = False
        TabOrder = 2
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit2: TDBEdit
        Left = 88
        Top = 65
        Width = 250
        Height = 21
        Ctl3D = True
        DataField = 'RRNumber'
        DataSource = MeterDataModule.dsMtAcq
        ParentCtl3D = False
        TabOrder = 3
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit3: TDBEdit
        Left = 88
        Top = 89
        Width = 250
        Height = 21
        Ctl3D = True
        DataField = 'DRNumber'
        DataSource = MeterDataModule.dsMtAcq
        ParentCtl3D = False
        TabOrder = 4
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit4: TDBEdit
        Left = 88
        Top = 113
        Width = 250
        Height = 21
        Ctl3D = True
        DataField = 'SINumber'
        DataSource = MeterDataModule.dsMtAcq
        ParentCtl3D = False
        TabOrder = 5
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit5: TDBEdit
        Left = 88
        Top = 137
        Width = 250
        Height = 21
        Ctl3D = True
        DataField = 'Supplier'
        DataSource = MeterDataModule.dsMtAcq
        ParentCtl3D = False
        TabOrder = 6
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit6: TDBEdit
        Left = 88
        Top = 161
        Width = 250
        Height = 21
        Ctl3D = True
        DataField = 'Address'
        DataSource = MeterDataModule.dsMtAcq
        ParentCtl3D = False
        TabOrder = 7
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit7: TDBEdit
        Left = 88
        Top = 185
        Width = 250
        Height = 21
        Ctl3D = True
        DataField = 'Pcs'
        DataSource = MeterDataModule.dsMtAcq
        ParentCtl3D = False
        TabOrder = 8
        OnKeyPress = DBEdit1KeyPress
      end
      object NxLinkLabel10: TNxLinkLabel
        Left = 44
        Top = 141
        Width = 39
        Height = 15
        Caption = 'Supplier'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HoverColor = clRed
        ParentFont = False
        TextDistance = 2
        VertSpacing = 2
        OnClick = NxLinkLabel10Click
      end
    end
    object SupplierPanel: TNxHeaderPanel
      Left = 665
      Top = 326
      Width = 337
      Height = 350
      AdaptiveColors = False
      Caption = 'Suppliers on File'
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      ParentHeaderFont = False
      TabOrder = 12
      Visible = False
      DesignSize = (
        335
        348)
      FullWidth = 337
      object NxLinkLabel11: TNxLinkLabel
        Left = 221
        Top = 6
        Width = 30
        Height = 15
        Anchors = [akTop, akRight]
        Caption = 'Select'
        HoverColor = clRed
        TextDistance = 2
        Transparent = True
        VertSpacing = 2
        OnClick = NxLinkLabel11Click
        ExplicitLeft = 223
      end
      object NxLinkLabel12: TNxLinkLabel
        Left = 260
        Top = 6
        Width = 33
        Height = 15
        Anchors = [akTop, akRight]
        Caption = 'Cancel'
        HoverColor = clRed
        TextDistance = 2
        Transparent = True
        VertSpacing = 2
        OnClick = NxLinkLabel12Click
        ExplicitLeft = 262
      end
      object CRDBGrid3: TCRDBGrid1
        Left = 16
        Top = 42
        Width = 304
        Height = 295
        DataSource = MeterDataModule.dsSupplier
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'supplier'
            Title.Alignment = taCenter
            Title.Caption = 'Supplier'
            Width = 151
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'address'
            Title.Alignment = taCenter
            Title.Caption = 'Address'
            Width = 244
            Visible = True
          end>
      end
    end
    object MeterBrandPanel: TNxHeaderPanel
      Left = 439
      Top = 358
      Width = 201
      Height = 350
      AdaptiveColors = False
      Caption = 'Meter Brands'
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      ParentHeaderFont = False
      TabOrder = 14
      Visible = False
      DesignSize = (
        199
        348)
      FullWidth = 201
      object NxLinkLabel13: TNxLinkLabel
        Left = 106
        Top = 6
        Width = 30
        Height = 15
        Anchors = [akTop, akRight]
        Caption = 'Select'
        HoverColor = clRed
        TextDistance = 2
        Transparent = True
        VertSpacing = 2
        OnClick = NxLinkLabel13Click
        ExplicitLeft = 108
      end
      object NxLinkLabel18: TNxLinkLabel
        Left = 145
        Top = 6
        Width = 33
        Height = 15
        Anchors = [akTop, akRight]
        Caption = 'Cancel'
        HoverColor = clRed
        TextDistance = 2
        Transparent = True
        VertSpacing = 2
        OnClick = NxLinkLabel18Click
        ExplicitLeft = 147
      end
      object CRDBGrid4: TCRDBGrid1
        Left = 16
        Top = 42
        Width = 169
        Height = 295
        DataSource = MeterDataModule.dsMB
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'brand'
            Title.Alignment = taCenter
            Title.Caption = 'Meter Brand'
            Width = 139
            Visible = True
          end>
      end
    end
    object MeterInvPanel: TNxHeaderPanel
      Left = 28
      Top = 119
      Width = 501
      Height = 193
      AdaptiveColors = False
      Caption = ' KWHR Inventory Panel'
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      ParentHeaderFont = False
      TabOrder = 13
      Visible = False
      DesignSize = (
        499
        191)
      FullWidth = 501
      object CommonMeterBox: TGroupBox
        Left = 13
        Top = 39
        Width = 264
        Height = 139
        Caption = 'Common Meter Data'
        Color = clGradientInactiveCaption
        Ctl3D = True
        ParentBackground = False
        ParentColor = False
        ParentCtl3D = False
        TabOrder = 0
        DesignSize = (
          264
          139)
        object Label5: TLabel
          Left = 34
          Top = 53
          Width = 88
          Height = 13
          Caption = 'Meter Serial Prefix'
        end
        object Label10: TLabel
          Left = 67
          Top = 77
          Width = 55
          Height = 13
          Caption = 'Meter Type'
        end
        object Label11: TLabel
          Left = 45
          Top = 102
          Width = 71
          Height = 13
          Caption = 'Ampere Rating'
        end
        object CommonMB: TEdit
          Left = 125
          Top = 26
          Width = 121
          Height = 21
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 0
          OnKeyPress = DBEdit1KeyPress
        end
        object NxLinkLabel14: TNxLinkLabel
          Left = 18
          Top = 28
          Width = 104
          Height = 15
          Caption = 'Common Meter Brand'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HoverColor = clRed
          ParentFont = False
          TextDistance = 2
          VertSpacing = 2
          OnClick = NxLinkLabel14Click
        end
        object SerialPrefix: TEdit
          Left = 125
          Top = 50
          Width = 121
          Height = 21
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 2
          OnKeyPress = DBEdit1KeyPress
        end
        object ComboBox1: TComboBox
          Left = 125
          Top = 74
          Width = 121
          Height = 21
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 3
          Text = 'Mechanical'
          OnKeyPress = DBEdit1KeyPress
          Items.Strings = (
            'Mechanical'
            'Electronic'
            'Electro Mechanical'
            'Others')
        end
        object ComboBox2: TComboBox
          Left = 125
          Top = 98
          Width = 121
          Height = 21
          Ctl3D = True
          ItemIndex = 0
          ParentCtl3D = False
          TabOrder = 4
          Text = '15 (100)'
          OnKeyPress = DBEdit1KeyPress
          Items.Strings = (
            '15 (100)'
            '10 (30)'
            '10 (40)'
            '10 (60)'
            'CL 10'
            'CL 20'
            'CL 100'
            'CL 200'
            'Others')
        end
        object NxLinkLabel15: TNxLinkLabel
          Left = 225
          Top = 1
          Width = 29
          Height = 18
          Anchors = [akTop, akRight]
          Caption = 'Start'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HoverColor = clRed
          ParentFont = False
          TextDistance = 2
          VertSpacing = 2
          OnClick = NxLinkLabel15Click
        end
      end
      object NxLinkLabel16: TNxLinkLabel
        Left = 387
        Top = 4
        Width = 47
        Height = 22
        Anchors = [akTop, akRight]
        Caption = 'Save'
        Glyph.Data = {
          E6040000424DE604000000000000360000002800000014000000140000000100
          180000000000B004000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFEAEAEA949494D8D8D8F9F9F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF95
          95954747473131302A262E6C5A5692877FDAD5CFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA6A6A65E5E
          5E58514E2B6F8300AEFF0368AF162F643C3237938C80BAB6A9FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7A7A75C5C5C4D4E4F
          5E4C4184A8A133B2C600BAE200BAFF0034DB0E248B1E264453514C8F8F8FF0F0
          F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7A7A75B5B5B4A4E50623C23F9
          AD77F6B084FFE0C9CFC7AD7F739F002BFF0531E45A5542454545727272FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABABAB5B5B5B4E4C442238840025F63222
          896D3754B26547E2914A002BFC0732DA5F5A475C5C5C7C7C7CFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFACACAC5A5A5A4B4A46363C560430D90030FF002EFF
          002BFF0E29D80032FF0631DC5B57465959597B7B7BFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFAEAEAE5A5A5A47474744433E4D493A4C4A403E43582239900A
          32C50031FF0230E858554B5656557C7C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFAFAFAF5A5A5A44444432323230302F3332313A39344A473C5D5847443F
          2C4444435757545454547C7C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1
          B1B1595959424241312B2A2D29282F2D2D2E2D2D3939394848482E2E2E343432
          5A5A5A5252527C7C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B4B45857
          57424445679DAA5A777D494F503F3D3C3B3130443E3D2C28282C2A2A4F4F4F51
          51517C7C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B4B4595756424C4F
          86FDFF86F5FF8AF8FF87E6F47EC9D26FA1A6536C6D414343524D4D4D4D4D7C7C
          7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6B6B658555540484B90FFFF88
          EEFF85ECFF8DF5FF95FFFF98FFFF9CFFFFA0FFFF6E96964843437D7D7DFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B9B95654533F474990FFFF89EFFF8DF3
          FF8FF5FF8FF5FF91F7FF93F9FF9BFFFF73A4A6443E3E848484FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFBABABA5754543A434786F6FF8DF3FF8DF3FF8DF3FF
          8CF2FF8CF2FF92F8FF9AFFFF6F9FA2433D3C828282FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFBCBCBC56545339414670E0FF6FD5FF73D9FF77DDFF7DE3FF81
          E7FF84EAFF90FDFF6C9DA13F3939838383FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFBEBEBE54525137414672EAFF70DCFF74DEFF76DFFF7AE1FF7EE5FF82E8
          FF8AF6FF6798A03F3938828282FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBB
          BBBB5050502624233D5B6A4D849D5AA2C168C3E575DFFF7AE5FF81EFFF8BFFFF
          689BA536302F838383FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0E09595
          958686866762605A5451473F3B413733433B3840484A455B61527C863B4B4F4C
          4A49F2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FCFCFCFFFFFFFFFFFFD7D7D7D0D0CFCECCCC989594868180C6C4C3FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF}
        HoverColor = clRed
        TextDistance = 2
        Transparent = True
        VertSpacing = 2
        OnClick = NxLinkLabel16Click
      end
      object NxLinkLabel17: TNxLinkLabel
        Left = 441
        Top = 6
        Width = 51
        Height = 18
        Anchors = [akTop, akRight]
        Caption = 'Cancel'
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF5F5F6A21255504085004074E21255561616AFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E5060010F7E0011AD000EAE00
          0EAE0007A90006A000049401016351515DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          272D54001AB70012BF0004C30004C30004C30004C30004C30001BD0002A10001
          89282848FFFFFFFFFFFFFFFFFF42465C0021C50013CB0000CA3435C30909C500
          00CE0000CE0909C52223C00000CA0007A9000189444455FFFFFFFFFFFF001FA3
          001ED40000CE6E6EE2FFFFFFCDCEED1214CF1618CFD3D4EFFFFFFF5454DC0000
          CE0002A100016DFFFFFF4E5268002CDE000EDC0000E45555E9FFFFFFFFFFFFD3
          D4EFD3D4EFFFFFFFFFFFFF5555E90000E40000CA0004944E4E5F16286B002FE3
          0000E40000E40000E46F6FF0FFFFFFFFFFFFFFFFFFFFFFFF7878F10000E40000
          E40000DD0006A015164D011A750032E90000E90000E90000E91B22E7E7E9FAFF
          FFFFFFFFFFE7E9FA171EE70000E90000E90000E4000AA004074E0117720032E9
          0009EF0001F01A20EFDBE0F9FFFFFFFFFFFFFFFFFFFFFFFFD5DBF9171EEE0001
          F00000E4000AA002075015205E0038F4001CF20001F07475F9FFFFFFFFFFFF6E
          6EF96464F9FFFFFFFFFFFF8183F90001F0000DD60011AD16184F4E4E5F0030E5
          0036F40008F91919F9A2A2FD5E5EFB0000F90000F95E5EFBB4B4FD2C2CFA0001
          F00012BF0011AD4E4E5FFFFFFF000E89003BF80036F40000F90000F90000F900
          00F90000F90000F90000F90001F0001FCE001AB7000579FFFFFFFFFFFF444455
          0012BF003BF80038F40020F50008F90000F90000F90008F9001CEA0022CF001F
          C7000AA042465CFFFFFFFFFFFFFFFFFF2828480012BF0032E90038F40038F400
          32E90030E5002CDE002CDE001FCE000EAE27274CFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF505060010182000DD6001CEA0021F0001FEC0017E10009D10005794E4E
          5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF61616A22226800
          057900057922226860606DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        HoverColor = clRed
        TextDistance = 2
        Transparent = True
        VertSpacing = 2
        OnClick = NxLinkLabel17Click
      end
      object Panel1: TPanel
        Left = 283
        Top = 28
        Width = 217
        Height = 163
        TabOrder = 3
        Visible = False
        object Label8: TLabel
          Left = 14
          Top = 114
          Width = 29
          Height = 13
          Caption = 'Count'
          FocusControl = DBEdit13
        end
        object Label15: TLabel
          Left = 17
          Top = 90
          Width = 26
          Height = 13
          Caption = 'Serial'
          FocusControl = DBEdit13
        end
        object Label14: TLabel
          Left = 6
          Top = 67
          Width = 37
          Height = 13
          Caption = 'Ampere'
          FocusControl = DBEdit12
        end
        object Label13: TLabel
          Left = 19
          Top = 43
          Width = 24
          Height = 13
          Caption = 'Type'
          FocusControl = DBEdit11
        end
        object Label12: TLabel
          Left = 15
          Top = 20
          Width = 28
          Height = 13
          Caption = 'Brand'
          FocusControl = DBEdit10
        end
        object DBEdit10: TDBEdit
          Left = 49
          Top = 15
          Width = 150
          Height = 21
          DataField = 'Brand'
          DataSource = MeterDataModule.dsMtInv
          ReadOnly = True
          TabOrder = 0
        end
        object SCount: TEdit
          Left = 49
          Top = 111
          Width = 150
          Height = 21
          AutoSelect = False
          TabOrder = 4
          Text = '0'
          OnKeyPress = SCountKeyPress
        end
        object NextMeterLink: TNxLinkLabel
          Left = 126
          Top = 138
          Width = 73
          Height = 18
          Caption = 'Next Meter'
          Color = clBtnFace
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF6A6660513F274C310C4C310C4F3D276A6660FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D5850714A0F9F68149C631396
            5C12965C12965C12925811633B0B5D5850FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            4E422CA06D16A06D16965C12965C12965C12925811965C12965C129258118951
            10483A29FFFFFFFFFFFFFFFFFF585144A77418A06D169C6313965C129C631396
            5C129C6313965C129C63139C6313965C12895110554E45FFFFFFFFFFFF886014
            B07A19A06D169E66189C6313A06D16A06D169C63139E66189C6313A06D16A06D
            16965C126D410CFFFFFF635D50B5811BAC7618A77117DAC4A1EDE5DBB68C52A7
            7117D6BD96EFE8E0B88F58A06D16A77117A169159258115D58505C4922B9861C
            B07A19B07A19E2D0AFFEFEFEFEFEFEDBC7A9E2D0B3FEFEFEFEFEFEE2D0B3B280
            2DAC7618965C124C361B5E450EBD8A1DB07A19B5811BE4D1AEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFEFEE2D0AFB07A199C63134B2E095E450EC08D1E
            BD8A1DB9861CE7D5B0FEFEFEFEFEFEE9D8B5EADABAFEFEFEFEFEFEEADABAC194
            36B5811B9C63134B2E09543F1CC2901FBD8A1DC08D1EE6D2A7F7F1E4D3AF62BD
            8A1DE3CC9CF8F3E7D4B368BD8A1DC08D1EB07A199C63134C361B5D574EB9861C
            C2901FC2901FC69526C69526C2901FC2901FC69526C69526C2901FC2901FC08D
            1EA06D169C63135E5650FFFFFF794D0DC2901FC2901FC69526CC9B21C69526CC
            9B21C69526CC9B21C69526C89620AE7817A771176D410CFFFFFFFFFFFF554E45
            A06D16C89620C2901FC2901FCC9B21CC9B21CC9B21C89620C08D1EAE7817A771
            17965C12554E45FFFFFFFFFFFFFFFFFF4F3D279E680EC18C14C2901FC08D1EBD
            8A1DB9861CB9861CAE7817AE78179E680E483A29FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF5D5850704805B27B0CC18C14C18C14C18C14BA8411B27B0C7048055D57
            4EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6A66605C492262
            47056348055C49226A6660FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          HoverColor = clRed
          ParentColor = False
          TextDistance = 2
          Transparent = True
          VertSpacing = 2
          OnClick = NextMeterLinkClick
        end
        object DBEdit13: TDBEdit
          Left = 49
          Top = 87
          Width = 150
          Height = 21
          DataField = 'SerialNumber'
          DataSource = MeterDataModule.dsMtInv
          TabOrder = 3
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit12: TDBEdit
          Left = 49
          Top = 63
          Width = 150
          Height = 21
          DataField = 'Amphere'
          DataSource = MeterDataModule.dsMtInv
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit11: TDBEdit
          Left = 49
          Top = 39
          Width = 150
          Height = 21
          DataField = 'Type'
          DataSource = MeterDataModule.dsMtInv
          ReadOnly = True
          TabOrder = 1
        end
      end
    end
    object CRDBGrid1: TCRDBGrid1
      Left = 9
      Top = 58
      Width = 465
      Height = 364
      DataSource = MeterDataModule.dsMtAcq
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = CRDBGrid1CellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'DateAcquired'
          Title.Alignment = taCenter
          Title.Caption = 'Date Acquired'
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Supplier'
          Title.Alignment = taCenter
          Width = 142
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Address'
          Title.Alignment = taCenter
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Pcs'
          Title.Alignment = taCenter
          Title.Caption = 'Units'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RRNumber'
          Title.Alignment = taCenter
          Width = 124
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DRNumber'
          Title.Alignment = taCenter
          Width = 124
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SINumber'
          Title.Alignment = taCenter
          Width = 124
          Visible = True
        end>
    end
    object CRDBGrid2: TCRDBGrid1
      Left = 480
      Top = 58
      Width = 406
      Height = 364
      DataSource = MeterDataModule.dsMtInv
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 6
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'SerialNumber'
          Title.Alignment = taCenter
          Title.Caption = 'Serial Number'
          Width = 124
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Brand'
          Title.Alignment = taCenter
          Width = 124
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Amphere'
          Title.Alignment = taCenter
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Type'
          Title.Alignment = taCenter
          Width = 184
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Accuracy'
          Title.Alignment = taCenter
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Status'
          Title.Alignment = taCenter
          Width = 64
          Visible = True
        end>
    end
  end
  object InsertMeterTransaction: TMyQuery
    Connection = MeterDataModule.MyConnection1
    SQL.Strings = (
      'insert ignore into metertransaction'
      '(datetrans,'
      ' transdesc,'
      ' name,'
      ' idMeterInv)'
      'values'
      '(:datetrans,'
      ' '#39'CALIBRATION'#39','
      ' '#39'METER LAB'#39','
      ' :idMeterInv)')
    Left = 72
    Top = 320
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datetrans'
      end
      item
        DataType = ftUnknown
        Name = 'idMeterInv'
      end>
  end
end
