object MSTransactionForm: TMSTransactionForm
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'MSTransactionForm'
  ClientHeight = 419
  ClientWidth = 724
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StockTransferPanel: TNxHeaderPanel
    Left = 271
    Top = 47
    Width = 256
    Height = 131
    AdaptiveColors = False
    Caption = 'Stock Transfer Record'
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    ParentHeaderFont = False
    TabOrder = 1
    Visible = False
    DesignSize = (
      254
      129)
    FullWidth = 256
    object Label25: TLabel
      Left = 47
      Top = 44
      Width = 23
      Height = 13
      Caption = 'Date'
      FocusControl = DBEdit13
    end
    object Label26: TLabel
      Left = 20
      Top = 69
      Width = 50
      Height = 13
      Caption = 'Reference'
      FocusControl = DBEdit14
    end
    object Label27: TLabel
      Left = 17
      Top = 94
      Width = 53
      Height = 13
      Caption = 'Description'
      FocusControl = DBEdit15
    end
    object DBEdit13: TDBEdit
      Left = 72
      Top = 42
      Width = 165
      Height = 19
      Ctl3D = False
      DataField = 'DateTransferred'
      DataSource = MeterDataModule.dsKMTrans
      ParentCtl3D = False
      TabOrder = 0
    end
    object DBEdit14: TDBEdit
      Left = 72
      Top = 67
      Width = 165
      Height = 19
      Ctl3D = False
      DataField = 'Reference'
      DataSource = MeterDataModule.dsKMTrans
      ParentCtl3D = False
      TabOrder = 1
    end
    object DBEdit15: TDBEdit
      Left = 72
      Top = 92
      Width = 165
      Height = 19
      Ctl3D = False
      DataField = 'Description'
      DataSource = MeterDataModule.dsKMTrans
      ParentCtl3D = False
      TabOrder = 2
    end
    object NxLinkLabel35: TNxLinkLabel
      Left = 149
      Top = 5
      Width = 25
      Height = 15
      Anchors = [akTop, akRight]
      Caption = 'Save'
      HoverColor = clWindowText
      TextDistance = 2
      Transparent = True
      VertSpacing = 2
      OnClick = NxLinkLabel35Click
    end
    object NxLinkLabel36: TNxLinkLabel
      Left = 180
      Top = 5
      Width = 33
      Height = 15
      Anchors = [akTop, akRight]
      Caption = 'Cancel'
      HoverColor = clWindowText
      TextDistance = 2
      Transparent = True
      VertSpacing = 2
      OnClick = NxLinkLabel36Click
    end
  end
  object MTPanel: TNxHeaderPanel
    Left = 301
    Top = 93
    Width = 312
    Height = 283
    AdaptiveColors = False
    Caption = 'Select Meter for Transfer'
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = []
    ParentHeaderFont = False
    TabOrder = 2
    Visible = False
    DesignSize = (
      310
      281)
    FullWidth = 312
    object NxLinkLabel37: TNxLinkLabel
      Left = 195
      Top = 5
      Width = 42
      Height = 15
      Anchors = [akTop, akRight]
      Caption = 'Transfer'
      HoverColor = clRed
      TextDistance = 2
      Transparent = True
      VertSpacing = 2
      OnClick = NxLinkLabel37Click
    end
    object NxLinkLabel38: TNxLinkLabel
      Left = 243
      Top = 5
      Width = 27
      Height = 15
      Anchors = [akTop, akRight]
      Caption = 'Close'
      HoverColor = clRed
      TextDistance = 2
      Transparent = True
      VertSpacing = 2
      OnClick = NxLinkLabel38Click
    end
    object CRDBGrid9: TCRDBGrid1
      Left = 15
      Top = 42
      Width = 272
      Height = 227
      OptionsEx = [dgeEnableSort, dgeLocalFilter, dgeLocalSorting, dgeRecordCount, dgeSearchBar]
      DataSource = dsMTransfer
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Brand'
          Title.Alignment = taCenter
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SerialNumber'
          Title.Alignment = taCenter
          Title.Caption = 'Serial Number'
          Width = 134
          Visible = True
        end>
    end
  end
  object NxHeaderPanel1: TNxHeaderPanel
    Left = 0
    Top = 0
    Width = 724
    Height = 419
    AdaptiveColors = False
    Align = alClient
    Caption = 'Meters / Seals Transactions'
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -12
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    ParentHeaderFont = False
    TabOrder = 0
    DesignSize = (
      722
      417)
    FullWidth = 724
    object NewSealPanel: TNxHeaderPanel
      Left = 215
      Top = 43
      Width = 259
      Height = 278
      AdaptiveColors = False
      Caption = 'Issue New Seal Batch'
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = [fsBold]
      ParentHeaderFont = False
      TabOrder = 6
      Visible = False
      DesignSize = (
        257
        276)
      FullWidth = 259
      object Label8: TLabel
        Left = 64
        Top = 73
        Width = 29
        Height = 13
        Alignment = taRightJustify
        Caption = 'Boxes'
      end
      object Label9: TLabel
        Left = 55
        Top = 97
        Width = 38
        Height = 13
        Alignment = taRightJustify
        Caption = 'Pcs/Box'
      end
      object Label10: TLabel
        Left = 50
        Top = 121
        Width = 43
        Height = 13
        Alignment = taRightJustify
        Caption = 'Total Pcs'
      end
      object Label11: TLabel
        Left = 41
        Top = 146
        Width = 52
        Height = 13
        Alignment = taRightJustify
        Caption = 'Date Issue'
      end
      object Label23: TLabel
        Left = 33
        Top = 169
        Width = 60
        Height = 13
        Alignment = taRightJustify
        Caption = 'Series Prefix'
      end
      object Label24: TLabel
        Left = 37
        Top = 193
        Width = 56
        Height = 13
        Alignment = taRightJustify
        Caption = 'Start Series'
      end
      object NxLinkLabel19: TNxLinkLabel
        Left = 145
        Top = 3
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
        OnClick = NxLinkLabel19Click
      end
      object NxLinkLabel20: TNxLinkLabel
        Left = 198
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
        OnClick = NxLinkLabel20Click
      end
      object NxLinkLabel21: TNxLinkLabel
        Left = 20
        Top = 49
        Width = 73
        Height = 15
        Caption = 'Technical Crew'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HoverColor = clRed
        ParentFont = False
        TextDistance = 2
        VertSpacing = 2
        OnClick = NxLinkLabel21Click
      end
      object Edit4: TEdit
        Left = 99
        Top = 46
        Width = 135
        Height = 21
        TabOrder = 3
        OnKeyPress = Edit1KeyPress
      end
      object Edit5: TEdit
        Left = 100
        Top = 69
        Width = 135
        Height = 21
        TabOrder = 4
        OnExit = Edit5Exit
        OnKeyPress = Edit1KeyPress
      end
      object Edit6: TEdit
        Left = 100
        Top = 93
        Width = 135
        Height = 21
        TabOrder = 5
        OnExit = Edit5Exit
        OnKeyPress = Edit1KeyPress
      end
      object Edit7: TEdit
        Left = 99
        Top = 116
        Width = 135
        Height = 21
        TabOrder = 6
        OnExit = Edit5Exit
        OnKeyPress = Edit1KeyPress
      end
      object IssueDate: TDateTimePicker
        Left = 100
        Top = 141
        Width = 135
        Height = 21
        Date = 40840.646723298610000000
        Time = 40840.646723298610000000
        TabOrder = 7
        OnKeyPress = Edit1KeyPress
      end
      object UpdateType: TRadioGroup
        Left = 19
        Top = 218
        Width = 213
        Height = 41
        Caption = 'Update Type'
        Columns = 2
        Items.Strings = (
          'Pre Populate'
          'Post Populate')
        TabOrder = 10
        OnClick = UpdateTypeClick
      end
      object Edit8: TEdit
        Left = 100
        Top = 165
        Width = 135
        Height = 21
        Enabled = False
        TabOrder = 8
        OnKeyPress = Edit1KeyPress
      end
      object Edit9: TEdit
        Left = 100
        Top = 189
        Width = 135
        Height = 21
        Enabled = False
        TabOrder = 9
        OnKeyPress = Edit1KeyPress
      end
    end
    object SelectCrewPanel: TNxHeaderPanel
      Left = 365
      Top = 140
      Width = 244
      Height = 366
      AdaptiveColors = False
      Caption = 'Select Technical Crew'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = [fsBold]
      ParentFont = False
      ParentHeaderFont = False
      TabOrder = 7
      Visible = False
      DesignSize = (
        242
        364)
      FullWidth = 244
      object NxLinkLabel22: TNxLinkLabel
        Left = 133
        Top = 6
        Width = 30
        Height = 15
        Anchors = [akTop, akRight]
        Caption = 'Select'
        HoverColor = clRed
        TextDistance = 2
        Transparent = True
        VertSpacing = 2
        OnClick = NxLinkLabel22Click
      end
      object NxLinkLabel23: TNxLinkLabel
        Left = 166
        Top = 6
        Width = 33
        Height = 15
        Anchors = [akTop, akRight]
        Caption = 'Cancel'
        HoverColor = clRed
        TextDistance = 2
        Transparent = True
        VertSpacing = 2
        OnClick = NxLinkLabel23Click
      end
      object CRDBGrid5: TCRDBGrid1
        Left = 16
        Top = 39
        Width = 209
        Height = 305
        DataSource = dsTechCrew
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
            FieldName = 'TechArea'
            Title.Alignment = taCenter
            Title.Caption = 'Tech Area'
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Crew'
            Title.Alignment = taCenter
            Width = 124
            Visible = True
          end>
      end
    end
    object CloseBatchPanel: TNxHeaderPanel
      Left = 331
      Top = 77
      Width = 266
      Height = 241
      AdaptiveColors = False
      Caption = 'Close Existing Batch'
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = [fsBold]
      ParentHeaderFont = False
      TabOrder = 8
      Visible = False
      DesignSize = (
        264
        239)
      FullWidth = 266
      object Label12: TLabel
        Left = 40
        Top = 44
        Width = 50
        Height = 13
        Caption = 'Seal Batch'
        FocusControl = DBEdit5
      end
      object Label13: TLabel
        Left = 47
        Top = 98
        Width = 43
        Height = 13
        Caption = 'Total Pcs'
        FocusControl = DBEdit6
      end
      object Label14: TLabel
        Left = 65
        Top = 71
        Width = 25
        Height = 13
        Caption = 'Crew'
        FocusControl = DBEdit7
      end
      object Label15: TLabel
        Left = 21
        Top = 126
        Width = 69
        Height = 13
        Caption = 'Seals Installed'
        FocusControl = DBEdit8
      end
      object Label16: TLabel
        Left = 45
        Top = 153
        Width = 45
        Height = 13
        Caption = 'Damaged'
        FocusControl = DBEdit8
      end
      object Label17: TLabel
        Left = 27
        Top = 180
        Width = 63
        Height = 13
        Caption = 'Unaccounted'
        FocusControl = DBEdit8
      end
      object Label18: TLabel
        Left = 67
        Top = 208
        Width = 23
        Height = 13
        Caption = 'Date'
        FocusControl = DBEdit8
      end
      object NxLinkLabel24: TNxLinkLabel
        Left = 149
        Top = 3
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
        OnClick = NxLinkLabel24Click
      end
      object NxLinkLabel25: TNxLinkLabel
        Left = 202
        Top = 4
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
        OnClick = NxLinkLabel25Click
      end
      object DBEdit5: TDBEdit
        Left = 96
        Top = 41
        Width = 150
        Height = 21
        DataField = 'idSealBatch'
        DataSource = dsSInv
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit6: TDBEdit
        Left = 96
        Top = 95
        Width = 150
        Height = 21
        DataField = 'TotalPcs'
        DataSource = dsSInv
        ReadOnly = True
        TabOrder = 4
      end
      object DBEdit7: TDBEdit
        Left = 96
        Top = 68
        Width = 150
        Height = 21
        DataField = 'crew'
        DataSource = dsSInv
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit8: TDBEdit
        Left = 96
        Top = 122
        Width = 150
        Height = 21
        DataField = 'sealsinstalled'
        DataSource = dsSInv
        ReadOnly = True
        TabOrder = 5
      end
      object Damaged: TEdit
        Left = 96
        Top = 149
        Width = 150
        Height = 21
        TabOrder = 6
        OnChange = DamagedChange
        OnKeyPress = Edit1KeyPress
      end
      object unaccounted: TEdit
        Left = 96
        Top = 176
        Width = 150
        Height = 21
        TabOrder = 7
        OnKeyPress = Edit1KeyPress
      end
      object CloseDate: TDateTimePicker
        Left = 96
        Top = 203
        Width = 150
        Height = 21
        Date = 40841.425792199070000000
        Time = 40841.425792199070000000
        TabOrder = 8
      end
    end
    object ModifyStatusPanel: TNxHeaderPanel
      Left = 278
      Top = 126
      Width = 251
      Height = 158
      AdaptiveColors = False
      Caption = 'Modify Meter Status'
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = [fsBold]
      ParentHeaderFont = False
      TabOrder = 5
      Visible = False
      DesignSize = (
        249
        156)
      FullWidth = 251
      object Label6: TLabel
        Left = 15
        Top = 48
        Width = 66
        Height = 13
        Caption = 'Serial Number'
        FocusControl = DBEdit3
      end
      object Label7: TLabel
        Left = 53
        Top = 72
        Width = 28
        Height = 13
        Caption = 'Brand'
        FocusControl = DBEdit4
      end
      object DBEdit3: TDBEdit
        Left = 82
        Top = 45
        Width = 150
        Height = 21
        DataField = 'SerialNumber'
        DataSource = dsMInv
        Enabled = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit4: TDBEdit
        Left = 82
        Top = 69
        Width = 150
        Height = 21
        DataField = 'Brand'
        DataSource = dsMInv
        Enabled = False
        ReadOnly = True
        TabOrder = 1
      end
      object RadioGroup2: TRadioGroup
        Left = 15
        Top = 101
        Width = 217
        Height = 37
        Caption = 'View Options'
        Columns = 3
        Items.Strings = (
          'Available'
          'Repair'
          'Verification')
        TabOrder = 2
        OnClick = RadioGroup1Click
      end
      object NxLinkLabel10: TNxLinkLabel
        Left = 131
        Top = 3
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
        OnClick = NxLinkLabel10Click
      end
      object NxLinkLabel14: TNxLinkLabel
        Left = 186
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
        OnClick = NxLinkLabel14Click
      end
    end
    object StatusUpdatePanel: TNxHeaderPanel
      Left = 453
      Top = 208
      Width = 260
      Height = 220
      AdaptiveColors = False
      Caption = 'Status Update Tools'
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = [fsBold]
      ParentHeaderFont = False
      TabOrder = 4
      Visible = False
      DesignSize = (
        258
        218)
      FullWidth = 260
      object NxLinkLabel11: TNxLinkLabel
        Left = 216
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
        OnClick = NxLinkLabel11Click
      end
      object RadioGroup1: TRadioGroup
        Left = 46
        Top = 42
        Width = 165
        Height = 93
        Caption = 'View Options'
        Columns = 2
        Items.Strings = (
          'Testing'
          'Transfer'
          'Available'
          'Installed'
          'Damaged'
          'Removed'
          'Repair'
          'Verification')
        TabOrder = 1
        OnClick = RadioGroup1Click
      end
      object NxButton2: TNxButton
        Left = 24
        Top = 147
        Width = 209
        Height = 25
        Caption = 'Receive Meter From Calibration'
        TabOrder = 2
        OnClick = NxButton2Click
      end
      object NxButton3: TNxButton
        Left = 24
        Top = 174
        Width = 209
        Height = 25
        Caption = 'Modify Meter Status'
        TabOrder = 3
        OnClick = NxButton3Click
      end
    end
    object SignPanel: TNxHeaderPanel
      Left = 243
      Top = 132
      Height = 145
      AdaptiveColors = False
      Caption = 'Signatories'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = [fsBold]
      ParentFont = False
      ParentHeaderFont = False
      TabOrder = 9
      Visible = False
      DesignSize = (
        243
        143)
      FullWidth = 245
      object Label19: TLabel
        Left = 13
        Top = 40
        Width = 59
        Height = 13
        Alignment = taRightJustify
        Caption = 'Prepared By'
        FocusControl = DBEdit9
      end
      object Label20: TLabel
        Left = 35
        Top = 64
        Width = 37
        Height = 13
        Alignment = taRightJustify
        Caption = 'Position'
        FocusControl = DBEdit10
      end
      object Label21: TLabel
        Left = 28
        Top = 88
        Width = 44
        Height = 13
        Alignment = taRightJustify
        Caption = 'Noted By'
        FocusControl = DBEdit11
      end
      object Label22: TLabel
        Left = 35
        Top = 112
        Width = 37
        Height = 13
        Alignment = taRightJustify
        Caption = 'Position'
        FocusControl = DBEdit12
      end
      object DBEdit9: TDBEdit
        Left = 77
        Top = 38
        Width = 150
        Height = 21
        DataField = 'PreparedBy'
        DataSource = dsMtSign
        TabOrder = 0
      end
      object DBEdit10: TDBEdit
        Left = 77
        Top = 62
        Width = 150
        Height = 21
        DataField = 'PreparedbyPos'
        DataSource = dsMtSign
        TabOrder = 1
      end
      object DBEdit11: TDBEdit
        Left = 77
        Top = 86
        Width = 150
        Height = 21
        DataField = 'NotedBy'
        DataSource = dsMtSign
        TabOrder = 2
      end
      object DBEdit12: TDBEdit
        Left = 77
        Top = 110
        Width = 150
        Height = 21
        DataField = 'NotedByPos'
        DataSource = dsMtSign
        TabOrder = 3
      end
      object NxLinkLabel26: TNxLinkLabel
        Left = 61
        Top = 3
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
        HoverColor = clWindowText
        TextDistance = 2
        Transparent = True
        VertSpacing = 2
        OnClick = NxLinkLabel26Click
      end
      object NxLinkLabel27: TNxLinkLabel
        Left = 114
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
        HoverColor = clWindowText
        TextDistance = 2
        Transparent = True
        VertSpacing = 2
        OnClick = NxLinkLabel27Click
      end
    end
    object NxLinkLabel1: TNxLinkLabel
      Left = 681
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
    object Panel1: TPanel
      Left = 0
      Top = 27
      Width = 161
      Height = 390
      Align = alLeft
      Color = clGradientInactiveCaption
      ParentBackground = False
      TabOrder = 0
      object NxLinkLabel3: TNxLinkLabel
        Left = 14
        Top = 102
        Width = 105
        Height = 16
        Caption = 'Meter Transactions'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        HoverColor = clRed
        ParentFont = False
        TextDistance = 2
        Transparent = True
        VertSpacing = 2
        OnClick = NxLinkLabel3Click
      end
      object NxLinkLabel8: TNxLinkLabel
        Left = 14
        Top = 128
        Width = 60
        Height = 16
        Caption = 'Signatories'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        HoverColor = clRed
        ParentFont = False
        TextDistance = 2
        Transparent = True
        VertSpacing = 2
        OnClick = NxLinkLabel8Click
      end
      object NxLinkLabel2: TNxLinkLabel
        Left = 14
        Top = 75
        Width = 131
        Height = 16
        Caption = 'Meter Seal Transactions'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        HoverColor = clRed
        ParentFont = False
        TextDistance = 2
        Transparent = True
        VertSpacing = 2
        OnClick = NxLinkLabel2Click
      end
      object NxLinkLabel4: TNxLinkLabel
        Left = 14
        Top = 20
        Width = 80
        Height = 16
        Caption = 'Status Update'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        HoverColor = clRed
        ParentFont = False
        TextDistance = 2
        Transparent = True
        VertSpacing = 2
        OnClick = NxLinkLabel4Click
      end
      object NxLinkLabel28: TNxLinkLabel
        Left = 14
        Top = 47
        Width = 119
        Height = 16
        Caption = 'KWHR Stock Transfer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        HoverColor = clRed
        ParentFont = False
        TextDistance = 2
        Transparent = True
        VertSpacing = 2
        OnClick = NxLinkLabel28Click
      end
    end
    object NxNotebook1: TNxNotebook
      Left = 161
      Top = 27
      Width = 561
      Height = 390
      ActivePage = MeterTransactions
      ActivePageIndex = 0
      Align = alClient
      TabOrder = 1
      object MeterTransactions: TNxTabSheet
        Caption = 'NxTabSheet1'
        PageIndex = 0
        ParentTabFont = False
        TabFont.Charset = DEFAULT_CHARSET
        TabFont.Color = clWindowText
        TabFont.Height = -11
        TabFont.Name = 'Tahoma'
        TabFont.Style = []
        object NxEdit1: TNxEdit
          Left = 16
          Top = 12
          Width = 186
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
          TabOrder = 1
          Text = 'Search Name'
          OnChange = NxEdit1Change
          OnClick = NxEdit1Click
        end
        object NxLinkLabel5: TNxLinkLabel
          Left = 424
          Top = 11
          Width = 116
          Height = 22
          Caption = 'Assign NEW METER'
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
          HoverColor = clWindowText
          TextDistance = 2
          VertSpacing = 2
          OnClick = NxLinkLabel5Click
        end
        object CRDBGrid1: TCRDBGrid1
          Left = 16
          Top = 50
          Width = 529
          Height = 322
          DataSource = dsSearchTrans
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'name'
              Title.Alignment = taCenter
              Title.Caption = 'Name'
              Width = 164
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'address'
              Title.Alignment = taCenter
              Title.Caption = 'Address'
              Width = 133
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'description'
              Title.Alignment = taCenter
              Title.Caption = 'Description'
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DatePaid'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ORNumber'
              Title.Alignment = taCenter
              Title.Caption = 'OR Number'
              Width = 124
              Visible = True
            end>
        end
        object NxLinkLabel40: TNxLinkLabel
          Left = 296
          Top = 16
          Width = 107
          Height = 16
          Caption = 'Assigned Meter List'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HoverColor = clRed
          ParentFont = False
          TextDistance = 2
          Transparent = True
          VertSpacing = 2
          OnClick = NxLinkLabel40Click
        end
      end
      object StatusUpdate: TNxTabSheet
        Caption = 'NxTabSheet1'
        PageIndex = 1
        ParentTabFont = False
        TabFont.Charset = DEFAULT_CHARSET
        TabFont.Color = clWindowText
        TabFont.Height = -11
        TabFont.Name = 'Tahoma'
        TabFont.Style = []
        object NxEdit3: TNxEdit
          Left = 16
          Top = 23
          Width = 217
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
          TabOrder = 0
          OnClick = NxEdit3Click
        end
        object NxLinkLabel12: TNxLinkLabel
          Left = 17
          Top = 6
          Width = 103
          Height = 15
          Caption = 'Serial Number Search'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HoverColor = clRed
          ParentFont = False
          TextDistance = 2
          VertSpacing = 2
          OnClick = NxLinkLabel12Click
        end
        object NxButton5: TNxButton
          Left = 498
          Top = 5
          Width = 46
          Height = 42
          Glyph.Data = {
            060E0000424D060E000000000000360000002800000022000000220000000100
            180000000000D00D0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFAAABABA2A3A3B7B7B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFDBDEDEA7A9AAFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF98999C313030262728343739B8B8B8FFFFFFFFFFFF
            FFFFFFFFFFFFF6F5EEF8F7F2F4F6F5FDFEFE746D6D6C4A495038375A5959C9CB
            CBFDFEFEFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4C6C9735E4DC3854CA05D1F4C36258B
            8E91FFFFFFFFFFFFFFFFFF9DA1C326276032305965564D604040925F5FAF9191
            977E7E6F4A49492C2C656262BABEBEFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B9BEC39A72F4A5
            56E47B11804C28838A8EFFFFFFFFFFFF9193CB001EB3033CF60023C0453579CE
            A49BDDBDBDCFB8B8AEACACAA9F9F987F7F64353547312F696B6BCDCFCFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            AAADB1B48D66EEA154DC76107F4C2A8B9197FFFFFFE2E2DD0E11770546FF1560
            FF1872FF2829A4D7BCBFE1C2C0CAB4B4ADA6A6AEA5A5B1AAAAB2AAAA9773736B
            3D3F4734335151510000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFBBBABAC39970EC9E4FDC740D69432D939CA0C8C6C38D6D79
            0809860845FD1864FF207BFF2A289FD7BDBEDFBFBDC19999AB8D8DB2A5A5B0A0
            A0B09F9FB5A4A89DB19B8C5D5F4136360000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBEBDC19769E78A3EDE76106445356B
            4F51A77C7AB6A9B1272B9F0746FB1762FF2684FF29279FCDA3A5CF9B9ABA8989
            9966669C6969AA8888B09A9BAFA09C79F5A29C6C744035350000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2C1BFC3996DE688
            3BDF72176A4A3BC8BDC0F5EFEDD6C9D22738AF1462FF2070FF2E92FF26209ACD
            A2A4D9B3B3CEB0B0B29393A77D7D9D6C6C9C6969A87C7EB099969A7071403535
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            C5C3C2C49361DF8429DE7213754C45DFE4E6F1EAE8D2C4CD2636AD1261FF2B7F
            FF3B9BFF2725A0D6BBBCE0C2C0CCB0B0A88282A77B7BB09191AA82829F6E6E9F
            6A6A8C56564238380000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFEFFFF5F5A55DCA76FDA8023E5731F5C4A46F4E5E7DBB8B5BA8A95
            3049A91668FD2C7EFF42A2FF282499D6BABCDFC1BFD0ACACA77D7DC18C8CB47F
            7FAC7F7FB28787B08D8D925D5D4137370000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C645CDA9F64DA8023E97E25453C38DA
            A9AADABAB7CDB9C42D43A61E74FD378EFF4AABFF2A248DD5BABDDFC1BFCFADAD
            AA7C7CC79494D19D9DC79494BD8989B180809B6D6D4036360000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7D7063ECAA69D97F
            23E9812648423DFBF7F9EEE9E6D2C5CF2C41A41F76FD3A93FF54BAFF29228ED5
            BABDDFC1C0D1A7A7AC7979C49090CA9696D09D9DD09D9DBB87879D6565403636
            0000FFFFFFD4D4D1929A9D969EA0969EA0969EA0969DA0969DA0969EA1919CA1
            68584BEAAA6AD67818ED7F32473F3DFBF9FAEDE5E2D1C3CE2B40A52884FE409E
            FF5CC5FF281E8CD5BABDDFC1C0D1A8A8AD7777B98585A57171B27F7FCB9797BB
            88889D65654037370000D0E6EF006A9E1278A8147AA91379A91379A9157FAF16
            83B11683B21080B36A5F52F0AE6ED3730FED7D3D5D5456F9F6F7EDE5E2D1C2CE
            293FA5237FFD3F9CFE4EB2FF3144ABD4B6BADFC1C0D1A8A8AC7474C39090BE8B
            8BB17D7DA16F6FB78282A05E5E4037370000CAE1EC007BB068D1FF70D7FF6FD6
            FF6FD6FF6FD5FF6FD5FF6FD6FF67D2FF7B6B57FDB06AD4700FCD703A6E6869F8
            F4F5ECE4E2D4C8D2363B8E364C933837691C29672B288DD9BDBFDEC1C0CEA6A6
            AB7373C29090AD7979A77474BD8989BB8686A05D5D4037370000CDE2ED1892C8
            6CC3EF6DD5FF6DD3FF6DD3FF6DD3FF6DD3FF6DD4FF64D0FF76573DFFAA5FDF6C
            04DA76416D6767F8F4F5E9E1E1EADFDE9889A797938EA9A9A274746C897B9FE3
            C7C4DCC0C0D3A2A2AB7373CA9999D19E9EC39090C49191BB8686A05E5E403737
            0000CCE5F02CA1D152ABD57BE0FF72D8FF73D9FF73D9FF73D9FF73DAFF70D8FF
            452B1C8C80735A61678C5A4C696263F8F4F4E9E1E1F1E5E5DACBC79E9D9CE2E2
            E3969797C9B5B1E2C6C6DCC0C0D3A1A1BD6E6E9E6666AE7B7BC09090CB9999BC
            87879C55554038380000CBE2EF38ADD44DA6C68BE7FF75DDFF76E3FF73E4FF77
            E9FF78EAFF7AE9FF395B68C2C4C7AFB0B0595E60B0B0B0F3EEEEF5ECECA19C9C
            999292BAB9B9C5C6C7919293807475CFB3B3E2C5C5D19F9FC67070C67171B96D
            6DAF6969AC7474A574749B56564038380000CEE5EE4AC4E136A1C9A7F5FF75E1
            FF72989D939494675F605F5F6167B1C85693A97474755D5E5E7E7E7EBCBDBDF8
            F3F3A7A0A0D6D7D7DDDDDDB8B8B8A2A2A2BBBBBBD7D9D98A8B8BB49A9ADBAFAF
            C87474C76868C76767C86A6AC66B6BC66F6FA255553F38380000CDE5EE50C9E2
            3CA9CF9EE5FF63A6B7CFC3C0FFFFFFE4D9D8C89B9A6855544E4947BBBBBAD9D9
            D9D4D4D4898989C2BFBFA19F9FFFFFFFF5F4F4D8D8D8BABBBBCFCFCFD2D2D2FF
            FFFF828484FFFFFFF4EAEAE8BCBCD89C9CCC7474C76363CE6969A553533E3838
            0000CDE4EE53CAE548B2D9ADEAFF5E7070D8D5D4DBDADAC8C9C9A3A0A0868484
            4845468F8F8FBFC0C1C9C9CACFCFCF858585929292F0F0F0FFFFFF8081817976
            76979695DADADBE3E3E39A9B9BDBCBCBF5E6E6F5EAEAF3E7E7F0D6D6EAC7C7E1
            9797A7525240393A0000CCE4EE5DC8E14AB8EA99E0F9787C7DC2C0C1A5A6A6C0
            BFC0E7E7E7B7B8B8696A69878788B1B2B2B8B9B8C6C4C5CBCBCB7A7A7A909090
            8B8C8C797878B49F9F978D8DD2D5D5D0D1D18B8484F2CCCCE4BFBFD7B4B4CCA9
            A9B89090A78181946D6D704242A583830000CBE4ED64C8E152C2F493DAF66F86
            87C8C0BFCECCCCF9F8F8FFFFFF7775757B7A7AA2A0A0999898A8A8A7B4B3B4C5
            C3C3DEDBDBAFAAAAA6A5A58B7C7CE3B1B08F7B7BD5D6D67B7F80815959966363
            834D4D8D6262764747C9B8B8C5B3B3D3C5C5D7CACAFFFFFF0000CBE7F16BD0E8
            62CBFC89D3F1ABF7FF536F757A85868A9292697272838C8CCBD1D2D0D3D4C4C5
            C6BBBABAC1C4C4AAB4B491A5A65881848993956E6768A67678725F609EA7A872
            7171816C6BFFFFFFFDFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000CAE7F176D2E76ED2FF6DC7F6CCF6FF8FFFFF92FFFF80E7E886EEF082EBEC
            77D7D96EC2C465B3B564ADAF6FC4C681ECEE8DFFFF95FFFF80EBF175C6C67ADB
            EF6BC0CB75D8DAEEFFFF716F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000CDE7F177D2E777DAFF5FC9FCA0D9F6E8FFFEDCFFFFDE
            FFFFDEFFFFDEFFFFDFFFFFE0FFFFE0FFFFE1FFFFE0FFFFDEFFFFDDFFFFDDFFFF
            DEFFFFE0FFFFD8FBFFDDFFFFDDFFFFF5FFFFEFEDEDFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CDE8F17CD1E782E3FF76DDFF6BD6
            FF5FCCFF60CDFF60CDFF60CDFF60CDFF60CDFF60CDFF60CDFF60CDFF60CDFF60
            CDFF60CDFF60CDFF60CDFF62CEFF4EC5F93D7888FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000CCE8F185D0E6
            88E9FF7EE5FF7FE5FF80E6FF80E6FF80E6FF80E6FF7EE6FF78E5FF77E6FF78E6
            FF78E6FF78E6FF78E6FF78E6FF78E6FF78E6FF7BE9FF5BD9FB235C72FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000CCE8F392D5EB96F3FF85EEFF88EEFF88EEFF88EEFF88EEFF85EEFF8AEFFF
            E3FDFFE1EFF6D7ECF4D7ECF4D7ECF4D7ECF4D7ECF4D7ECF4D7ECF4DCEEF599D5
            EB70A5AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000C8E4EE5AB5D5E5FFFF91F6FF89F7FF8BF7FF8BF7FF89
            F7FF90F6FFEAFFFF75BFD872BED89BD5EA98D3E898D3E898D3E898D3E898D3E8
            98D3E896D2E890CFE6F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFF7EBCD469BEDCE7FCFECDF7
            FBCEF7FBCEF7FBCDF7FBDDFBFE70C3DE73B6D1FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            87C1D870C3E07CC9E47BC8E37BC8E37BC9E472C4E180BDD6FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000}
          TabOrder = 3
          Transparent = True
          OnClick = NxButton5Click
        end
        object CRDBGrid3: TCRDBGrid1
          Left = 16
          Top = 51
          Width = 529
          Height = 299
          DataSource = dsMInv
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'MeterStatus'
              Title.Alignment = taCenter
              Title.Caption = 'Meter Status'
              Width = 87
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SerialNumber'
              Title.Alignment = taCenter
              Title.Caption = 'Serial Number'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Brand'
              Title.Alignment = taCenter
              Width = 67
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Type'
              Title.Alignment = taCenter
              Width = 69
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Amphere'
              Title.Alignment = taCenter
              Width = 51
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Accuracy'
              Title.Alignment = taCenter
              Width = 49
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Status'
              Title.Alignment = taCenter
              Width = 35
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MeterCondition'
              Title.Alignment = taCenter
              Title.Caption = 'Meter Condition'
              Width = 94
              Visible = True
            end>
        end
      end
      object MeterSealTransactions: TNxTabSheet
        Caption = 'NxTabSheet1'
        PageIndex = 2
        ParentTabFont = False
        TabFont.Charset = DEFAULT_CHARSET
        TabFont.Color = clWindowText
        TabFont.Height = -11
        TabFont.Name = 'Tahoma'
        TabFont.Style = []
        ExplicitHeight = 390
        object NxLinkLabel15: TNxLinkLabel
          Left = 17
          Top = 11
          Width = 104
          Height = 15
          Caption = 'Issue New Seal Batch'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HoverColor = clRed
          ParentFont = False
          TextDistance = 2
          Transparent = True
          VertSpacing = 2
          OnClick = NxLinkLabel15Click
        end
        object NxLinkLabel16: TNxLinkLabel
          Left = 149
          Top = 11
          Width = 97
          Height = 15
          Caption = 'Close Existing Batch'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HoverColor = clRed
          ParentFont = False
          TextDistance = 2
          Transparent = True
          VertSpacing = 2
          OnClick = NxLinkLabel16Click
        end
        object NxLinkLabel17: TNxLinkLabel
          Left = 276
          Top = 8
          Width = 116
          Height = 22
          Caption = 'Seal Accountability '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            E6040000424DE604000000000000360000002800000014000000140000000100
            180000000000B004000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDE7E7E7EDEDEDFFFFFFFFFFFFEEEFEFF0EF
            EFF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFBFBFBF9B9B9B484848464545A1A3A3CAC0C0705A5A847D7DBFC1C1
            CBCBCBE3E3E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E78A8A
            8A838383BFBFBFF3F3F3B3B3B37C8282694545958080B0B0B0C4C4C4ABABABC9
            C9C9B9B9B9E8E8E8FFFFFFFFFFFFFFFFFFFFFFFFB3B3B3878787ADADADFCFCFC
            FDFDFDD2D2D2ABABABCBCBCB5C5A5A363B3B5051517B7B7BB4B4B4CECECEDADA
            DAC7C7C7E2E2E2FFFFFFFFFFFFB5B5B5939393FCFCFCFEFEFEF3F3F3FDFDFDCD
            CDCDA7A7A7B6B6B6B6B7B7B6B6B69797977070706A6A6A999999848484565657
            D4D4D4FFFFFFF9F9F99A9A9AD0D0D0FFFFFFEDEDEDD4D4D48181817777776C6C
            6C6C6C6C9C9C9CB3B3B3BBBBBBCCCCCCD4D4D4747374949292A9A7A8E1E1E1FF
            FFFFFCFCFCA2A2A2B5B5B5D4D4D4989898949494E0E0E0D8D8D8B6B6B6AFAFAF
            8080807373738787879E9E9EA7A7A7CACBCB67A17B7C897FE6E3E5FFFFFFFCFC
            FC9D9D9D969696B2B2B2DEDEDEE7E7E7D2D2D2E8E8E8DEDEDED8D8D8D7D7D7CB
            CBCBB3B3B38C8C8C8C8B8C9495945A7E66767F79E8E6E7FFFFFFFBFBFBA3A3A3
            C5C5C5F1F1F1DCDCDCCCCCCCDDDDDDD7D7D7D7D7D7D8D8D8CBCBCBCACACAD6D6
            D6E7E7E7DDDDDDBCBBBCA49EA38F8D8FE4E4E4FFFFFFF8F8F89D9D9DCDCDCDE4
            E4E4CFCFCFE0E0E0F4F4F4DDDDDDFEFEFEF0F0F0EAEAEAE8E8E8D3D3D3BDBDBD
            B6B6B6D0D0D0E4E4E4989898DCDCDCFFFFFFFFFFFFDADADA878787C6C6C6D1D1
            D1B7B7B77B7B7BAFAFAFD3D3D3F3F3F2F0F0F0ECECECF1F1F1F4F4F4F8F8F8D3
            D3D3919191A9A9A9FFFFFFFFFFFFFFFFFFFFFFFFECECEC858585B4B4B4E6EBEC
            D7DFE2A2AAAC969B9D85888AA0A1A1ABACABC1C1C1DDDDDDCACACAA2A2A2A9A9
            A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D7CBD0D2F4CBC1F1C7BCDE
            BCB5DAC5C1DCCECCD9D7D9E1E7ECA8ABAC959594B7B7B7C8C8C8FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1ACB4ECAE89FFCEA6FFCEA9FFD5
            B0FFD2B0FCD1ADEDCBADB1A8A8D0D2D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFCAB5BEFFE4BAFFDFBDFFDEBCFFDCBAFFDCB8
            FFDFBAECCEB1D8C9CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF8B5D5BFFFEDCFFE3C9FFE4C9FFE5CAFFE5CAFEE7CBD9
            BAABDBD6D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFE8E9EACDA59CFFF8E3FFEAD7FFEAD8FFEAD8FFEBD8F7E7D4CFB2ACFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0
            9294EDDED6FFF5E8FFF1E4FFF1E4FFF1E5FFF3E6F9F2E4BCA4A5FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E0E1C9ADACFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFC2A6A1F5F2F3FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3D4D5D1BEBEC6B8B8B8A4A4
            C3B3B4C7B7B8D8C6C7C3ACACE7DEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF}
          HoverColor = clRed
          ParentFont = False
          TextDistance = 2
          Transparent = True
          VertSpacing = 2
          OnClick = NxLinkLabel17Click
        end
        object CRDBGrid4: TCRDBGrid1
          Left = 16
          Top = 38
          Width = 529
          Height = 159
          DataSource = dsSInv
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'idSealBatch'
              Title.Alignment = taCenter
              Title.Caption = 'Seal Batch'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'crew'
              Title.Alignment = taCenter
              Title.Caption = 'Crew'
              Width = 124
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'boxes'
              Title.Alignment = taCenter
              Width = 72
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pcs'
              Title.Alignment = taCenter
              Width = 58
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TotalPcs'
              Title.Alignment = taCenter
              Width = 71
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DateIssue'
              Title.Alignment = taCenter
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sealsinstalled'
              Title.Alignment = taCenter
              Width = 94
              Visible = True
            end>
        end
        object CRDBGrid6: TCRDBGrid1
          Left = 13
          Top = 199
          Width = 529
          Height = 159
          DataSource = dsSealDetail
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
              FieldName = 'SealNumber'
              Title.Alignment = taCenter
              Title.Caption = 'Seal Number'
              Width = 124
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DateInst'
              Title.Alignment = taCenter
              Title.Caption = 'Date Installed'
              Width = 71
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MeterBrand'
              Title.Alignment = taCenter
              Title.Caption = 'Meter Brand'
              Width = 86
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SerialNumber'
              Title.Alignment = taCenter
              Title.Caption = 'Serial Number'
              Width = 127
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AccountNumber'
              Title.Caption = 'Account Number'
              Width = 83
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Name'
              Title.Alignment = taCenter
              Width = 200
              Visible = True
            end>
        end
      end
      object StockTransfer: TNxTabSheet
        Caption = 'Stock Transfer'
        PageIndex = 3
        ParentTabFont = False
        TabFont.Charset = DEFAULT_CHARSET
        TabFont.Color = clWindowText
        TabFont.Height = -11
        TabFont.Name = 'Tahoma'
        TabFont.Style = []
        ExplicitHeight = 390
        object NxHeaderPanel2: TNxHeaderPanel
          Left = 0
          Top = 0
          Width = 561
          Height = 365
          AdaptiveColors = False
          Align = alClient
          Caption = 'Stock Transfer'
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -12
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          ParentHeaderFont = False
          TabOrder = 0
          FullWidth = 561
          object NxLinkLabel29: TNxLinkLabel
            Left = 20
            Top = 36
            Width = 25
            Height = 15
            Caption = 'New '
            HoverColor = clRed
            TextDistance = 2
            VertSpacing = 2
            OnClick = NxLinkLabel29Click
          end
          object NxLinkLabel30: TNxLinkLabel
            Left = 54
            Top = 36
            Width = 19
            Height = 15
            Caption = 'Edit'
            HoverColor = clRed
            TextDistance = 2
            VertSpacing = 2
            OnClick = NxLinkLabel30Click
          end
          object NxLinkLabel31: TNxLinkLabel
            Left = 83
            Top = 36
            Width = 32
            Height = 15
            Caption = 'Delete'
            HoverColor = clRed
            TextDistance = 2
            VertSpacing = 2
            OnClick = NxLinkLabel31Click
          end
          object NxLinkLabel32: TNxLinkLabel
            Left = 126
            Top = 36
            Width = 22
            Height = 15
            Caption = 'Post'
            HoverColor = clRed
            TextDistance = 2
            VertSpacing = 2
            OnClick = NxLinkLabel32Click
          end
          object NxLinkLabel33: TNxLinkLabel
            Left = 342
            Top = 36
            Width = 52
            Height = 15
            Caption = 'New Detail'
            HoverColor = clRed
            TextDistance = 2
            VertSpacing = 2
            OnClick = NxLinkLabel33Click
          end
          object NxLinkLabel34: TNxLinkLabel
            Left = 406
            Top = 36
            Width = 62
            Height = 15
            Caption = 'Delete Detail'
            HoverColor = clRed
            TextDistance = 2
            VertSpacing = 2
            OnClick = NxLinkLabel34Click
          end
          object NxLinkLabel39: TNxLinkLabel
            Left = 166
            Top = 36
            Width = 49
            Height = 15
            Caption = 'Check List'
            HoverColor = clRed
            TextDistance = 2
            VertSpacing = 2
            OnClick = NxLinkLabel39Click
          end
          object CRDBGrid8: TCRDBGrid1
            Left = 341
            Top = 55
            Width = 200
            Height = 296
            DataSource = MeterDataModule.dsKMDetail
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'meterbrand'
                Title.Alignment = taCenter
                Title.Caption = 'Brand'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'serialnumber'
                Title.Alignment = taCenter
                Title.Caption = 'Serial'
                Width = 101
                Visible = True
              end>
          end
          object CRDBGrid7: TCRDBGrid1
            Left = 20
            Top = 55
            Width = 311
            Height = 296
            DataSource = MeterDataModule.dsKMTrans
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ReadOnly = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'DateTransferred'
                Title.Alignment = taCenter
                Title.Caption = 'Date'
                Width = 54
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Reference'
                Title.Alignment = taCenter
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Description'
                Title.Alignment = taCenter
                Width = 154
                Visible = True
              end>
          end
        end
      end
    end
    object AssignMeterPanel: TNxHeaderPanel
      Left = 347
      Top = 135
      Width = 305
      Height = 203
      AdaptiveColors = False
      Caption = 'Assign New Meter'
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = [fsBold]
      ParentHeaderFont = False
      TabOrder = 2
      Visible = False
      DesignSize = (
        303
        201)
      FullWidth = 305
      object Label1: TLabel
        Left = 53
        Top = 48
        Width = 27
        Height = 13
        Caption = 'Name'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 27
        Top = 72
        Width = 53
        Height = 13
        Caption = 'Description'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 52
        Top = 121
        Width = 28
        Height = 13
        Caption = 'Brand'
      end
      object Label4: TLabel
        Left = 57
        Top = 145
        Width = 23
        Height = 13
        Caption = 'Date'
      end
      object Label5: TLabel
        Left = 41
        Top = 170
        Width = 39
        Height = 13
        Caption = 'Reading'
      end
      object NxLinkLabel9: TNxLinkLabel
        Left = 186
        Top = 2
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
      end
      object NxLinkLabel6: TNxLinkLabel
        Left = 239
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
        OnClick = NxLinkLabel6Click
      end
      object DBEdit1: TDBEdit
        Left = 86
        Top = 46
        Width = 200
        Height = 21
        DataField = 'name'
        DataSource = dsSearchTrans
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit2: TDBEdit
        Left = 86
        Top = 70
        Width = 200
        Height = 21
        DataField = 'description'
        DataSource = dsSearchTrans
        ReadOnly = True
        TabOrder = 3
      end
      object Edit1: TEdit
        Left = 86
        Top = 94
        Width = 200
        Height = 21
        ReadOnly = True
        TabOrder = 4
        OnKeyPress = Edit1KeyPress
      end
      object Edit2: TEdit
        Left = 86
        Top = 118
        Width = 200
        Height = 21
        ReadOnly = True
        TabOrder = 5
        OnKeyPress = Edit1KeyPress
      end
      object TransactionDate: TDateTimePicker
        Left = 86
        Top = 142
        Width = 200
        Height = 21
        Date = 40838.613832685190000000
        Time = 40838.613832685190000000
        TabOrder = 6
        OnKeyPress = Edit1KeyPress
      end
      object Edit3: TEdit
        Left = 86
        Top = 166
        Width = 200
        Height = 21
        TabOrder = 8
        OnKeyPress = Edit1KeyPress
      end
      object NxLinkLabel7: TNxLinkLabel
        Left = 13
        Top = 96
        Width = 67
        Height = 15
        Caption = 'Serial Number'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HoverColor = clRed
        ParentFont = False
        TextDistance = 2
        VertSpacing = 2
        OnClick = NxLinkLabel7Click
      end
    end
    object AvailableMeterPanel: TNxHeaderPanel
      Left = 671
      Top = 103
      Width = 376
      Height = 340
      AdaptiveColors = False
      Caption = 'Select an available meter'
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = [fsBold]
      ParentHeaderFont = False
      TabOrder = 3
      Visible = False
      DesignSize = (
        374
        338)
      FullWidth = 376
      object NxLinkLabel18: TNxLinkLabel
        Left = 331
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
      end
      object NxLinkLabel13: TNxLinkLabel
        Left = 292
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
      end
      object NxEdit2: TNxEdit
        Left = 25
        Top = 35
        Width = 243
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
        TabOrder = 3
        OnClick = NxEdit2Click
      end
      object NxButton1: TNxButton
        Left = 274
        Top = 34
        Width = 79
        Caption = 'Find Serial'
        TabOrder = 4
        OnClick = NxButton1Click
      end
      object CRDBGrid2: TCRDBGrid1
        Left = 24
        Top = 64
        Width = 329
        Height = 253
        DataSource = dsMInv2
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
            Width = 90
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
            FieldName = 'Amphere'
            Title.Alignment = taCenter
            Width = 94
            Visible = True
          end>
      end
    end
    object PrintPanel: TPanel
      Left = 567
      Top = 413
      Width = 708
      Height = 345
      BevelInner = bvLowered
      BorderWidth = 10
      Color = clGreen
      ParentBackground = False
      TabOrder = 11
      Visible = False
      object PageControl1: TPageControl
        Left = 12
        Top = 12
        Width = 684
        Height = 321
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = 'Seal Accountability'
          object QuickRep1: TQuickRep
            Left = 55
            Top = -105
            Width = 816
            Height = 1056
            DataSet = SealSumm
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Functions.Strings = (
              'PAGENUMBER'
              'COLUMNNUMBER'
              'REPORTTITLE')
            Functions.DATA = (
              '0'
              '0'
              #39#39)
            Options = [FirstPageHeader, LastPageFooter]
            Page.Columns = 1
            Page.Orientation = poPortrait
            Page.PaperSize = Letter
            Page.Continuous = False
            Page.Values = (
              127.000000000000000000
              2794.000000000000000000
              127.000000000000000000
              2159.000000000000000000
              127.000000000000000000
              127.000000000000000000
              0.000000000000000000)
            PrinterSettings.Copies = 1
            PrinterSettings.OutputBin = Auto
            PrinterSettings.Duplex = False
            PrinterSettings.FirstPage = 0
            PrinterSettings.LastPage = 0
            PrinterSettings.UseStandardprinter = False
            PrinterSettings.UseCustomBinCode = False
            PrinterSettings.CustomBinCode = 0
            PrinterSettings.ExtendedDuplex = 0
            PrinterSettings.UseCustomPaperCode = False
            PrinterSettings.CustomPaperCode = 0
            PrinterSettings.PrintMetaFile = False
            PrinterSettings.MemoryLimit = 1000000
            PrinterSettings.PrintQuality = 0
            PrinterSettings.Collate = 0
            PrinterSettings.ColorOption = 0
            PrintIfEmpty = True
            SnapToGrid = True
            Units = Inches
            Zoom = 100
            PrevFormStyle = fsNormal
            PreviewInitialState = wsNormal
            PrevInitialZoom = qrZoomToFit
            PreviewDefaultSaveType = stQRP
            PreviewLeft = 0
            PreviewTop = 0
            object DetailBand1: TQRBand
              Left = 48
              Top = 179
              Width = 720
              Height = 33
              AlignToBottom = False
              Color = clWhite
              TransparentBand = False
              ForceNewColumn = False
              ForceNewPage = False
              Size.Values = (
                87.312500000000000000
                1905.000000000000000000)
              PreCaluculateBandHeight = False
              KeepOnOnePage = False
              BandType = rbDetail
              object QRDBText2: TQRDBText
                Left = 10
                Top = 8
                Width = 57
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  26.458333333333330000
                  21.166666666666670000
                  150.812500000000000000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taLeftJustify
                AlignToBand = False
                Color = clWhite
                DataSet = SealSumm
                DataField = 'dateclose'
                Transparent = False
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FullJustify = False
                MaxBreakChars = 0
                FontSize = 10
              end
              object QRDBText3: TQRDBText
                Left = 175
                Top = 6
                Width = 39
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  463.020833333333300000
                  15.875000000000000000
                  103.187500000000000000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taRightJustify
                AlignToBand = False
                Color = clWhite
                DataSet = SealSumm
                DataField = 'Issued'
                Transparent = False
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FullJustify = False
                MaxBreakChars = 0
                FontSize = 10
              end
              object QRDBText4: TQRDBText
                Left = 319
                Top = 8
                Width = 49
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  844.020833333333300000
                  21.166666666666670000
                  129.645833333333300000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taRightJustify
                AlignToBand = False
                Color = clWhite
                DataSet = SealSumm
                DataField = 'installed'
                Transparent = False
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FullJustify = False
                MaxBreakChars = 0
                FontSize = 10
              end
              object QRDBText5: TQRDBText
                Left = 509
                Top = 8
                Width = 54
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  1346.729166666667000000
                  21.166666666666670000
                  142.875000000000000000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taRightJustify
                AlignToBand = False
                Color = clWhite
                DataSet = SealSumm
                DataField = 'damaged'
                Transparent = False
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FullJustify = False
                MaxBreakChars = 0
                FontSize = 10
              end
              object QRDBText6: TQRDBText
                Left = 627
                Top = 8
                Width = 77
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  1658.937500000000000000
                  21.166666666666670000
                  203.729166666666700000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taRightJustify
                AlignToBand = False
                Color = clWhite
                DataSet = SealSumm
                DataField = 'Unaccounted'
                Transparent = False
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FullJustify = False
                MaxBreakChars = 0
                FontSize = 10
              end
            end
            object ColumnHeaderBand1: TQRBand
              Left = 48
              Top = 48
              Width = 720
              Height = 101
              AlignToBottom = False
              Color = clWhite
              TransparentBand = False
              ForceNewColumn = False
              ForceNewPage = False
              Size.Values = (
                267.229166666666700000
                1905.000000000000000000)
              PreCaluculateBandHeight = False
              KeepOnOnePage = False
              BandType = rbColumnHeader
              object QRLabel39: TQRLabel
                Left = 282
                Top = 32
                Width = 155
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  746.125000000000000000
                  84.666666666666670000
                  410.104166666666700000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taCenter
                AlignToBand = True
                Caption = 'Seal Accountability Report'
                Color = clWhite
                Transparent = False
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FontSize = 10
              end
              object QRLabel40: TQRLabel
                Left = 316
                Top = 52
                Width = 88
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  836.083333333333300000
                  137.583333333333300000
                  232.833333333333300000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taCenter
                AlignToBand = True
                Caption = 'Period Covered'
                Color = clWhite
                Transparent = False
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FontSize = 10
              end
              object QRLabel41: TQRLabel
                Left = 134
                Top = 8
                Width = 451
                Height = 19
                Size.Values = (
                  50.270833333333330000
                  354.541666666666700000
                  21.166666666666670000
                  1193.270833333333000000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taCenter
                AlignToBand = True
                Caption = 'ZAMBOANGA DEL NORTE ELECTRIC COOP., INC. (ZANECO)'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Transparent = False
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FontSize = 12
              end
              object QRLabel1: TQRLabel
                Left = 11
                Top = 81
                Width = 72
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  29.104166666666670000
                  214.312500000000000000
                  190.500000000000000000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taLeftJustify
                AlignToBand = False
                Caption = 'Date Closed'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Transparent = False
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FontSize = 10
              end
              object QRLabel2: TQRLabel
                Left = 131
                Top = 81
                Width = 83
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  346.604166666666700000
                  214.312500000000000000
                  219.604166666666700000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taLeftJustify
                AlignToBand = False
                Caption = 'Issued Pieces'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Transparent = False
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FontSize = 10
              end
              object QRLabel3: TQRLabel
                Left = 282
                Top = 81
                Width = 86
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  746.125000000000000000
                  214.312500000000000000
                  227.541666666666700000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taLeftJustify
                AlignToBand = False
                Caption = 'Seals Installed'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Transparent = False
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FontSize = 10
              end
              object QRLabel4: TQRLabel
                Left = 451
                Top = 81
                Width = 112
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  1193.270833333333000000
                  214.312500000000000000
                  296.333333333333300000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taLeftJustify
                AlignToBand = False
                Caption = 'Reported Damaged'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Transparent = False
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FontSize = 10
              end
              object QRLabel5: TQRLabel
                Left = 627
                Top = 81
                Width = 77
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  1658.937500000000000000
                  214.312500000000000000
                  203.729166666666700000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taLeftJustify
                AlignToBand = False
                Caption = 'Unaccounted'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Transparent = False
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FontSize = 10
              end
              object QRSysData1: TQRSysData
                Left = 8
                Top = 32
                Width = 68
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  21.166666666666670000
                  84.666666666666670000
                  179.916666666666700000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taLeftJustify
                AlignToBand = False
                Color = clWhite
                Data = qrsDateTime
                Text = ''
                Transparent = False
                ExportAs = exptText
                FontSize = 10
              end
              object QRSysData2: TQRSysData
                Left = 664
                Top = 32
                Width = 46
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  1756.833333333333000000
                  84.666666666666670000
                  121.708333333333300000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taRightJustify
                AlignToBand = False
                Color = clWhite
                Data = qrsPageNumber
                Text = ''
                Transparent = False
                ExportAs = exptText
                FontSize = 10
              end
            end
            object QRGroup1: TQRGroup
              Left = 48
              Top = 149
              Width = 720
              Height = 30
              AlignToBottom = False
              Color = clWhite
              TransparentBand = False
              ForceNewColumn = False
              ForceNewPage = False
              Size.Values = (
                79.375000000000000000
                1905.000000000000000000)
              PreCaluculateBandHeight = False
              KeepOnOnePage = False
              Expression = 'SealSumm.Crew'
              FooterBand = QRBand1
              Master = QuickRep1
              ReprintOnNewPage = False
              object QRDBText1: TQRDBText
                Left = 54
                Top = 6
                Width = 30
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  142.875000000000000000
                  15.875000000000000000
                  79.375000000000000000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taLeftJustify
                AlignToBand = False
                Color = clWhite
                DataSet = SealSumm
                DataField = 'Crew'
                Transparent = False
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FullJustify = False
                MaxBreakChars = 0
                FontSize = 10
              end
              object QRLabel6: TQRLabel
                Left = 8
                Top = 6
                Width = 30
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  21.166666666666670000
                  15.875000000000000000
                  79.375000000000000000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taLeftJustify
                AlignToBand = False
                Caption = 'Crew'
                Color = clWhite
                Transparent = False
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FontSize = 10
              end
            end
            object QRBand1: TQRBand
              Left = 48
              Top = 212
              Width = 720
              Height = 34
              AlignToBottom = False
              Color = clWhite
              TransparentBand = False
              ForceNewColumn = False
              ForceNewPage = False
              Size.Values = (
                89.958333333333330000
                1905.000000000000000000)
              PreCaluculateBandHeight = False
              KeepOnOnePage = False
              BandType = rbGroupFooter
              object QRExpr1: TQRExpr
                Left = 72
                Top = 12
                Width = 140
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  190.500000000000000000
                  31.750000000000000000
                  370.416666666666700000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taRightJustify
                AlignToBand = False
                Color = clWhite
                ResetAfterPrint = True
                Transparent = False
                Expression = 'sum(SealSumm.Issued)'
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FontSize = 10
              end
              object QRExpr2: TQRExpr
                Left = 218
                Top = 8
                Width = 150
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  576.791666666666700000
                  21.166666666666670000
                  396.875000000000000000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taRightJustify
                AlignToBand = False
                Color = clWhite
                ResetAfterPrint = True
                Transparent = False
                Expression = 'sum(SealSumm.Installed)'
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FontSize = 10
              end
              object QRExpr4: TQRExpr
                Left = 526
                Top = 8
                Width = 178
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  1391.708333333333000000
                  21.166666666666670000
                  470.958333333333300000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taRightJustify
                AlignToBand = False
                Color = clWhite
                ResetAfterPrint = True
                Transparent = False
                Expression = 'sum(SealSumm.Unaccounted)'
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FontSize = 10
              end
              object QRExpr3: TQRExpr
                Left = 406
                Top = 7
                Width = 157
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  1074.208333333333000000
                  18.520833333333330000
                  415.395833333333300000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taRightJustify
                AlignToBand = False
                Color = clWhite
                ResetAfterPrint = True
                Transparent = False
                Expression = 'sum(SealSumm.Damaged)'
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FontSize = 10
              end
            end
            object SummaryBand1: TQRBand
              Left = 48
              Top = 246
              Width = 720
              Height = 91
              AlignToBottom = False
              Color = clWhite
              TransparentBand = False
              ForceNewColumn = False
              ForceNewPage = False
              Size.Values = (
                240.770833333333300000
                1905.000000000000000000)
              PreCaluculateBandHeight = False
              KeepOnOnePage = False
              BandType = rbSummary
              object QRLabel7: TQRLabel
                Left = 151
                Top = 8
                Width = 75
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  399.520833333333300000
                  21.166666666666670000
                  198.437500000000000000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taLeftJustify
                AlignToBand = False
                Caption = 'Prepared by:'
                Color = clWhite
                Transparent = False
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FontSize = 10
              end
              object QRLabel8: TQRLabel
                Left = 495
                Top = 8
                Width = 57
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  1309.687500000000000000
                  21.166666666666670000
                  150.812500000000000000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taLeftJustify
                AlignToBand = False
                Caption = 'Noted by:'
                Color = clWhite
                Transparent = False
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FontSize = 10
              end
              object QRDBText12: TQRDBText
                Left = 152
                Top = 40
                Width = 69
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  402.166666666666700000
                  105.833333333333300000
                  182.562500000000000000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taLeftJustify
                AlignToBand = False
                Color = clWhite
                DataSet = MtSign
                DataField = 'PreparedBy'
                Transparent = False
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FullJustify = False
                MaxBreakChars = 0
                FontSize = 10
              end
              object QRDBText13: TQRDBText
                Left = 152
                Top = 59
                Width = 90
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  402.166666666666700000
                  156.104166666666700000
                  238.125000000000000000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taLeftJustify
                AlignToBand = False
                Color = clWhite
                DataSet = MtSign
                DataField = 'PreparedbyPos'
                Transparent = False
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FullJustify = False
                MaxBreakChars = 0
                FontSize = 10
              end
              object QRDBText14: TQRDBText
                Left = 495
                Top = 40
                Width = 51
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  1309.687500000000000000
                  105.833333333333300000
                  134.937500000000000000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taLeftJustify
                AlignToBand = False
                Color = clWhite
                DataSet = MtSign
                DataField = 'NotedBy'
                Transparent = False
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FullJustify = False
                MaxBreakChars = 0
                FontSize = 10
              end
              object QRDBText15: TQRDBText
                Left = 495
                Top = 59
                Width = 74
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  1309.687500000000000000
                  156.104166666666700000
                  195.791666666666700000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taLeftJustify
                AlignToBand = False
                Color = clWhite
                DataSet = MtSign
                DataField = 'NotedByPos'
                Transparent = False
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FullJustify = False
                MaxBreakChars = 0
                FontSize = 10
              end
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Stock Transfer Check List'
          ImageIndex = 1
          object QuickRep2: TQuickRep
            Left = 20
            Top = -10
            Width = 816
            Height = 1056
            DataSet = MeterDataModule.KMDetail
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Functions.Strings = (
              'PAGENUMBER'
              'COLUMNNUMBER'
              'REPORTTITLE')
            Functions.DATA = (
              '0'
              '0'
              #39#39)
            Options = [FirstPageHeader, LastPageFooter]
            Page.Columns = 2
            Page.Orientation = poPortrait
            Page.PaperSize = Letter
            Page.Continuous = False
            Page.Values = (
              127.000000000000000000
              2794.000000000000000000
              127.000000000000000000
              2159.000000000000000000
              127.000000000000000000
              127.000000000000000000
              0.000000000000000000)
            PrinterSettings.Copies = 1
            PrinterSettings.OutputBin = Auto
            PrinterSettings.Duplex = False
            PrinterSettings.FirstPage = 0
            PrinterSettings.LastPage = 0
            PrinterSettings.UseStandardprinter = False
            PrinterSettings.UseCustomBinCode = False
            PrinterSettings.CustomBinCode = 0
            PrinterSettings.ExtendedDuplex = 0
            PrinterSettings.UseCustomPaperCode = False
            PrinterSettings.CustomPaperCode = 0
            PrinterSettings.PrintMetaFile = False
            PrinterSettings.MemoryLimit = 1000000
            PrinterSettings.PrintQuality = 0
            PrinterSettings.Collate = 0
            PrinterSettings.ColorOption = 0
            PrintIfEmpty = True
            SnapToGrid = True
            Units = Inches
            Zoom = 100
            PrevFormStyle = fsNormal
            PreviewInitialState = wsNormal
            PrevInitialZoom = qrZoomToFit
            PreviewDefaultSaveType = stQRP
            PreviewLeft = 0
            PreviewTop = 0
            object QRBand2: TQRBand
              Left = 48
              Top = 179
              Width = 360
              Height = 26
              AlignToBottom = False
              Color = clWhite
              TransparentBand = False
              ForceNewColumn = False
              ForceNewPage = False
              Size.Values = (
                68.791666666666670000
                952.500000000000000000)
              PreCaluculateBandHeight = False
              KeepOnOnePage = False
              BandType = rbDetail
              object QRDBText7: TQRDBText
                Left = 73
                Top = 3
                Width = 66
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  193.145833333333300000
                  7.937500000000000000
                  174.625000000000000000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taLeftJustify
                AlignToBand = False
                Color = clWhite
                DataSet = MeterDataModule.KMDetail
                DataField = 'meterbrand'
                Transparent = False
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FullJustify = False
                MaxBreakChars = 0
                FontSize = 10
              end
              object QRDBText8: TQRDBText
                Left = 162
                Top = 3
                Width = 75
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  428.625000000000000000
                  7.937500000000000000
                  198.437500000000000000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taRightJustify
                AlignToBand = False
                Color = clWhite
                DataSet = MeterDataModule.KMDetail
                DataField = 'serialnumber'
                Transparent = False
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FullJustify = False
                MaxBreakChars = 0
                FontSize = 10
              end
              object QRSysData5: TQRSysData
                Left = 7
                Top = 3
                Width = 60
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  18.520833333333330000
                  7.937500000000000000
                  158.750000000000000000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taLeftJustify
                AlignToBand = False
                Color = clWhite
                Data = qrsDetailNo
                Text = ''
                Transparent = False
                ExportAs = exptText
                FontSize = 10
              end
            end
            object QRBand3: TQRBand
              Left = 48
              Top = 48
              Width = 720
              Height = 101
              AlignToBottom = False
              Color = clWhite
              TransparentBand = False
              ForceNewColumn = False
              ForceNewPage = False
              Size.Values = (
                267.229166666666700000
                1905.000000000000000000)
              PreCaluculateBandHeight = False
              KeepOnOnePage = False
              BandType = rbTitle
              object QRLabel9: TQRLabel
                Left = 270
                Top = 30
                Width = 180
                Height = 19
                Size.Values = (
                  50.270833333333330000
                  714.375000000000000000
                  79.375000000000000000
                  476.250000000000000000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taCenter
                AlignToBand = True
                Caption = 'Stock Transfer Check List'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Transparent = False
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FontSize = 12
              end
              object QRLabel11: TQRLabel
                Left = 134
                Top = 8
                Width = 451
                Height = 19
                Size.Values = (
                  50.270833333333330000
                  354.541666666666700000
                  21.166666666666670000
                  1193.270833333333000000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taCenter
                AlignToBand = True
                Caption = 'ZAMBOANGA DEL NORTE ELECTRIC COOP., INC. (ZANECO)'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Transparent = False
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FontSize = 12
              end
              object QRSysData3: TQRSysData
                Left = 8
                Top = 32
                Width = 68
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  21.166666666666670000
                  84.666666666666670000
                  179.916666666666700000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taLeftJustify
                AlignToBand = False
                Color = clWhite
                Data = qrsDateTime
                Text = ''
                Transparent = False
                ExportAs = exptText
                FontSize = 10
              end
              object QRSysData4: TQRSysData
                Left = 664
                Top = 32
                Width = 46
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  1756.833333333333000000
                  84.666666666666670000
                  121.708333333333300000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taRightJustify
                AlignToBand = False
                Color = clWhite
                Data = qrsPageNumber
                Text = ''
                Transparent = False
                ExportAs = exptText
                FontSize = 10
              end
              object QRDBText16: TQRDBText
                Left = 221
                Top = 56
                Width = 92
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  584.729166666666700000
                  148.166666666666700000
                  243.416666666666700000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taLeftJustify
                AlignToBand = False
                Color = clWhite
                DataSet = MeterDataModule.KMTrans
                DataField = 'DateTransferred'
                Transparent = False
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FullJustify = False
                MaxBreakChars = 0
                FontSize = 10
              end
              object QRLabel10: TQRLabel
                Left = 104
                Top = 56
                Width = 96
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  275.166666666666700000
                  148.166666666666700000
                  254.000000000000000000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taLeftJustify
                AlignToBand = False
                Caption = 'Date Transferred'
                Color = clWhite
                Transparent = False
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FontSize = 10
              end
              object QRDBText21: TQRDBText
                Left = 373
                Top = 56
                Width = 59
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  986.895833333333300000
                  148.166666666666700000
                  156.104166666666700000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taLeftJustify
                AlignToBand = False
                Color = clWhite
                DataSet = MeterDataModule.KMTrans
                DataField = 'Reference'
                Transparent = False
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FullJustify = False
                MaxBreakChars = 0
                FontSize = 10
              end
              object QRLabel17: TQRLabel
                Left = 347
                Top = 56
                Width = 20
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  918.104166666666700000
                  148.166666666666700000
                  52.916666666666670000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taLeftJustify
                AlignToBand = False
                Caption = 'Ref'
                Color = clWhite
                Transparent = False
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FontSize = 10
              end
              object QRLabel20: TQRLabel
                Left = 467
                Top = 56
                Width = 66
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  1235.604166666667000000
                  148.166666666666700000
                  174.625000000000000000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taLeftJustify
                AlignToBand = False
                Caption = 'Description'
                Color = clWhite
                Transparent = False
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FontSize = 10
              end
              object QRDBText22: TQRDBText
                Left = 549
                Top = 56
                Width = 66
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  1452.562500000000000000
                  148.166666666666700000
                  174.625000000000000000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taLeftJustify
                AlignToBand = False
                Color = clWhite
                DataSet = MeterDataModule.KMTrans
                DataField = 'Description'
                Transparent = False
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FullJustify = False
                MaxBreakChars = 0
                FontSize = 10
              end
            end
            object QRBand4: TQRBand
              Left = 48
              Top = 296
              Width = 360
              Height = 34
              AlignToBottom = False
              Color = clWhite
              TransparentBand = False
              ForceNewColumn = False
              ForceNewPage = False
              Size.Values = (
                89.958333333333330000
                952.500000000000000000)
              PreCaluculateBandHeight = False
              KeepOnOnePage = False
              BandType = rbGroupFooter
              object QRExpr5: TQRExpr
                Left = 72
                Top = 12
                Width = 140
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  190.500000000000000000
                  31.750000000000000000
                  370.416666666666700000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taRightJustify
                AlignToBand = False
                Color = clWhite
                ResetAfterPrint = True
                Transparent = False
                Expression = 'sum(SealSumm.Issued)'
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FontSize = 10
              end
              object QRExpr6: TQRExpr
                Left = 218
                Top = 8
                Width = 150
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  576.791666666666700000
                  21.166666666666670000
                  396.875000000000000000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taRightJustify
                AlignToBand = False
                Color = clWhite
                ResetAfterPrint = True
                Transparent = False
                Expression = 'sum(SealSumm.Installed)'
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FontSize = 10
              end
              object QRExpr7: TQRExpr
                Left = 526
                Top = 8
                Width = 178
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  1391.708333333333000000
                  21.166666666666670000
                  470.958333333333300000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taRightJustify
                AlignToBand = False
                Color = clWhite
                ResetAfterPrint = True
                Transparent = False
                Expression = 'sum(SealSumm.Unaccounted)'
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FontSize = 10
              end
              object QRExpr8: TQRExpr
                Left = 406
                Top = 7
                Width = 157
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  1074.208333333333000000
                  18.520833333333330000
                  415.395833333333300000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taRightJustify
                AlignToBand = False
                Color = clWhite
                ResetAfterPrint = True
                Transparent = False
                Expression = 'sum(SealSumm.Damaged)'
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FontSize = 10
              end
            end
            object QRBand5: TQRBand
              Left = 48
              Top = 205
              Width = 720
              Height = 91
              AlignToBottom = False
              Color = clWhite
              TransparentBand = False
              ForceNewColumn = False
              ForceNewPage = False
              Size.Values = (
                240.770833333333300000
                1905.000000000000000000)
              PreCaluculateBandHeight = False
              KeepOnOnePage = False
              BandType = rbSummary
              object QRLabel18: TQRLabel
                Left = 151
                Top = 8
                Width = 75
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  399.520833333333300000
                  21.166666666666670000
                  198.437500000000000000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taLeftJustify
                AlignToBand = False
                Caption = 'Prepared by:'
                Color = clWhite
                Transparent = False
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FontSize = 10
              end
              object QRLabel19: TQRLabel
                Left = 495
                Top = 8
                Width = 57
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  1309.687500000000000000
                  21.166666666666670000
                  150.812500000000000000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taLeftJustify
                AlignToBand = False
                Caption = 'Noted by:'
                Color = clWhite
                Transparent = False
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FontSize = 10
              end
              object QRDBText17: TQRDBText
                Left = 152
                Top = 40
                Width = 69
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  402.166666666666700000
                  105.833333333333300000
                  182.562500000000000000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taLeftJustify
                AlignToBand = False
                Color = clWhite
                DataSet = MtSign
                DataField = 'PreparedBy'
                Transparent = False
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FullJustify = False
                MaxBreakChars = 0
                FontSize = 10
              end
              object QRDBText18: TQRDBText
                Left = 152
                Top = 59
                Width = 90
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  402.166666666666700000
                  156.104166666666700000
                  238.125000000000000000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taLeftJustify
                AlignToBand = False
                Color = clWhite
                DataSet = MtSign
                DataField = 'PreparedbyPos'
                Transparent = False
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FullJustify = False
                MaxBreakChars = 0
                FontSize = 10
              end
              object QRDBText19: TQRDBText
                Left = 495
                Top = 40
                Width = 51
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  1309.687500000000000000
                  105.833333333333300000
                  134.937500000000000000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taLeftJustify
                AlignToBand = False
                Color = clWhite
                DataSet = MtSign
                DataField = 'NotedBy'
                Transparent = False
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FullJustify = False
                MaxBreakChars = 0
                FontSize = 10
              end
              object QRDBText20: TQRDBText
                Left = 495
                Top = 59
                Width = 74
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  1309.687500000000000000
                  156.104166666666700000
                  195.791666666666700000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taLeftJustify
                AlignToBand = False
                Color = clWhite
                DataSet = MtSign
                DataField = 'NotedByPos'
                Transparent = False
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FullJustify = False
                MaxBreakChars = 0
                FontSize = 10
              end
            end
            object QRBand6: TQRBand
              Left = 48
              Top = 149
              Width = 360
              Height = 30
              AlignToBottom = False
              Color = clWhite
              TransparentBand = False
              ForceNewColumn = False
              ForceNewPage = False
              Size.Values = (
                79.375000000000000000
                952.500000000000000000)
              PreCaluculateBandHeight = False
              KeepOnOnePage = False
              BandType = rbColumnHeader
              object QRLabel12: TQRLabel
                Left = 74
                Top = 6
                Width = 35
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  195.791666666666700000
                  15.875000000000000000
                  92.604166666666670000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taLeftJustify
                AlignToBand = False
                Caption = 'Brand'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Transparent = False
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FontSize = 10
              end
              object QRLabel13: TQRLabel
                Left = 163
                Top = 6
                Width = 83
                Height = 17
                Size.Values = (
                  44.979166666666670000
                  431.270833333333300000
                  15.875000000000000000
                  219.604166666666700000)
                XLColumn = 0
                XLNumFormat = nfGeneral
                Alignment = taLeftJustify
                AlignToBand = False
                Caption = 'Serial Number'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Transparent = False
                ExportAs = exptText
                WrapStyle = BreakOnSpaces
                FontSize = 10
              end
            end
          end
        end
      end
    end
    object MTListPanel: TNxHeaderPanel
      Left = 441
      Top = 139
      Width = 276
      Height = 149
      AdaptiveColors = False
      Caption = 'Assigned Meter List (Set Covered Date)'
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      ParentHeaderFont = False
      TabOrder = 12
      Visible = False
      FullWidth = 276
      object Label28: TLabel
        Left = 104
        Top = 43
        Width = 74
        Height = 13
        Caption = 'Period Covered'
      end
      object SpeedButton1: TSpeedButton
        Left = 81
        Top = 90
        Width = 131
        Height = 45
        Caption = 'Print Report'
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C000074120000741200000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4D3D3D3D3D3D3C7C7C7C7C7C7C7C7
          C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7D3
          D3D3D3D3D3E4E4E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFED6AFFED6AFFED6AFFED6
          AFFED6AFFED7B1FED7B1FED8B2FED9B4FED9B5FEDAB7FEDAB7FEDBB9FEDCBAFE
          DCBAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1EFEFEF
          ECECECEBEBEBE9E9E9E7E7E7E6E6E6E0E0E0E2E2E2FED4ABFED4ABFED4ABFED4
          ABFED4ADFED5ADFED5AFFED6B0FED7B2FED8B3FED8B3FED9B5FED9B6FEDAB8FF
          DBBAE0E0E0E6E6E6E7E7E7E9E9E9EBEBEBECECECEFEFEFF1F1F1E8E8E8CFCFCF
          CBCBCBC0C0C0ADADADADADADADADADADADAD646363FFCD9EFFCD9EFFCD9EFFCE
          A0FFCFA2FFD0A4FFD2A7FFD4ABFFD6AEFFD7B0FFD8B2FFD9B6FFDBB9FFDDBDFF
          DDBD646464ADADADADADADADADADBFBFBFCBCBCBCFCFCFE8E8E8F6F6F6E8E8E8
          CDCDCDADADADCECECECECECECECECECECECE333333E8BB90E8BB90E8BB91E8BC
          94E8BC95E8BE98E8C09BE8C29EE8C4A1E8C4A2E8C5A5E8C6A8E8C8ABE8CAAEE8
          CAAE333333CCCCCCCCCCCCCCCCCCADADADCACACAE8E8E8F6F6F6FFFFFFFFFFFF
          ADADADD1D1D1D1D1D1D1D1D1D1D1D1D1D1D1333333C5A07CC5A07CC5A17FC5A2
          80C5A282C5A484C5A688C5A789C5A78AC5A88CC5A98FC5AA92C5AC95C5AD97C5
          AD97333333CCCCCCCCCCCCCCCCCCCCCCCCADADADFFFFFFFFFFFFFFFFFFFFFFFF
          ADADADD4D4D4D4D4D4D4D4D4D4D4D4D4D4D43432329F84749F84749F84749F84
          749F85759F85759F85759F85769F86769F86779F86779F86789F86789F86789F
          8678343232CFCFCFC8CCCACECECECECECEADADADFFFFFFFFFFFFFFFFFFFFFFFF
          ADADADD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D6D6D6D6D6D6D6D6D6D5D5D5D5D5
          D5D5D5D5D5D5D5D4D4D4D4D4D4D4D4D4D4D4D4D3D3D3D3D3D3D3D3D3D3D3D3D2
          D2D2D2D2D2CDD0CF3AA577C5CDCAD1D1D1ADADADFFFFFFFFFFFFFFFFFFFFFFFF
          ADADADD9D9D9D9D9D9F0F0F0E5ECE9DEE9E4DEE9E4DEE9E4DEE9E4DEE9E4DEE9
          E4DEE9E4DEE9E4DEE9E4DEE9E4DEE9E4DEE9E4DEE9E4DEE9E4DEE9E4DEE9E4DE
          E9E4DEE9E4ECEEEDEAECEBD4D4D4D4D4D4ADADADFFFFFFFFFFFFFFFFFFFFFFFF
          ADADADDCDCDCEDEDEDB2DCCA279C6B289C6B289C6B299C6A289C6A289B6A299B
          6A289A6A299B69299B69299B69299A69299A69299A69299A69299A69299A6929
          9A69299A69299A69CBE8DCEAEAEAD7D7D7ADADADFFFFFFFFFFFFFFFFFFFFFFFF
          B8B8B8E0E0E0F9FCFB26A06E4BCCA04BCCA04BCCA04BCCA04BCCA04BCCA04BCC
          A04BCCA04BCCA04BCCA04BCCA04BCCA04BCCA04BCCA04BCCA04BCCA04BCCA04B
          CCA04BCCA04BCCA0299A69FFFFFFDADADAB7B7B7FFFFFFFFFFFFFFFFFFFFFFFF
          BBBBBBEAEAEAF4FAF724A47148CA9E24A77524A77525A57325A57325A57325A5
          7325A57325A57325A57325A57325A57325A57325A57325A57325A57325A57325
          A57324A77548CA9E289C6CFFFFFFE5E5E5BBBBBBFFFFFFFFFFFFFFFFFFFFFFFF
          C0C0C0F6F6F6F3FAF722A77643C99C22AF7C1FBA861FBA861FBA861FBA861FBA
          861FBA861FBA861FBA861FBA861FBA861FBA861FBA861FBA861FBA861FBA861F
          BA8622AF7C44C99C26A06FFFFFFFF3F3F3BFBFBFFFFFFFFFFFFFFFFFFFFFFFFF
          C4C4C4FFFFFFEEFAF51FAD795BE0B727C29027C89627C89627C89627C89627C8
          9627C89627C89627C89627C89627C89627C89627C89627C89627C89627C89627
          C89627C18F63E6BF24A371FFFFFFFFFFFFC5C5C5FFFFFFFFFFFFFFFFFFFFFFFF
          C9C9C9FFFFFFE6F8F21DB07D6DEEC86DEEC86DEEC86DEEC86DEEC86DEEC86DEE
          C86DEEC86DEEC86DEEC86DEEC86DEEC86DEEC86DEEC86DEEC86DEEC86DEEC86D
          EEC86DEEC86DEEC822A875FFFFFFFFFFFFCBCBCBFFFFFFFFFFFFFFFFFFFFFFFF
          CBCBCBFFFFFFDDF7EF1BB4816DEEC86DEEC86DEEC86DEEC86DEEC86DEEC86DEE
          C86DEEC86DEEC86DEEC86DEEC86DEEC86DEEC86DEEC86DEEC86DEEC86DEEC86D
          EEC86DEEC86DEEC81FAC79FFFFFFFFFFFFCDCDCDFFFFFFFFFFFFFFFFFFFFFFFF
          CDCDCDFEFEFEE6FAF419B8846DEEC848DEB14CB5884CB5884CB5884CB5884CB5
          874CB4874CB4874CB4884CB4884CB5884CB5884CB5894CB5884CB4884CB48844
          B88A32D4A362E8C01DB17DFFFFFFFEFEFECFCFCFFFFFFFFFFFFFFFFFFFFFFFFF
          D4D4D4EFEFEFF6FCFA17BC875DE7BE24C18EECBE97ECBF98ECBF98ECBF98ECBF
          98ECBF98ECBF98ECBF98ECBF98ECBF98ECBF98ECBF98ECBF98ECBF98ECBF98EC
          BF9825BE8C26CE9C1AB480FFFFFFF3F3F3D1D1D1FFFFFFFFFFFFFFFFFFFFFFFF
          F9F9F9CFCFCFC6D0CC16BE8955C09F4BB691F1C9A1F3CCA4F3CCA4F3CCA4F3CC
          A4F3CCA4F3CCA4F3CCA4F3CCA4F3CCA4F3CCA4F3CCA4F3CCA4F3CCA4F3CCA4F3
          CBA349B48E56C0A019B884D3D3D3CECECEF5F5F5FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF0F0F0F5F5F5F5F5F5FFFFFFF5D1ACF9D8B3F9D8B3F8D8B3F9D8
          B3F9D8B2F8D8B2F9D8B3F9D8B3F9D8B2F8D8B2F9D8B2F9D8B3F9D8B3F9D8B2F7
          D5B0F3F4F4F5F5F5F5F5F5F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D0ACF9D9B5F9D9B5F9D9B5F9D9
          B5F9D9B6F9D9B6F9DAB6F9DAB6F9D9B5F9DAB5F9DAB5F9D9B6F9D9B5F9D9B5F6
          D4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3CEAAF9DAB8FADBB8FADBB8F9DA
          B8FADBB8FADBB8F9DBB8F9DBB8F9DBB9F9DBB8F9DAB8FADBB8FADBB8F9DBB8F5
          D2AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2CCA9F9DCBBFADDBBFADCBBFADC
          BBFADDBAFADDBBF9DCBBFADDBBF9DCBBFADCBBF9DCBBFADCBBF9DCBBFADCBAF4
          D0AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1CBA7FADEBEFADEBDFADEBEFADD
          BDFADDBDFADDBDFADEBEFADEBEFADDBDFADDBEFADEBDFADEBEFADDBEFADDBEF3
          CFADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0C9A7FADFC1FAE0C0FADFC0FADF
          C0FBDFC0FADFC0FBDFC0FADFC1FADFC0FBDFC0FADFC0FADFC0FADFC0FBDFC0F1
          CCABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFC8A5FAE1C3FAE0C2FBE0C3FAE0
          C2FAE0C2FBE0C3FAE0C3FAE0C3FAE0C3FAE0C3FAE0C2FBE0C2FAE0C2FAE0C3F1
          CBA9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEC7A5FBE2C5FBE2C4FAE1C5FBE1
          C4FBE2C5FAE2C4FBE1C5FAE1C5FBE1C5FBE1C5FBE1C4FBE1C4FBE2C4FBE1C5EF
          C8A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFC7A5EFC7A5EFC7A5EFC7A5EFC7
          A5EFC7A5EFC7A5EFC7A5EFC7A5EFC7A5EFC7A5EFC7A5EFC7A5EFC7A5EFC7A5EF
          C7A6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = SpeedButton1Click
      end
      object Label29: TLabel
        Left = 20
        Top = 66
        Width = 24
        Height = 13
        Caption = 'From'
      end
      object Label30: TLabel
        Left = 145
        Top = 67
        Width = 12
        Height = 13
        Caption = 'To'
      end
      object NxLinkLabel41: TNxLinkLabel
        Left = 221
        Top = 6
        Width = 45
        Height = 18
        Caption = 'Close'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
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
        ParentFont = False
        TextDistance = 2
        Transparent = True
        VertSpacing = 2
        OnClick = NxLinkLabel41Click
      end
      object MTDateFrom: TDateTimePicker
        Left = 48
        Top = 63
        Width = 93
        Height = 21
        Date = 42685.490644409720000000
        Time = 42685.490644409720000000
        TabOrder = 1
      end
      object MTDateTo: TDateTimePicker
        Left = 160
        Top = 62
        Width = 93
        Height = 21
        Date = 42685.490682488420000000
        Time = 42685.490682488420000000
        TabOrder = 2
      end
    end
  end
  object SearchTrans: TMyQuery
    Connection = MeterDataModule.MyConnection1
    SQL.Strings = (
      'select * from'
      '  ((select idnewconnection as idtrans,'
      '           1 as transcode,'
      '           '#39#39' as accountnumber,'
      '           name,'
      '           address,'
      '           '#39'New Connection'#39' as description,'
      '           DatePaid, '
      '           ORNumber'
      '               from zanecoisd.newconnection '
      
        '                             where ifnull(trim(ornumber),'#39#39') <> ' +
        #39#39' and'
      
        '                                   ifnull(trim(serial),'#39#39') = '#39#39' ' +
        'and'
      '                                   ifnull(name,'#39#39') <> '#39#39' and'
      
        '                                   ifnull(Accomplished,'#39#39') = '#39'0'#39 +
        ' and'
      '                                   datepaid>'#39'2013-12-31'#39')  '
      '    union'
      '               '
      '   (select idrecon as idtrans,'
      '           2 as transcode,'
      '           accountnumber,'
      '           name,'
      '           address,'
      '           '#39'Reconnection'#39' as description,'
      '           ORDate,'
      '           ORNumber'
      '               from zanecoisd.recon'
      
        '                           where ifnull(trim(ornumber),'#39#39') <> '#39#39 +
        ' and'
      
        '                                 ifnull(trim(serial),'#39#39') = '#39#39' an' +
        'd'
      '                                 ifnull(name,'#39#39') <> '#39#39' and '
      
        '                                 ifnull(Accomplished,'#39#39') = '#39'0'#39' a' +
        'nd'
      '                                 recondate>'#39'2013-12-31'#39') '
      '/* '
      '    union'
      ''
      '   (select entry as idtrans,'
      '           3 as transcode,'
      '           changemeter.accountnumber,'
      '           changemeter.name,'
      '           master.address,'
      '          '#39'Change Meter'#39' as description,'#39#39','#39#39' '
      '               from zaneco.changemeter'
      
        '                     left join zaneco.master on (changemeter.cod' +
        'e = master.code)'
      
        '                     where ifnull(newmeterserial,'#39#39') = '#39#39') */ ) ' +
        'trans order by datepaid desc')
    Left = 32
    Top = 192
    object SearchTransidtrans: TLargeintField
      FieldName = 'idtrans'
    end
    object SearchTranstranscode: TLargeintField
      FieldName = 'transcode'
    end
    object SearchTransaccountnumber: TStringField
      FieldName = 'accountnumber'
      Size = 10
    end
    object SearchTransname: TStringField
      FieldName = 'name'
      Size = 50
    end
    object SearchTransaddress: TStringField
      FieldName = 'address'
      Size = 50
    end
    object SearchTransdescription: TStringField
      FieldName = 'description'
      Size = 14
    end
    object SearchTransDatePaid: TDateTimeField
      FieldName = 'DatePaid'
    end
    object SearchTransORNumber: TStringField
      FieldName = 'ORNumber'
    end
  end
  object dsSearchTrans: TMyDataSource
    DataSet = SearchTrans
    Left = 32
    Top = 240
  end
  object MInv: TMyQuery
    Connection = MeterDataModule.MyConnection1
    SQL.Strings = (
      'select *,'
      '       case status  '
      '        when 0 then '#39'INITIAL TESTING'#39
      '        when 1 then '#39'TRANSFER'#39
      '        when 2 then '#39'AVAILABLE'#39
      '        when 3 then '#39'INSTALLED'#39
      '        when 4 then '#39'DAMAGED/SALVAGE'#39
      '        when 5 then '#39'REMOVED METER'#39
      '        when 6 then '#39'CALIBRATION/REPAIR'#39
      '        when 7 then '#39'FOR VERIFICATION'#39
      '        else '#39#39' '
      '       end '
      '       as MeterStatus,'
      
        '       (select metercondition from metertransaction where metert' +
        'ransaction.idmeterinv = meterinv.idmeterinv '
      '        order by datetrans desc limit 1) as MeterCondition,'
      
        '       (select Reading from metertransaction where metertransact' +
        'ion.idmeterinv = meterinv.idmeterinv '
      '        order by datetrans desc limit 1) as Reading'
      'from MeterInv')
    Left = 112
    Top = 192
    object MInvidMeterInv: TLargeintField
      FieldName = 'idMeterInv'
    end
    object MInvIdAcq: TLargeintField
      FieldName = 'IdAcq'
    end
    object MInvSerialNumber: TStringField
      FieldName = 'SerialNumber'
    end
    object MInvBrand: TStringField
      FieldName = 'Brand'
    end
    object MInvType: TStringField
      FieldName = 'Type'
      Size = 30
    end
    object MInvAmphere: TStringField
      FieldName = 'Amphere'
      Size = 15
    end
    object MInvAccuracy: TFloatField
      FieldName = 'Accuracy'
    end
    object MInvStatus: TStringField
      FieldName = 'Status'
      Size = 10
    end
    object MInvMeterStatus: TStringField
      FieldName = 'MeterStatus'
      Size = 18
    end
    object MInvMeterCondition: TStringField
      FieldName = 'MeterCondition'
      Size = 15
    end
    object MInvReading: TFloatField
      FieldName = 'Reading'
    end
  end
  object dsMInv: TMyDataSource
    DataSet = MInv
    Left = 112
    Top = 240
  end
  object SInv: TMyQuery
    Connection = MeterDataModule.MyConnection1
    SQL.Strings = (
      'select a.*,'
      '       c.crew,'
      '       count(b.serialnumber) sealsinstalled'
      'from zanecometer.sealbatch a'
      'left join zanecoisd.techcrew c on c.idtechcrew = a.idtechcrew'
      'left join zanecometer.sealinv b on b.idsealbatch = a.idsealbatch'
      'group by c.crew'
      'order by a.idsealbatch')
    Left = 32
    Top = 293
    object SInvidSealBatch: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'idSealBatch'
      Origin = 'a.idSealBatch'
    end
    object SInvidsealacq: TFloatField
      FieldName = 'idsealacq'
      Origin = 'a.idsealacq'
    end
    object SInvidTechCrew: TFloatField
      FieldName = 'idTechCrew'
      Origin = 'a.idTechCrew'
    end
    object SInvboxes: TLargeintField
      FieldName = 'boxes'
      Origin = 'a.boxes'
    end
    object SInvpcs: TLargeintField
      FieldName = 'pcs'
      Origin = 'a.pcs'
    end
    object SInvTotalPcs: TLargeintField
      FieldName = 'TotalPcs'
      Origin = 'a.TotalPcs'
    end
    object SInvDateIssue: TDateField
      FieldName = 'DateIssue'
      Origin = 'a.DateIssue'
    end
    object SInvcrew: TStringField
      FieldName = 'crew'
      Origin = 'c.Crew'
    end
    object SInvsealsinstalled: TLargeintField
      FieldName = 'sealsinstalled'
      Origin = 'sealsinstalled'
    end
    object SInvUpdateType: TStringField
      FieldName = 'UpdateType'
      Origin = 'a.UpdateType'
      Size = 1
    end
  end
  object dsSInv: TMyDataSource
    DataSet = SInv
    Left = 32
    Top = 341
  end
  object TechCrew: TMyQuery
    Connection = MeterDataModule.MyConnection1
    SQL.Strings = (
      'select * from zanecoisd.techcrew')
    Left = 111
    Top = 291
    object TechCrewidtechcrew: TLargeintField
      FieldName = 'idtechcrew'
    end
    object TechCrewTechArea: TStringField
      FieldName = 'TechArea'
      Size = 2
    end
    object TechCrewCrew: TStringField
      FieldName = 'Crew'
    end
  end
  object dsTechCrew: TMyDataSource
    DataSet = TechCrew
    Left = 112
    Top = 342
  end
  object MtSign: TMyQuery
    Connection = MeterDataModule.MyConnection1
    SQL.Strings = (
      'select * from MtSign')
    Left = 184
    Top = 192
    object MtSignidMtSign: TIntegerField
      FieldName = 'idMtSign'
    end
    object MtSignPreparedby: TStringField
      FieldName = 'Preparedby'
      Size = 50
    end
    object MtSignPreparedbyPos: TStringField
      FieldName = 'PreparedbyPos'
      Size = 50
    end
    object MtSignNotedBy: TStringField
      FieldName = 'NotedBy'
      Size = 50
    end
    object MtSignNotedByPos: TStringField
      FieldName = 'NotedByPos'
      Size = 50
    end
  end
  object dsMtSign: TDataSource
    DataSet = MtSign
    Left = 184
    Top = 240
  end
  object SealSumm: TMyQuery
    Connection = MeterDataModule.MyConnection1
    SQL.Strings = (
      'SELECT sealclose.dateclose, '
      '       cast(sealclose.Issued as decimal(10,0)) Issued, '
      '       cast(sealclose.installed as decimal(10,0)) installed, '
      '       cast(sealclose.damaged as decimal(10,0)) damaged, '
      
        '       cast(sealclose.Unaccounted as decimal(10,0)) Unaccounted,' +
        ' '
      '       sealclose.idtechcrew, '
      '       techcrew.Crew'
      'FROM zanecometer.sealclose'
      'INNER JOIN zanecoisd.techcrew'
      'ON techcrew.idtechcrew = sealclose.idtechcrew'
      'order by techcrew.crew, dateclose')
    Left = 183
    Top = 291
    object SealSummdateclose: TDateField
      FieldName = 'dateclose'
    end
    object SealSummIssued: TFloatField
      FieldName = 'Issued'
    end
    object SealSumminstalled: TFloatField
      FieldName = 'installed'
    end
    object SealSummdamaged: TFloatField
      FieldName = 'damaged'
    end
    object SealSummUnaccounted: TFloatField
      FieldName = 'Unaccounted'
    end
    object SealSummidtechcrew: TFloatField
      FieldName = 'idtechcrew'
    end
    object SealSummCrew: TStringField
      FieldName = 'Crew'
    end
  end
  object InsertSealBatch: TMyQuery
    Connection = MeterDataModule.MyConnection1
    SQL.Strings = (
      'insert into sealbatch'
      '(idTechCrew,'
      ' boxes,'
      ' pcs,'
      ' TotalPcs,'
      ' DateIssue,'
      ' UpdateType)'
      'values '
      '(:idTechCrew,'
      ' :boxes,'
      ' :pcs,'
      ' :TotalPcs,'
      ' :DateIssue,'
      ' :UpdateType)')
    Left = 272
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idTechCrew'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'boxes'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pcs'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TotalPcs'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DateIssue'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'UpdateType'
        Value = nil
      end>
  end
  object SealDetail: TMyQuery
    Connection = MeterDataModule.MyConnection1
    SQL.Strings = (
      
        'select sealinv.*, M.AccountNumber, M.Name from zanecometer.seali' +
        'nv'
      'left join zaneco.master M on sealInv.Code = M.Code')
    MasterSource = dsSInv
    MasterFields = 'idTechCrew;idSealBatch'
    DetailFields = 'idTechCrew;idSealBatch'
    Left = 272
    Top = 238
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idTechCrew'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'idSealBatch'
        Value = nil
      end>
    object SealDetailidSealInv: TLargeintField
      FieldName = 'idSealInv'
    end
    object SealDetailidTechCrew: TFloatField
      FieldName = 'idTechCrew'
    end
    object SealDetailSealNumber: TStringField
      FieldName = 'SealNumber'
    end
    object SealDetailStatus: TStringField
      FieldName = 'Status'
      Size = 1
    end
    object SealDetailDateInst: TDateField
      FieldName = 'DateInst'
    end
    object SealDetailCode: TFloatField
      FieldName = 'Code'
    end
    object SealDetailMeterBrand: TStringField
      FieldName = 'MeterBrand'
    end
    object SealDetailSerialNumber: TStringField
      FieldName = 'SerialNumber'
    end
    object SealDetailidSealBatch: TFloatField
      FieldName = 'idSealBatch'
    end
    object SealDetailAccountNumber: TStringField
      FieldName = 'AccountNumber'
      Size = 10
    end
    object SealDetailName: TStringField
      FieldName = 'Name'
      Size = 50
    end
  end
  object dsSealDetail: TMyDataSource
    DataSet = SealDetail
    Left = 272
    Top = 288
  end
  object MTransfer: TMyQuery
    Connection = MeterDataModule.MyConnection1
    SQL.Strings = (
      'select * from MeterInv where status = '#39'1'#39' order by idmeterinv')
    Left = 368
    Top = 192
    object MTransferidMeterInv: TLargeintField
      FieldName = 'idMeterInv'
    end
    object MTransferIdAcq: TLargeintField
      FieldName = 'IdAcq'
    end
    object MTransferSerialNumber: TStringField
      FieldName = 'SerialNumber'
    end
    object MTransferBrand: TStringField
      FieldName = 'Brand'
    end
    object MTransferType: TStringField
      FieldName = 'Type'
      Size = 30
    end
    object MTransferAmphere: TStringField
      FieldName = 'Amphere'
      Size = 15
    end
    object MTransferAccuracy: TFloatField
      FieldName = 'Accuracy'
    end
    object MTransferStatus: TStringField
      FieldName = 'Status'
      Size = 10
    end
  end
  object dsMTransfer: TMyDataSource
    DataSet = MTransfer
    Left = 423
    Top = 193
  end
  object MInv2: TMyQuery
    Connection = MeterDataModule.MyConnection1
    SQL.Strings = (
      'select m.*,'
      '       case status  '
      '        when 0 then '#39'INITIAL TESTING'#39
      '        when 1 then '#39'TRANSFER'#39
      '        when 2 then '#39'AVAILABLE'#39
      '        when 3 then '#39'INSTALLED'#39
      '        when 4 then '#39'DAMAGED/SALVAGE'#39
      '        when 5 then '#39'REMOVED METER'#39
      '        when 6 then '#39'CALIBRATION/REPAIR'#39
      '        when 7 then '#39'FOR VERIFICATION'#39
      '        else '#39#39' '
      '       end '
      '       as MeterStatus,'
      
        '       (select metercondition from metertransaction where metert' +
        'ransaction.idmeterinv = m.idmeterinv '
      '        order by datetrans desc limit 1) as MeterCondition,'
      
        '       (select Reading from metertransaction where metertransact' +
        'ion.idmeterinv = m.idmeterinv '
      '        order by datetrans desc limit 1) as Reading'
      'from MeterInv m'
      'where not exists'
      '     ( select * from'
      '        ((select '
      '           1 as transcode,'
      '           '#39#39' as accountnumber,'
      '           n.name,'
      '           n.address,'
      '           '#39'New Connection'#39' as description,'
      '           n.DatePaid, '
      '           n.ORNumber,'
      '           n.serial'
      '               from zanecoisd.newconnection n'
      
        '                             where ifnull(trim(n.ornumber),'#39#39') <' +
        '> '#39#39' and                                   '
      '                                   ifnull(n.name,'#39#39') <> '#39#39' and'
      
        '                                   ifnull(trim(serial),'#39#39') <> '#39#39 +
        ' )  '
      '         union'
      '               '
      '        (select '
      '           2 as transcode,'
      '           r.accountnumber,'
      '           r.name,'
      '           address,'
      '           '#39'Reconnection'#39' as description,'
      '           r.ORDate,'
      '           r.ORNumber,'
      '           r.serial'
      '               from zanecoisd.recon r'
      
        '                           where ifnull(trim(r.ornumber),'#39#39') <> ' +
        #39#39' and                                '
      '                                 ifnull(r.name,'#39#39') <> '#39#39'and'
      '                                 ifnull(trim(serial),'#39#39') <> '#39#39') '
      '         ) trans'
      '         where trans.serial = SerialNumber '
      '       )'
      '    and SerialNumber like :serialN '
      '    and status = 2'
      'order by idmeterinv desc')
    Left = 152
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'serialN'
        Value = nil
      end>
    object MInv2idMeterInv: TLargeintField
      FieldName = 'idMeterInv'
    end
    object MInv2IdAcq: TLargeintField
      FieldName = 'IdAcq'
    end
    object MInv2SerialNumber: TStringField
      FieldName = 'SerialNumber'
    end
    object MInv2Brand: TStringField
      FieldName = 'Brand'
    end
    object MInv2Type: TStringField
      FieldName = 'Type'
      Size = 30
    end
    object MInv2Amphere: TStringField
      FieldName = 'Amphere'
      Size = 15
    end
    object MInv2Accuracy: TFloatField
      FieldName = 'Accuracy'
    end
    object MInv2Status: TStringField
      FieldName = 'Status'
      Size = 10
    end
    object MInv2MeterStatus: TStringField
      FieldName = 'MeterStatus'
      Size = 18
    end
    object MInv2MeterCondition: TStringField
      FieldName = 'MeterCondition'
      Size = 15
    end
    object MInv2Reading: TFloatField
      FieldName = 'Reading'
    end
  end
  object dsMInv2: TMyDataSource
    DataSet = MInv2
    Left = 152
    Top = 240
  end
  object meterListR: TfrxReport
    Version = '5.3.16'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42816.468594236100000000
    ReportOptions.LastChange = 42816.468594236100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 392
    Top = 40
    Datasets = <
      item
        DataSet = MtrListFrx
        DataSetName = 'meterTrans'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 7.000000000000000000
      RightMargin = 7.000000000000000000
      TopMargin = 7.000000000000000000
      BottomMargin = 7.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 124.724490000000000000
        Top = 18.897650000000000000
        Width = 763.087107000000000000
        object Picture1: TfrxPictureView
          Left = 7.558784170000000000
          Top = 3.779390870000000000
          Width = 75.000000000000000000
          Height = 66.000000000000000000
          AutoSize = True
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000004B00
            00004208060000001F412B22000000097048597300002E2300002E230178A53F
            7600000A4F6943435050686F746F73686F70204943432070726F66696C650000
            78DA9D53675453E9163DF7DEF4424B8880944B6F5215082052428B801491262A
            2109104A8821A1D91551C1114545041BC8A088038E8E808C15512C0C8A0AD807
            E421A28E83A3888ACAFBE17BA36BD6BCF7E6CDFEB5D73EE7ACF39DB3CF07C008
            0C9648335135800CA9421E11E083C7C4C6E1E42E40810A2470001008B3642173
            FD230100F87E3C3C2B22C007BE000178D30B0800C04D9BC0301C87FF0FEA4299
            5C01808401C07491384B08801400407A8E42A600404601809D98265300A00400
            60CB6362E300502D0060277FE6D300809DF8997B01005B94211501A091002013
            65884400683B00ACCF568A450058300014664BC43900D82D00304957664800B0
            B700C0CE100BB200080C00305188852900047B0060C8232378008499001446F2
            573CF12BAE10E72A00007899B23CB9243945815B082D710757572E1E28CE4917
            2B14366102619A402EC27999193281340FE0F3CC0000A0911511E083F3FD78CE
            0EAECECE368EB60E5F2DEABF06FF226262E3FEE5CFAB70400000E1747ED1FE2C
            2FB31A803B06806DFEA225EE04685E0BA075F78B66B20F40B500A0E9DA57F370
            F87E3C3C45A190B9D9D9E5E4E4D84AC4425B61CA577DFE67C25FC057FD6CF97E
            3CFCF7F5E0BEE22481325D814704F8E0C2CCF44CA51CCF92098462DCE68F47FC
            B70BFFFC1DD322C44962B9582A14E35112718E449A8CF332A52289429229C525
            D2FF64E2DF2CFB033EDF3500B06A3E017B912DA85D6303F64B27105874C0E2F7
            0000F2BB6FC1D4280803806883E1CF77FFEF3FFD47A02500806649927100005E
            44242E54CAB33FC708000044A0812AB0411BF4C1182CC0061CC105DCC10BFC60
            36844224C4C24210420A64801C726029AC82422886CDB01D2A602FD4401D34C0
            51688693700E2EC255B80E3D700FFA61089EC128BC81090441C808136121DA88
            01628A58238E08179985F821C14804128B2420C9881451224B91354831528A54
            2055481DF23D720239875C46BA913BC8003282FC86BC47319481B2513DD40CB5
            43B9A8371A8446A20BD06474319A8F16A09BD072B41A3D8C36A1E7D0AB680FDA
            8F3E43C730C0E8180733C46C302EC6C342B1382C099363CBB122AC0CABC61AB0
            56AC03BB89F563CFB17704128145C0093604774220611E4148584C584ED848A8
            201C243411DA093709038451C2272293A84BB426BA11F9C4186232318758482C
            23D6128F132F107B8843C437241289433227B9900249B1A454D212D246D26E52
            23E92CA99B34481A2393C9DA646BB20739942C202BC885E49DE4C3E433E41BE4
            21F25B0A9D624071A4F853E22852CA6A4A19E510E534E5066598324155A39A52
            DDA8A15411358F5A42ADA1B652AF5187A81334759A39CD8316494BA5ADA295D3
            1A681768F769AFE874BA11DD951E4E97D057D2CBE947E897E803F4770C0D8615
            83C7886728199B18071867197718AF984CA619D38B19C754303731EB98E7990F
            996F55582AB62A7C1591CA0A954A9526951B2A2F54A9AAA6AADEAA0B55F355CB
            548FA95E537DAE46553353E3A909D496AB55AA9D50EB531B5367A93BA887AA67
            A86F543FA47E59FD890659C34CC34F43A451A0B15FE3BCC6200B6319B3782C21
            6B0DAB86758135C426B1CDD97C762ABB98FD1DBB8B3DAAA9A13943334A3357B3
            52F394663F07E39871F89C744E09E728A797F37E8ADE14EF29E2291BA6344CB9
            31655C6BAA96979658AB48AB51AB47EBBD36AEEDA79DA6BD45BB59FB810E41C7
            4A275C2747678FCE059DE753D953DDA70AA7164D3D3AF5AE2EAA6BA51BA1BB44
            77BF6EA7EE989EBE5E809E4C6FA7DE79BDE7FA1C7D2FFD54FD6DFAA7F5470C58
            06B30C2406DB0CCE183CC535716F3C1D2FC7DBF151435DC34043A561956197E1
            8491B9D13CA3D5468D460F8C69C65CE324E36DC66DC6A326062621264B4DEA4D
            EE9A524DB9A629A63B4C3B4CC7CDCCCDA2CDD699359B3D31D732E79BE79BD79B
            DFB7605A785A2CB6A8B6B86549B2E45AA659EEB6BC6E855A3959A558555A5DB3
            46AD9DAD25D6BBADBBA711A7B94E934EAB9ED667C3B0F1B6C9B6A9B719B0E5D8
            06DBAEB66DB67D6167621767B7C5AEC3EE93BD937DBA7D8DFD3D070D87D90EAB
            1D5A1D7E73B472143A563ADE9ACE9CEE3F7DC5F496E92F6758CF10CFD833E3B6
            13CB29C4699D539BD347671767B97383F3888B894B82CB2E973E2E9B1BC6DDC8
            BDE44A74F5715DE17AD2F59D9BB39BC2EDA8DBAFEE36EE69EE87DC9FCC349F29
            9E593373D0C3C843E051E5D13F0B9F95306BDFAC7E4F434F8167B5E7232F632F
            9157ADD7B0B7A577AAF761EF173EF63E729FE33EE33C37DE32DE595FCC37C0B7
            C8B7CB4FC36F9E5F85DF437F23FF64FF7AFFD100A78025016703898141815B02
            FBF87A7C21BF8E3F3ADB65F6B2D9ED418CA0B94115418F82AD82E5C1AD2168C8
            EC90AD21F7E798CE91CE690E85507EE8D6D00761E6618BC37E0C278587855786
            3F8E7088581AD131973577D1DC4373DF44FA449644DE9B67314F39AF2D4A352A
            3EAA2E6A3CDA37BA34BA3FC62E6659CCD5589D58496C4B1C392E2AAE366E6CBE
            DFFCEDF387E29DE20BE37B17982FC85D7079A1CEC2F485A716A92E122C3A9640
            4C884E3894F041102AA8168C25F21377258E0A79C21DC267222FD136D188D843
            5C2A1E4EF2482A4D7A92EC91BC357924C533A52CE5B98427A990BC4C0D4CDD9B
            3A9E169A76206D323D3ABD31839291907142AA214D93B667EA67E66676CBAC65
            85B2FEC56E8BB72F1E9507C96BB390AC05592D0AB642A6E8545A28D72A07B267
            655766BFCD89CA3996AB9E2BCDEDCCB3CADB90379CEF9FFFED12C212E192B6A5
            864B572D1D58E6BDAC6A39B23C7179DB0AE315052B865606AC3CB88AB62A6DD5
            4FABED5797AE7EBD267A4D6B815EC1CA82C1B5016BEB0B550AE5857DEBDCD7ED
            5D4F582F59DFB561FA869D1B3E15898AAE14DB1797157FD828DC78E51B876FCA
            BF99DC94B4A9ABC4B964CF66D266E9E6DE2D9E5B0E96AA97E6970E6E0DD9DAB4
            0DDF56B4EDF5F645DB2F97CD28DBBB83B643B9A3BF3CB8BC65A7C9CECD3B3F54
            A454F454FA5436EED2DDB561D7F86ED1EE1B7BBCF634ECD5DB5BBCF7FD3EC9BE
            DB5501554DD566D565FB49FBB3F73FAE89AAE9F896FB6D5DAD4E6D71EDC703D2
            03FD07230EB6D7B9D4D51DD23D54528FD62BEB470EC71FBEFE9DEF772D0D360D
            558D9CC6E223704479E4E9F709DFF71E0D3ADA768C7BACE107D31F761D671D2F
            6A429AF29A469B539AFB5B625BBA4FCC3ED1D6EADE7AFC47DB1F0F9C343C5979
            4AF354C969DAE982D39367F2CF8C9D959D7D7E2EF9DC60DBA2B67BE763CEDF6A
            0F6FEFBA1074E1D245FF8BE73BBC3BCE5CF2B874F2B2DBE51357B8579AAF3A5F
            6DEA74EA3CFE93D34FC7BB9CBB9AAEB95C6BB9EE7ABDB57B66F7E91B9E37CEDD
            F4BD79F116FFD6D59E393DDDBDF37A6FF7C5F7F5DF16DD7E7227FDCECBBBD977
            27EEADBC4FBC5FF440ED41D943DD87D53F5BFEDCD8EFDC7F6AC077A0F3D1DC47
            F7068583CFFE91F58F0F43058F998FCB860D86EB9E383E3939E23F72FDE9FCA7
            43CF64CF269E17FEA2FECBAE17162F7EF8D5EBD7CED198D1A197F29793BF6D7C
            A5FDEAC0EB19AFDBC6C2C61EBEC97833315EF456FBEDC177DC771DEFA3DF0F4F
            E47C207F28FF68F9B1F553D0A7FB93199393FF040398F3FC63332DDB00002E79
            4944415478DAC57C077854D5F6FDBA656632935E0990D043EF25F40ED29B52E5
            511ED294DEA549519A20D28B74A4283EE90A0222D2090935945042424212D2FB
            B45BFEFB9CC1C213D4F79EFEFEF37DC9243377EE3D679DBDD75EEB9C7347F033
            F7C57FF3D0E94710807C9B0468024C0615B2A4C3EE14A141E0C7687410FB4B12
            5D1F30CA2AAC0E096637152A1D67554488F4194F930A4511A06AF4194DFCF91A
            92A4D18F0E451551E094601434988D2A0A1509221DCBCEC33EC72EA2511BD8F5
            64917EE902747AB20932767F7111BDDBC643F37403D2E945773AD84ACF0EBA80
            1FFDC4D289CA4B102254E855D9B5E97D777ACAA263FCE9FF2CCD0C3BAA205BEB
            2EFCFF00CB6256E1B48962BE2607D31181F466201D575482E64F6733D3A1EC13
            9A0A14D0B932748829745C9A0835CDCBE44CFEDBC0AA429735D0FB66D631AD1C
            9EE98D84A3CE1E88D13BE87DE42FFECFC0D25481DE57DD0B14B92EFDDBC0D7C3
            195EA25441E992A50B8B0505DAFC7C7CED062F8BCE23491074DE593B01919B2B
            233BCBCDF12CD92DF349AC252939D11C9BEB305C91A05F76372A519A06AB20FE
            0F603D21B02A12585709AC7A52A0F0546B898B6A477CA336164E2BE51024E8DA
            3AB799081196FCED60299A48C924547593D59EA54B1674AD552BAB74A52AB99E
            01010E381C22B2334DC8CA3622375F86355F82DD26F2F3B253B85934582C0A7C
            3D1DF0F577C0C7CFC1414F4A76C38DEB3EB9B76EF93C4A49713BA842D86F12B5
            BB04B22EFD19B00A755707583CC7A95EF013EB09DFAB6FE2B8D25EF85E2981C7
            BACCFBD8477EA6AF771B035FE100EED355FE2EB074FA65D70D2DFC3C6DEFB46C
            F9FCCD7AF532CD5E9E2A929F9BF034DE033602C5CFDF89D012052855AA10A125
            6DF0F571506A69702A0432FD381C0664A41B101B6BC19358773C4BB0A0D02AC1
            DFDF8E3265F3E14FE025249A71FA87A082884BFE5F39206EF53238CFE9AF032B
            8DF110355A22568AD36B0B896A1B1C57BBE2885A53B8A5FED23923F56FB62942
            7FDFF82E645CE3E026687F3D58563B45872E865B4CEAE4DE7D9E766ED228C39C
            9C62C6FD7BDE301835D4AA95839AB5D351BD7A0EBC7D9D7416958751FC134A3B
            9B003BA547487111BE94228F1F69741D1DA1A13A4C664663121213CC888CF0C5
            A50B0178F0D01D3E0470DDBA9910E9EDAFF787E49F3E1374D0046D39A5E3759B
            F802AC760496078165D3EB08D7B40E38A5B6C269255C88D0DC794AFEFA114CE9
            BCDCF4357A1AC6C18067FC3506D6D3BF102C3702CBE1143D9DA2F87EBBB6C9EF
            F5E995E0F324CE0351917EA85623177DFA24A154992C82C54EA00A30BB53A413
            D9A424E91839D28E2CAA3EDDBBCAF8F63B15E3C718D0A8A98C0E1D0A898B80FE
            FD6404171510754D41FFFE22AA55A70A40E864669871F2BB40ECDF1F42E929E2
            8D3792086C119F7D5636FDF65D9F5582202C39FCCD19CFCED59F8ED03719DA0B
            3F28D5704BF341B6FEEA4E55170BB54D6E6B102ECE4626B19AAF8B4E38A0497F
            115882C620101A8416B72D1D37E641131355A96FBF2D8A4A957331756A2C3C3C
            7270ED9A8EDD7B74241138E3C799D0AA0D81ACEAC8B3022D9B5B09371DF33F30
            61FE42073A7590D1B4B9440017A25D5B039A3591B06295036FF5949192AC5384
            024E878E112365D4AACD5A22E2C8A1A2D8BCB91CBC89DF3A767E86B33F0462D3
            B6B0C3E3C7DF3F3639EC56E72247AC2D7112164EECAF7AB49714ED4BF3707809
            DB90CF2AC56F0FF99FC1CA2B94E08461508B66298B470C7B1CFCE38FC1C8A30A
            3676E20384D74FC39EDD3A366FD2D0943ABC76BD130D1A8898FEBE110D1BC810
            19B118054C186BC7E5AB0A7ABF25239D48389E42BE660D0957A35478790AA85A
            45C2FE030ADA10C0CD9A4A387444452455AFE6CD44DC8F01DE7D4F46ABD61AF1
            9C8C4D1B4B63F7AE92E8D4E91982A8887C30BFFAA380928EF77BB58F7F32EB8D
            684A41AD93BE4F6D28446B2F77A8B6E8D407194EE88DE423282F1C03512BFE2D
            00FF6BB058B5228D23E43AE4E9EF0C7E32BF45F37469E7CE9268DF2119C3DF7D
            845B371C38785040701111ABD739B0F463138E1D57117145458F6E32A64C35C0
            D35BE3B03B6DC0F33446CA22DC2D24566D3AA52A5543525C0EBB8A80400DD7A2
            747CF79D8E2E5D8C9831D381F7DE3560C3462712887899209B36D5884E5D4578
            79391173DF07B3675487D9A2A24BE744CC9953BDE0EE8322A34F9DFAE650EB90
            A4A5FA60FD1DE1B2FAEA7E95A702B5C36D33EA8BC3FE12B058263B55512A7088
            0B264F8C9956B4B815478F8460F69CBB68D622054B97E8387244C36D1ABD4D9B
            DC5050A0E30A356EE22423D2D215346C4851E03022FA8E279E3CF2406E8E0979
            F90614E452943A5D112B5045339A3578F928F0F176A044990254AB920B772F2B
            8141345220E3A3050E3C78A0A178A888C60D459C3EA3E2E07E337D860681A276
            D68CAAB874D11F63C73EC4EA6DE59D95E332325725441441EE6B3A565D54A902
            6ED27BC80BE18684BF042C956C4A9E539A377DEABD0F3C7D9C38F34330D6AC8B
            82A747364E9E325014283870504168888892A504AC5C69228E511114AC53F9F7
            C2A183C178FCD0426D11C074111394222164B70BB01141B3469A09286F0F053A
            BD6FB592762702B7936C08A68169D7211575EBA4C3A1508A6FD6E043A9BA65BB
            82522505B24640899222459A01DE3E766C585F01BB7694C2C4C90FB0666D3934
            3A938C8F70E3B7B4F2B6E199FEB1692689C31DDCEEF809F80D583E6EFF195854
            F150A81AC64F1A77FFD3C0203BCE9F0F24E28EA42A548009E3090CAA1AC14102
            0C06A00955B4DE747A1F1F1D77A3FDF0C517C5909CE84EFACACE093D27DB4051
            24C0CBC3898020D259A4BB9885717757914F02F5F4C920E22F0BAA55CB23B0E1
            7ADFAC209E741A53F95DBB27F348CE487560CF5E0177A25D46C96221C04205CC
            FA802A01959EDD9F97C6EA55E53179FA7D7CB2B212FA9C7D84F1B8E7EA10E92E
            7D9EF1943EC2340EB27E17F7282AC984F14AF8BF80C5D22FCB66E8DAB7E7D33D
            4D9AA4BB1F3E1C42237A0546A395A24BC4E2C50E0C1A2CE3F02105DBB7BB91D0
            74E2798A059B36944162A285407250FA895C9086942C40EDDA5944E4B9C44984
            84A8B098255064E2357F44DFF485B7371584C619243E9DA4A9CC2443FC492A14
            4550112B8A17B77141CA14FD90614F50BF413A56AD002E5ED4D0BA8D88CA9528
            351B13F189ACD536ECDC56962445198C9EF4100BA655C1C7B111244D9272F439
            6EEBF4CAF22298843C2646719FC02AF23F82C52E996B934BD7AE95759238A0EC
            D6AD65B0694B14CA86E561E37A9DB8412542161017A761F22403DAB4D371F244
            117CB1A7248A16B1A180AA264BBB468DD3D1B4591A8A162B78715689F34BEA73
            332E9EF3C3D7FF0AC5E16F8AC2CB5DC1244A9DF153EED0FB32D91B2F5C23B00A
            88AB82836D20AB83423AA77F801D376EF850146760C48887387258A1EB19D0B8
            850827C992D3675584951348F13BB1646115CA840074E9958CB5EF9755C7CE88
            19F2CEB8B89D48A536F832134DCD7948601527942CC26F31F8B36059EDB2E0E1
            EDFC62D9929BBDF75187C68C7D840E54693E5922F2127F86C8B52B89CAE52B0C
            A4AB34AC5B5D963AE747D15588470F3CD0E68D144A9B2452E64CE8B8A6213432
            CA8F1FBB73127EFAD41D4D9AA461E7D6D2D8B6A71407B2079D7FCA947BB87031
            106E64835AB54E45854AB99064150579327E38530407FE158272E5F2A92A9AF9
            6756AE8D260AB093DD3260C60C3BBEFA4A41C50A023E5E6A44E52A1A06F5AF8F
            0002D8E8A9E94B96555B59A978E604417FD124C2C7562061FDE66B28533E9FE8
            4BFCCFC162D529C76A18306562CC4E1BD919D6E139F3A3919F6BC090776C384E
            92E0FD690684878B68DD16F8785125227233459A8ADC3C03C64DB84702358F4A
            280D1D297D10595F8EF0C1F5485F1452A454AB918D962D3260301762C6A4BA58
            B4BC02650559237AFDDD318FD0B4453A4A5335049BEB62DE93069FCD83C1A8E0
            3979CD15CB2A42A12A6A26E3FD88AAEBD2E537508CD2B4595327060C30202D55
            238081F7A7D3DFCF25BCD9BD09060F7A82BD5F9450BFFFB1482F0F5939C03BAA
            BB00535597B7FCF7D812BC4DFDFE10A842BB58AC5AB5DC134387C556F9EE7851
            ECD977096693CE3B6DA7866FDDE2841F558F3EFD042C5D5411C9496EBCC27992
            E6993EFB0E9F39804E9E91AADAC54BFE88BAEA477A4A41ED7A99A8179E451D57
            F8D02611C063DFAB8DC3478B91D01531A0EF53ECDC7B1E2C3F34AA84BF7990BC
            104DF45949C5E68DE5F020C60BDE5E0E92243E58BD3E0AB18FAD58B44843E74E
            12EEDCD5D1A8A1849EBD351C25AEFDF493300C22C0C68CAE1D296A68470527F3
            0F83E68FC062081738E5A99F2CBDB1E4FCD9400C1D194BA53B89DE31FD3C12EC
            E174D8B17D4B39E20F5F180D1A4A962EC0F849773827E5641971F97200AE47F9
            F0A86CDE320D152BE5D07BA4B728DAEEDDF1E25CC2D2F2C4F160E2BA20B26332
            06F68BC7F69D1110549183FF72C3085EBA0E8B543B59AEA771EE9835BD1A3F7F
            70512B554C776CDD1989D45460D102053FFEA822B4848061436574E9C6D2B121
            4A539161D33D9BB69719E56771ACD3F5DF8582C032BE1E2CD6BC1C875CBC4D8B
            D433AD5AA6968BA332BE617324962FA30CA08CEADACD8033A7150C1CA2E3FC8F
            41D8B6A514FCA9E21929EADEEEFF8804A684BD7BCA52F937A377AF04B46D9B0A
            0F9F7C1E4529899E78447C1573CF0B4ED26DD56B66A25193544C9F58074B3E2D
            CF8BC180BE04D6E711107F05169FEA7A91828544039723FC7023CA8F384D41CB
            36C9B8703E9822CA8CBC3C238248DACC9E77075327ABE42705A43CD7E14E4568
            D51A11776F7963C4F03A183EEC31264FA979B3204F6A6B326869BF87D7EF7216
            CB5D4A87117367DFD910490D9A3D2786B44E06B690D7FB9A4427D33E23868B24
            173C30636A55AA7056645114F5EDF704C38635447A0629F65413FCBCECE8D821
            051E94967E014E02D44655AF04C90A233E5A780BAD5A65F0A91689526AF2985A
            F8744D793E273664401CB6ECBC0897AB7D31374DF2A29080F8FEFB40D26EDE74
            4D1BEA8667A072D59F2255C4B0210D50BA54016EDFF6C2A8314F50B5C6338C1E
            05C490DAFF27499BBE7D0C24901D183FBA36C91E0D5999466CDE516680B7D1B9
            EB77C1F232BD1E2CBB433454AB9E7BBE4F9F84F0A74F3DB062CD357C385F2561
            0854A922E2FC590D73E78B045E0524251A11111180C6141D4C892F5956999A2E
            5305B6F12E5A7537FC225C34B0294233710D13B606598387BB86204A9F67A4C7
            9EC69B61A3686BD2280393A6DC472001CCA224995266DB8E92080EB4A1314985
            06F4BE974F21073239C983C4A9099194EA05F9C48D5441EBD4CEA636F961C7EE
            28AA6C0A167EA4E0ABAF15D4A82E61D56A0999E9BE1837BA3ADEEC9188F76756
            3BAD5A8536B2FCFA64143CE4D7A7A155919A8C1C167B5AD70543E76EAC6CC791
            90233DE5A6A36E2D09838748285FDE1B736797E769A050B51A3DF60102FD141C
            FB2E0849CFCC38F37D106EDEF446F94AF9BCF265A61B914BCABDA0908A8393CD
            5848BF101F3D9BE080071960D664E616D882049B2BF3F0769DFF79A6190D6BA7
            A33E01E5EEA12284EC4F4E8E8CF59BCAA11EA5F23B9456ADDB26E3ECD960ECFF
            2A9434A986BAF572892A1E511554C9E8CBC48F0A0DAA841123A90FFDEBD2C0E7
            E2F8B160DB85F3FE0D2D6EEA0DE17560F9326FF82BA2FE358152DB16CF9A797F
            DAF5EBBE58B9EE0659112BE6CD5571E21491658880FD0724AC585E05A9292664
            13009FAEBC469DB2D1670D4888B7E0C73301C82F30D0086711583944C432F249
            1FD9ED320FFD67A4C053A872A65044A467D20F01197DC39B57531A610E948D03
            2ABE48438A40594181C204AEE145A4B284D538E4BE64B8FD832982E6DD468F3E
            8F306D523DF2ABA4FE1F7861F3D66B3870C88EE59F38F9DAC0DA356E086FA071
            5DF7C3E9400451B47EBAB2FC4C2F3765E1EB424BF0248267F3E6FF8E1535C152
            A36AF6A9DE7D121BA6A6B961E98AEB58B35AC7679B1474A6D1993C552483EB8E
            8FE6562210159E129DBAC511D906E3F2253FAE839A933EAA5A351B463797B672
            093F0579B96EC47702F1174B21E9E72B02C45963EB63F9EA3048A4145BB748C3
            D8F10F90C6A2315726956FC10FA702114B95AF28A9F83C22F8EC7C03B5432273
            2FC0CA741C9D6FF78E73787BE0439C3D1D8203FB43F8719DBA24A347AFA75484
            04AA8C0AA5B44EF648A6E8F4C6F0A135D0A9733266CEA8765AD4F476BC21AFE6
            AC7E705047845FC3C9568B14B9E6A0FE4F8E91ED0866A2B04DBB27E8DB5743C7
            8E328E1C5170E284843D9F97453491681C359E4DB6B1551A37B386866469AA55
            CFE127D2A9ACFFC40222817A8C34D494693590972F63D2C418022386BFC7EC0E
            D35F9F7E1C8673170260D3240C194804BFE32C27F85B64696EDFF4878D80A942
            62B53289DCBC1C2A2069065E48D8B5B352DDF09C06B667CF0454AA92C3AF31FF
            83AA7C5E2B838E59BB318A6484467244610B2AA4B1247222060CE8178E3A75B2
            B0737BC9F8E87BDEED246831BF9386C24B69C8258355EE336BC6DD3D31F7BDC4
            C51FDF415A66367AF5521042E9E7E9A1E3CB2F4D58B3A20A3554C6DDBB5E184B
            F6A73C5991B261F9FC0C5C44FE2ABD4522710755D7168D5BE0D2B5001A7F8DB8
            CD8EA3C7CE5195F2405CAC07EAD7CFC0DE5D25B1737749286435DEEEFD14EF8E
            7A80CB44D6667203E1F53351BD560E49131A7895CECF24047EFDF3A2F594BA3A
            0B0037073E5B178684380B629F7860C1C7B7C9EAE4E3DE3D018307DBD0F32D03
            E67D087CF841353E03F234D1ECF8FA40E89B9E26E737AFA2790E1693085CE2BF
            7891FDED6E513F9C3EF3FEAC5B549EB76E8F844E7622360EB87947A5FCD688B3
            3CB1794359B0959B6E3D12D0A3E753CA240374C72F91F4EB87C8B01355BCD5A3
            210E1C0DE59DF3B1383066DC43B46C9546249C054FEF02CC9C52170B9755801B
            C9EAAA141DA3C63E44338AECD012857CEE1D0E91CF34BCB662BD788BB541343B
            71851CC3DE5DA5B81D6ADC2C03FDFE114785C740E9E8E0DC357D2670F450097C
            B13B94CC7601162DAB38D5DFDDB1F4B560B147BE55E6CB4EE0092B8915CBE4EE
            183A24FE1F4F9FB911B95F238769E0A2DDD51A05177E0CC07E32B1A9A9462C5A
            7C0721D419CD2EFEB650BCF888E0A6705EDAB1A534116905F27A8518FACE63E2
            92A72FC24F20D23761D4F0BA54DE43E80A2257F03BF65CE4B30EBAFDD583F07B
            0F9134149B999832B13AB75E5EDE2A667C701BDDBAAAB874C9E5178F1F339075
            F3C5C47135D0BC792A66CDAEB281AAEFBBC2ABFAC1C062AFDB49D71452F80ABC
            4B9247A3FAA9075AB5486B63A6F23C63563435D8C4F33C3E5E655187AB974270
            F44851B21C3A967E721366D9B502FD1240CC8E481AAC44C2172FFAE1F8B7C1B0
            51E35B90DD090AB2F1D29F972FF16323A37C114151F030C6030F292DF3140307
            6BDBCE9715FCCF40887F12394AD9D9D36B40A182C256C03F5C7C03D3A63AB857
            CDCD631C2CA04B5777F4ED550F2D5B3EA78255F91001DC471275FB6BC152A931
            7954D2F9DF90033ABE9178AC7CB9FCBA9589A8878D788C2FF78AD8B9CB89E868
            156B564A506CE5F1CD37FE5CB5CFF9F02E7959D135F2020B7F95A71913975111
            FEB84BDEAF7CC51CC43FF1C4DCB9954993918ED25C8DCF77C8FC43260A5C3F5F
            2B641A11262FB26CC657DA1D0E9489CE2FBE4AEFBCEAE1C49A4F2BE1C9130B6C
            0E0389E85BB878CE8E9C3CB68F02A4138137DAC9E8FD66385A344BC3922515CE
            253E377725EB9EFD2AB0049EE26CB9DBEE2AE3365D2EDAEFADF8EF7DBC944AAD
            DB3DC75B7D12F0CE3F55E22E27BA7492B16BB7017B778721E2B20F2A55C8C5A4
            F7632038D8728CCA561A78749C3D13884CD2528C079A364B277B918D7D7BC2F0
            8FFEF5B9C8649B459C14789D3AA6A04D9B54142B5988B26572A96315B1915255
            E1B30EBF058B99E72852E9274E04F3ED47FA1FE065A463CE9F0D40C91256E411
            D5CC9C7D8F2A783EC64F24BD96AF63D46803A64E9331A0773DD4AB938DCFB696
            BA76E7814F7B195ADA2B230B7011A2D3E99AEC2A50E5E2837AC79F1165BDDC9B
            3D9FA1730F920599329F853C7952A1BC96F1FD894A88B8E24DBE2C13A3C7DD87
            83382D86403A4302CF41A0D7A99B45952B1B7EFE56D6458A1603962EAC808F97
            548489B8845D4FA1FC3B72F41C5AB54904DF6040313D655C5D7CB22AEC37469A
            07118B269922654545AEAB1A3549E70BBCA26B8D830CB9C02396EDC491A51769
            2AAB9C2E52532C7C5663CA8C18921FB978AB3779541F90DA9731771E29F9B7C3
            114695FCD0E16277AEDEF06F2D427DFEDA3464D6E2A77298FF2BB0DEEAF50C9D
            BA2711A10B3878C889B8781D0B17CBF8EEDB8AB816E5CDA75A5AB64AC1857381
            BC8AB62021497E1246B36B46F4D1034F5CBDE2CFD579CC3D0FECDC598A6B5376
            2DA728E0D0C10BA4E192782565F3F093C7D6E6A2F425B04873A9846E762EF11B
            1DB37D5318F786F51BA742A53476385DDB9A8CCC7E32C148016EB3B9AABBD9DD
            817F7D590AA7281219D693A6C7503BB271E828E35F0D03FA1BD07FA080410CAC
            7205387CA4683481D5E69560F959FA725BE170FE32854A6918DCB7C7D353DE5E
            4A95F69426DD49F9F6EFA7F1C6DC21CE5ABDD680E89B04568427AF86ED3B2673
            AF56B57A2E5C4A5CC48D6B3EB84A2696F9C08A9573D1B65D320E1F08E1696892
            5DABC12A45D6AE5D97F04687146A83812C8E13D327D5C29A8D65B989F9192CA2
            B51D9B4AE11EE9B92245ED34307E984A9D0E6F988EF1A3EBE0FA0D7F8A2605CB
            3FBE899A0DD2B0657D18F16B597E8D31A36378DA5C381F40454C26A97097C46D
            1EAEDD00BA7563B3B42C48540CE8138E5A9409DBB6958A8C7EE8431E454B7F25
            5805A4B29DDA2F968708DEBF43DB67C7CA95C9AF57837CDD3BC39EE0DD912A1E
            3C644BE43AD6AE33E0CE8D723871DC9F2F6B2D5D799D878AADD0801BE423C990
            F26A155E9F52B166362FDB0CC49D5BCB61F83BB5791A4A2FD2A4588815460B5B
            8B744D15A7271B91CF36B0D98D540DE3483A5CE1C7CD9852031D3A3F43997259
            D8B3DD15590D290D5B346985B3978A7222FFE1F88F68D12E01B3A6D6C182A5D5
            790158BA20922F6ADC21BD5840056CE9B2DB546DEDA4F21D7CDD71ED6A13BA76
            2782EF5E0F4D9B6460E9D2F23F3E4B35772382CFF90D581EC6B751E0905EAA2B
            D415F746E1A9FB9B374B7FC3D39B467BD65DDC8D96B1689183F25AC088110222
            2F87E2F0A1A230B869983D271A776EFB2032D217167715AD5AA652F5CB856CD4
            B99AD69CC42B2440776C29832143C9DC1A15BE6E685798F37F8C37DE48464E8E
            093211FFEE1DA570FC781116DD045602B66CBFC4F98AA9EC7F0C8A4358C5747C
            B6A6329FBF6A4C85A34BFB66F8E66411781A9C3876FC221AB77A8605736A62D6
            FCCA3CDD972DB9092B33F03906D25C2296AFBD49BCE9C4962D2A424305CC9B2B
            A3766D37F4A3C86AD62C158B3EACF475A155EA47DED4F91BB0CC627F8A2AE125
            B0C8E50B244AB70E1A90303825CD88156BAFE3F07E017BBE70E2CC8F1A36AE17
            51B27471ECDC528CE4810555ABE520AC7C1EA54506C22AE4F1E90A2E227F3AA1
            EEF2852C8D3A756A8AB8A7EEF0252B524883C45277EFBEF32817E6F292EF4FA8
            8B252BCAC3446ABF762D2B7A747B4A83A7711D56BA74018A91813E7FCE1FD366
            DE473DB2472D9BB5C2990B2CB29417919588D9D36AE3A38FABF1619F3EF12E14
            BEE20DD27534B0F36F52FB05F296220D1008201D2949DE9840A294AD2ECD9D57
            790D55EB31AF14A5EE52BFDFA81576728B599B3569EA830FEFDFF724611889D4
            7496FF76B20A1A366F369239F5C08655E590906841DB0E49F8E73B8FF8D48C66
            935E3DE5C398CCAC5005F5C3C4F13571E172003C8867F2C9E3D5A1543D74F81C
            8A87E661FCBBF5B19A6C1423EA5E6FA662E1A228D809546F1F07AF808AA262D7
            F672684D72A351D374BC3FA5262222FD6022F1B97841346AD44DC7CE6D65B07D
            4719583C9CA814960B160A4CC937A034FBC7C0C718F00F1D8F63754A77B6DE29
            E1873325B0637349EE2A96AD2C3FCECFE258F52AC9FBB37478E9457023DD63EA
            E4075F3D7EEC21B13C375BF250BBAE03152A08080FA7123CD948E2B40A92938C
            7CBFE7020A77CD6AC4EF3E9860A588CACB35E2434A937544C48E4236752DA023
            15807FED3F878FE6D4E0DE904DD1746C9789751B2210125A40922408A9CF4D08
            296945D4655FD4AA9B89262D32A88C0B3FB9256E9E75BE4CA6B9A683643BD6AF
            AA8CB827EE7C1BC08225B7A1A839487B2EF329663609B86DBB8845F3ABF259D8
            A42437EB81C321DDC9489FC0ABBCA1597AFB959DB22A7295017DE28F5BCC6A48
            DB0ECFD1AD7B3C2E47C834BA3A56AE5028EFD9A854C0F56B5E78F6CC8CE52B6E
            A03891B56697F0470FBE2A232BF8F64871BC3FBD3A6EDFF1E6171D3F2A863A2C
            60FDC63270A7487138DDF1669F58AC591D4929D21AB7EF055279CF44AFAE89E8
            D13B1175A9803063FDB39AA7CFB235456EB5A888E41588545D6BC0C7D7C9D717
            376D8FC4FA752A56AD52C86E0998384146B71E22970D958863BFDC131A7BEF81
            775B92C0B1AF1C6B37A1FF2B3B44D73456AD9C7BB25B8FA4666CC97CC9F21BB8
            794342BF7E36BEE1ECC279030C066F2CFAA8221798356B65E2BDB10F28BA4C7F
            08966B198B7E191C7896E08E79F3AA60CBD6B2DC5B1627116BE54BFD545DED1E
            E8DE33161B375E45AB162D10793300552B67A11BA57D7712CB0C2C1BF94EB661
            9705175B7C60FBBAF8F929E54F7D578434560817DB6DDAA5A257DF3824C4CBB8
            12A1E2FB532AA5B008370F0F0C1B5C07AD5B3FC7871F553E266A7A673EF5FA67
            D3F0A70E114FCF9938F1E1DCFBF7BDB061F375DCBA5148F640A5520CB2062296
            2C13C97856E5F3EA6CAA66E59A2804053AA0397E3FBA58477E997F72F9C8A387
            4A62FAB46A7814E3CEB71B31496975984969C761DDBA4802AB2581E54F6065BB
            C0EAC5222B0D1FBC5F135FEE2BC177D5CC9B1F8D3EFD9F527191C9272B18F35E
            1D6ED8EFDEF5C6CEDDD7B0EBF3424C9FE144B1E2029A3793B072B5887DBB4BE3
            D0A1600405D8B06643B989EE46F5D3D7B2C8EB162CF8DE1355AA336840FC798A
            1CB7EE6F25A173B767C84C93A9F10EB23D2A3E5C205175F2C392852EC5CDAAE2
            F8C977A15374BD92205F589663240D1EC478F21DCE7C9B016592A79783EF8DD8
            B3A71479368147494E813BBAF788A7327F854C6E2B5C8F0EA074C9C29B1D9FF1
            34AC533F15C30636C4E6CFCB71C0D753BA8E1CFD88E7C59143A1F87A5F717878
            B0BD0EF9183DF101C91B11BD7ADB30E49F06F4E92B136DA8A4FBEA21A4981567
            CE04E65DBEE857CF6878F52C296FBFF76B96C258271C0E51A85C25EFFB2E5D52
            5A66911267F35A77EF481838D08A76E4D49FC46A58B356C48EAD55F852D8BDFB
            DE64856EF2D94CAD50FE4D45644235CF2662F68CAA68D2340DE5C30AA8BAB956
            70D8D48D6F8003CB9756C1EE2F8A12B01AEAD72FA068B98EE6243E59C5CBCA32
            20B8A80D674F07A04E3823F8E7183D2C1CEB3697E17CBE617D14868E7CC0E7EA
            470C0D47DDBA1988BCEA8FCF775FC5B7C7AD484A1650AE8C8803FB156CF8CC40
            EDF7C4BBC36BA16387647CB4B0D221D52674670B25AF05EBF7165999D377E8E2
            3FA64C8AF99C6DF159BC249ACA7116C64F50497C02894F75FCEB6B23A9713326
            8CA9C643FED1630F6CDF75195EEE9A8BEC8597C1CACE97F0D9FA32E8D4350927
            4E1643669611A54B14E09FC31E1340CC483720235D8A0FD6C8A1CFB07ED35912
            7EC483063B5C564A23515A05152AE5A179EB2432C08DB1636F181FDE8D6BAE60
            F8A8BB1835A221FC7C1DB84DAA7DD4983832F5F1E8DD5BC3CD9B1A424244ACF8
            D488E62D554C9F5C1339E4160AF2656DE7DE526F799B9C077F8F3E7E77AF03DF
            936597039A37493B59BF7E66CD820209ABD65FC3F9B322A58B021F1F01B1A457
            3E5A08C43D0AC1E73B42F9AE3D762FCD8AB5913048926BF6F4DFC0DABEA514DF
            F6DDA75F23E4E45B50B35A1ACE9EFB1ECC2D4C18551FABD695E48BB06FB4C9C1
            B24F231056B61097489FA5671A101868C5D50B81A8D79022ABF97302A83C4EFF
            5884A7F2A4F1F788BCFDF93A254B631F2F32CA4322F1AFAFD84E4401B76E6988
            8BD371F0B04C9ED50B03FBD743DF3E0998FF61E50BD67CA903A5609EFEDF82C5
            D3916F0C9146CC9D7D77C395CBFE983CED1E9AB74AC3C96322468EB211A18BD4
            01500324AC5D558978C113362BBD16ECC0E2A537209174D66C321FF99FC0DAB6
            B934AA55CFC69077EA2221D982A6A4FCBFFDEE2C3C3C5D60AD20B098C2B72916
            F424825F4D5CD4AE5D0B5CBF45D5B05236DAB766D281AA6178161513F2B40656
            309C24312AE1F2F9207203B99C12F67C198163DFB85CC7871F99F0C95207EAD6
            13D1A19386E143C2F922085BBFFCFC8B1203FC2CCE5D7FB831C4C7ED8FB71C59
            EDA26F858A79C7FAF449A87FED9A1F767D7919D1B7554C18EFA4B4D3F8DEF4BE
            FD6474EE2260C1BC6AC84897909D6D84879782454B6E90FA56B8601545CD05D6
            96D2A84ADE6EE0E070A4A459D0B05E3ABE3B75861B6E06D64A02CBC74C76C866
            C19BBDE2B87468D1AC25AEDDF647E50AD9E8DE8908BE1781D520CBC5AEBA8AC5
            8BAAE0F64D5F542C9F8388AB01D8B82592AA5E21155BD2860EF0F9F68202B23C
            E404D856CBF973AAF0CD2AB366573D23905CA0C82CC01F3C04335EA1B35E2862
            4E11549219E9E5390D9D460E7974D0669765365F3571EA5D6CDA285059D6C873
            817417F9AE0FD8E67D091F1081A7A71BB89ACEC872C3FB33A3F9FE5168EC7638
            195B379546CDDAD99830A116095A0B11793ABEFCFA22552E026B3481B5B61481
            65A741724987F5EB23D1B2794B44DDF2E791D595A443CFBE09A8552F0D89891E
            F890064871E87C293F8A0673F5BAEBE42CB2B177AF40836582873B5B9AA3C8B6
            D0606549E8DEA50927F563C783AD17CFFB777437AB67FE08280ECB83FB455E7E
            85510CC398FA26866A7818432439AC06DF7497A7B92D9930F6DED41FBE0DC2EC
            B9D13C1DF77F2562F0102BCA9615E1E92960F66C8903B67C5945DCBAEEC577E0
            B13D9F1D3A2561E0A078BED96CF9928AE8457AC88D84A99D042FDB0219480659
            34691459F5781AFA5164E559DD49619374D81C81562D5BE11AA561ED5AE9E8D1
            2991FC6832DFCAB4637B19D4A891CDD3293BC7804D5B6FE1C9933CECFB52C485
            8B0AE7AA9D3BDD882E98527552F5AB47A257A4FFED58B6A2C2C744EAD304F1CF
            40C5E246B7FCF6555678D8D45771B66049CFF174A17210772D2E36EE9BAF8B2F
            2FDFB500E74F0560E79E08EA7C010EEE67D3C30A91AB86EAD544BCDD4F42CF3E
            203B53027BF7842234A4001999267E13128BA267F1EE984502D2C3932DDF1B5D
            0BA6EC8E54026BFC7BF5A8889484515251A77621E6CCBD89B66F3CC7A99301C8
            CD610B2A224E9E288A878F2D2845C6B7446821592E5FE2AF6CCCFCE01E8E7F63
            C7FDFB125F2F68D9C235F5C4E6D9C32A3889532B10D987E0ADB712316B56B573
            AA5DE8663268597F76854D50158FDF4656DE0BB0CA30C2A2E76C3D40B8A52C11
            E6D8069EBC524CDED2A9028AD5B0E261940776ECBE023F7F858CB58AE3C7157C
            B2DC84E1C36D9839C388366DD85CBB37A56B39A4241BF9D66EC6658F1F79A04E
            9D4C346D964ACF393C7D5C24AD60EAF8FA58BA328CF3C08821B1D8B0E502195F
            2FC4C45810495A2BE69E0F57EBEC9EC314720D569B01EF0C7D82D2A513101525
            E1C00115A77F5051B192040F0B55BE0316B25676BEA366D1E2CA1836E431962E
            AF90F42CDED2C962526FFC276B91AF078BAD6D941598ABAF252CB3AF16163A1A
            A3C075E68D08C385A1C5E065762235910CEAD648B8199D44C832BE39EAC4D0E1
            0E142F2610CF48A8DF4043A72E4CC0B26DDEC589334CA4750AF90246469A89AF
            577ABA3B50A4980D452815BF3B1A8C735702394F562E9F8B9A35B2909D6BE200
            B1BB5F59054BA5CFB1BDF4ED28159B364B445E9E8D1BFBCC0CC0D757804AD930
            70B0012D5A49440D761C3A108A391F54C58861B124794AD82F5CF1EFE36B761E
            FAF330FD1E586C2ADD06768BDB6061BC7D91F09512FCEF1F5C862A7834C8876D
            91E6DB8BD66D88E26B88870E90E85BE9C0C89146346A24E1DD91365CBEA2E0EB
            FD063427F098A5F9F65830129EB8139FE85C9BB03B4FD98E3DB63AC3E6A54C94
            8E6C0182DD8DAF284CD86AFC18B6D183DD60D08CF45587F6CF61B228F87CBB86
            CC4C11C1C102D232742275273EDF6986AFB70E5F3AF68BDD65F0C92715317860
            2CF61F285E78FA6C91519E06E77636187F66D5F18FC15210281C516709F3EDEF
            E1A626BFEA837A79382717AD171D5FDCAB7CE9A07CF75BD13E24EE6E522465C0
            613712B9EBE83FC846E922A0574F262B24942B499AC8E8BA93A220DF846BD77C
            B8E548A368CB4931504AD1C525D7AA0C8B0E2375C83380DD156643499201D5AB
            67A178A86BE309E81AACDAB2DDD26EE426F6ED25E0763B3171BC112DDBB8968A
            3F5E5411070E8662D08027F86A5F88FDF4B92263DD25E53336FFCF6F5CFF8FC1
            4A727FF915B6C529595F2C0EB24FC3F5D7DC66D6803AB5D1B4C55E559BDDAD77
            CBC64A2ED634AA9B51E4E2C500F4EB1FCF17385445C38E1D020E1F51307D9A11
            F51B92262F7CD14F27A50A458A87B7C3A57A73C91B9A65BEF5DBA9BB8A0A9BA4
            3151A937E79323A06A096FF065AF6CAA7A3EDECE9F3B2ABAF42E51003D13B816
            8B134FA9807C30B33AC9171389D924ECDC5E3A3BF296EF188BA8EC62BAF1BF07
            CBF6ABC8FA698FAB826278AAB7162EAB1D85CF9D5D705A7D19D1401AFDFA529A
            D01197ED8DA403B337D6748BB8ED3FAD7DBBE4925729CD3C49894F9A1C836A8C
            6F7224587325040781EB368178EE938F2B61F3A632F8E1CA0F083E449172942E
            3A87AAE2018ABA5A82AB1D6768A0C2E98F6BF4DE4DFA5929E0D35355B06D6D59
            7C73EC34424BD85EDAD6C476CCB03FD896A58D1BCBA25AD56C142D5A8875EBC2
            A2539F9B46B919B4B3AAEA12D9FF3D5876024B165CDF73904BBDF1115C676411
            66471771B0750FBEF8F75CFDD583C9B4A988DD6AAEB06DE1F2EA615DDB250C94
            4D3A5F1263D56EE4BB4F1058A4C035126C9E4BD270E687205C260F376AC84378
            2EB0418F274E1A668030D14E694A02722111FA1A07F477E8356A97B09C7E2D96
            7129A00822CFF963D0A0587879B9E6C1D88A3303896D1758BB260C05798CD89F
            E3F62D2F7CB92F7497A4EBB3481EC4B36F1DF96BC0320A2E424FD15CDA8A7D6B
            468C364118669B279C533D5FF9C952744C4B3956EB247F2736D70EDD4FF73CD3
            B8717B253B531AD1ACF1F3C96DDF482D9D90E08E7822FF860DD3D0FDCD6754CE
            736130BEE8247B3C2595BF80A2A990AE4B950BBBE96F1F11FA2403C4B97668DB
            CD10161180493AB4F7C82EB5E28BF42F5280DC01A5D9954B81D8B72F944F6D37
            084FE75573DF57A10F1F3CF65A6484BAD3C3A2AA0A9F6E16FE62B09E53A34B0A
            169CD71688436DE309B0978FA6B2AC3711D3D05E3E8706D251BDB6740C895A8A
            18A2E23AA9F4F6ED5A21339577A48CD1A08FEBD839B977B5CA39C149C9663C4F
            7543912236D422DB13DE201D552BE7C3E0E64A1DFEC8A7E787044609C9B5ED21
            917DED89E09A5F177EDAD927209D644354942F2E9D0FC44D8A1E26522B54C8A5
            0AAAE2D4A9228997AEF8EF3109DA1AA3514B701237BA5165653B84FE5AB058BB
            0BF420E1B4B24A186EEF838C5FD49A5E933AD0438A404769BF1E269D80B77053
            B8A26AC45BFCEB49C4D2BF80954560B1B2CC2A954D936BFA79D8FAD5AF9FD58F
            8C7828DB6AC4E6AF32334C748CC637FC97299387D2650B114CB628A088039E26
            85C78D837E67A5CA24074C244DCC78FCD8837F11068B2626399849F6F2509099
            6D203FE81B7B23D277B71DE2975E46E71D2633D80CC7DF07964E8666B163AB38
            C3DE94BF43E9A8B79012D14D3EA6B793BF44BE7E05C5C47C2E4CD97DCC1475BF
            07169FC387EB3B68140845DD64AD53F162D6B72A55CAAD5DAA546180A7B722B2
            1DCB0CB8C242996FE4603786CB06FE750F241D5C9D3318A92ABAB1B92907FCD8
            D7AB50A7D3338DCAC3071EE931319E57A9E27DAD41F8D624AA690C65F1C5D7AB
            FC3D60E99EEC3B5A1A13B96E17BE7296D39B4A59E8215F4473E9A05E51FC4E88
            D012F40692EBDB80189FD95D1921DCFF7360F1EFF91035D89C32444A274D4705
            02AFAE9FC5195E2CC45A998C76515F1F47A0A787D3DBCD4D37B1493BF660BF9D
            76912DB9DB72F30C391919A6B4C40473524A8ADB9D7CA71C61821AC936E9B00E
            B38D261C107EADBF13ACA7EE438555CEC5C8D13330D8B05BF7C737A820DF4681
            E6601552B843A0342450E2A82921FF3D580EA70489A5A7EADA1C6DA2AA489D26
            252505BAD850F53542F395257EDF8AA4E9A49735C14A8A2A8BE28DCDEF6419A0
            A4B9BBA956F6B55232FB2624B6018640304AFF5760DDB4ACA7A76BC8D2F6A3B9
            2103315491420804A78BB3D89745FC1D60515AF23BED194351FD73EDE2635BAB
            5E6CB7E4EA858E61C7B2DD2FEC84463A0FDB81F3FF0BACFF0760A9253815B265
            C30000000049454E44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo1: TfrxMemoView
          Left = 98.267780000000000000
          Top = 3.779530000000000000
          Width = 374.173470000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'ZAMBOANGA DEL NORTE ELECTRIC COOPERATIVE, INC.')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 98.267780000000000000
          Top = 33.913420000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Period Covered :')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 196.535560000000000000
          Top = 33.913420000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '2/1/2017 to 2/1/2017')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 98.267780000000000000
          Top = 55.811070000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ASSIGNED METER LIST')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 40.779530000000000000
          Top = 94.488250000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Date')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 121.622140000000000000
          Top = 94.488250000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Name')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 301.803340000000000000
          Top = 94.488250000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Address')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 440.543600000000000000
          Top = 94.488250000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Description')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 546.031850000000000000
          Top = 94.488250000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Serial')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 642.283860000000000000
          Top = 94.488250000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Brand')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 723.772110000000000000
          Top = 91.488250000000000000
          Width = 37.795300000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Intl Read.')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = -0.220470000000000000
          Top = 120.944960000000000000
          Width = 763.465060000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 0.102350000000000000
          Top = 90.708720000000000000
          Width = 763.465060000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line3: TfrxLineView
          Top = 91.488250000000000000
          Height = 30.236240000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line4: TfrxLineView
          Left = 111.692950000000000000
          Top = 90.708720000000000000
          Height = 30.236240000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line6: TfrxLineView
          Left = 290.023810000000000000
          Top = 90.708720000000000000
          Height = 30.236240000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line7: TfrxLineView
          Left = 440.543600000000000000
          Top = 90.708720000000000000
          Height = 30.236240000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line8: TfrxLineView
          Left = 534.252320000000000000
          Top = 90.708720000000000000
          Height = 30.236240000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line9: TfrxLineView
          Left = 639.283860000000000000
          Top = 91.488250000000000000
          Height = 30.236240000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line10: TfrxLineView
          Left = 718.772110000000000000
          Top = 90.708720000000000000
          Height = 30.236240000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line11: TfrxLineView
          Left = 762.906000000000000000
          Top = 90.708720000000000000
          Height = 30.236240000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          Left = 3.779530000000000000
          Top = 94.488250000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'No.')
          ParentFont = False
        end
        object Line12: TfrxLineView
          Left = 38.236240000000000000
          Top = 90.488250000000000000
          Height = 30.236240000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Top = 204.094620000000000000
        Width = 763.087107000000000000
        DataSet = MtrListFrx
        DataSetName = 'meterTrans'
        RowCount = 0
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 24.566929130000000000
        Top = 226.771800000000000000
        Width = 763.087107000000000000
        DataSet = MtrListFrx
        DataSetName = 'meterTrans'
        RowCount = 0
        object SysMemo1: TfrxSysMemoView
          Left = 2.724490000000000000
          Top = 3.779530000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[LINE#]')
          ParentFont = False
        end
        object meterTransDateTrans: TfrxMemoView
          Left = 43.133890000000000000
          Top = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataField = 'DateTrans'
          DataSet = MtrListFrx
          DataSetName = 'meterTrans'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[meterTrans."DateTrans"]')
          ParentFont = False
        end
        object meterTransName: TfrxMemoView
          Left = 117.165430000000000000
          Top = 3.000000000000000000
          Width = 170.078850000000000000
          Height = 15.118120000000000000
          DataField = 'Name'
          DataSet = MtrListFrx
          DataSetName = 'meterTrans'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[meterTrans."Name"]')
          ParentFont = False
        end
        object meterTransAddress: TfrxMemoView
          Left = 292.582870000000000000
          Top = 2.779530000000000000
          Width = 143.622140000000000000
          Height = 15.118120000000000000
          DataField = 'Address'
          DataSet = MtrListFrx
          DataSetName = 'meterTrans'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[meterTrans."Address"]')
          ParentFont = False
        end
        object meterTransTransDesc: TfrxMemoView
          Left = 439.984540000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataField = 'TransDesc'
          DataSet = MtrListFrx
          DataSetName = 'meterTrans'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[meterTrans."TransDesc"]')
          ParentFont = False
        end
        object meterTransserialNumber: TfrxMemoView
          Left = 531.472790000000000000
          Top = 3.779530000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DataField = 'serialNumber'
          DataSet = MtrListFrx
          DataSetName = 'meterTrans'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[meterTrans."serialNumber"]')
          ParentFont = False
        end
        object meterTransBrand: TfrxMemoView
          Left = 642.181510000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DataField = 'Brand'
          DataSet = MtrListFrx
          DataSetName = 'meterTrans'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[meterTrans."Brand"]')
          ParentFont = False
        end
        object meterTransIntlReading: TfrxMemoView
          Left = 723.890230000000000000
          Top = 3.779530000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          DataField = 'IntlReading'
          DataSet = MtrListFrx
          DataSetName = 'meterTrans'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[meterTrans."IntlReading"]')
          ParentFont = False
        end
      end
    end
  end
  object MtrListQ: TMyQuery
    Connection = MeterDataModule.MyConnection1
    SQL.Strings = (
      'SELECT '
      ' mt.DateTrans,'
      ' if(nc.name is null,'#39'Reconnection'#39','#39'New Connection'#39') TransDesc,'
      ' mi.serialNumber,'
      ' ifnull(nc.name,rc.name) as Name,'
      ' if(nc.name is not null,nc.address,rc.address) as  Address,'
      ' mi.Brand,'
      ' mt.reading as IntlReading '
      '  '
      'FROM metertransaction mt '
      'left join meterinv mi on mi.idMeterInv = mt.idMeterInv'
      
        'left join zanecoisd.newconnection nc on nc.idmeterTrans = mt.idm' +
        'eterTransaction'
      
        'left join zanecoisd.recon rc on rc.idmeterTrans = mt.idmeterTran' +
        'saction '
      
        'where -- mt.transDesc in ('#39'New Connection'#39','#39'Reconnection'#39','#39'CALIB' +
        'RATION NEW'#39') and      '
      '      mt.datetrans between :datefrom and :dateto  '
      
        '      and exists (Select newC.* from zanecoisd.newconnection new' +
        'C where newC.idmeterTrans= mt.idmeterTransaction) or'
      
        '      -- mt.transDesc in ('#39'New Connection'#39','#39'Reconnection'#39','#39'CALIB' +
        'RATION NEW'#39') and'
      '      mt.datetrans between :datefrom and :dateto  '
      
        '      and exists (Select rec.* from zanecoisd.recon rec where re' +
        'c.idmeterTrans= mt.idmeterTransaction)'
      '      '
      'order by mt.idmetertransaction')
    Left = 440
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dateto'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'datefrom'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dateto'
        Value = nil
      end>
  end
  object tmpQ: TMyQuery
    Connection = MeterDataModule.MyConnection1
    SQL.Strings = (
      'Select * from metertransaction')
    Left = 648
    Top = 272
  end
  object MtrListFrx: TfrxDBDataset
    UserName = 'meterTrans'
    CloseDataSource = False
    DataSet = MtrListQ
    BCDToCurrency = False
    Left = 440
    Top = 88
  end
end
