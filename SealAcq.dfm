object SealAcqForm: TSealAcqForm
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'SealAcqForm'
  ClientHeight = 432
  ClientWidth = 485
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
    Width = 485
    Height = 432
    AdaptiveColors = False
    Align = alClient
    Caption = 'Meter Seal Acquisition '
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -12
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    ParentHeaderFont = False
    TabOrder = 0
    DesignSize = (
      483
      430)
    FullWidth = 485
    object NxLinkLabel1: TNxLinkLabel
      Left = 442
      Top = 6
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
      Left = 8
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
      TabOrder = 1
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
    object MeterSealPanel: TNxHeaderPanel
      Left = 87
      Top = 84
      Width = 308
      Height = 261
      AdaptiveColors = False
      Caption = 'Seal Acquisition Record'
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      ParentHeaderFont = False
      TabOrder = 6
      Visible = False
      DesignSize = (
        306
        259)
      FullWidth = 308
      object Label1: TLabel
        Left = 15
        Top = 40
        Width = 68
        Height = 13
        Caption = 'Date Acquired'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 29
        Top = 64
        Width = 54
        Height = 13
        Caption = 'RR Number'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 29
        Top = 88
        Width = 54
        Height = 13
        Caption = 'DR Number'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 33
        Top = 112
        Width = 50
        Height = 13
        Caption = 'SI Number'
        FocusControl = DBEdit4
      end
      object Label6: TLabel
        Left = 44
        Top = 160
        Width = 39
        Height = 13
        Caption = 'Address'
        FocusControl = DBEdit6
      end
      object Label7: TLabel
        Left = 54
        Top = 184
        Width = 29
        Height = 13
        Caption = 'Boxes'
        FocusControl = DBEdit7
      end
      object Label8: TLabel
        Left = 39
        Top = 208
        Width = 44
        Height = 13
        Caption = 'Pcs / Box'
        FocusControl = DBEdit8
      end
      object Label9: TLabel
        Left = 40
        Top = 232
        Width = 43
        Height = 13
        Caption = 'Total Pcs'
        FocusControl = DBEdit9
      end
      object DBEdit1: TDBEdit
        Left = 88
        Top = 37
        Width = 200
        Height = 21
        DataField = 'DateAcquired'
        DataSource = MeterDataModule.dsSLAcq
        TabOrder = 0
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit2: TDBEdit
        Left = 88
        Top = 61
        Width = 200
        Height = 21
        DataField = 'RRNumber'
        DataSource = MeterDataModule.dsSLAcq
        TabOrder = 1
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit3: TDBEdit
        Left = 88
        Top = 85
        Width = 200
        Height = 21
        DataField = 'DRNumber'
        DataSource = MeterDataModule.dsSLAcq
        TabOrder = 2
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit4: TDBEdit
        Left = 88
        Top = 109
        Width = 200
        Height = 21
        DataField = 'SINumber'
        DataSource = MeterDataModule.dsSLAcq
        TabOrder = 3
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit5: TDBEdit
        Left = 88
        Top = 133
        Width = 200
        Height = 21
        DataField = 'Supplier'
        DataSource = MeterDataModule.dsSLAcq
        TabOrder = 4
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit6: TDBEdit
        Left = 88
        Top = 157
        Width = 200
        Height = 21
        DataField = 'Address'
        DataSource = MeterDataModule.dsSLAcq
        TabOrder = 5
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit7: TDBEdit
        Left = 88
        Top = 181
        Width = 200
        Height = 21
        DataField = 'Boxes'
        DataSource = MeterDataModule.dsSLAcq
        TabOrder = 6
        OnExit = DBEdit7Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit8: TDBEdit
        Left = 88
        Top = 205
        Width = 200
        Height = 21
        DataField = 'Pcs'
        DataSource = MeterDataModule.dsSLAcq
        TabOrder = 7
        OnExit = DBEdit7Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit9: TDBEdit
        Left = 88
        Top = 229
        Width = 200
        Height = 21
        DataField = 'TotalPcs'
        DataSource = MeterDataModule.dsSLAcq
        TabOrder = 8
        OnKeyPress = DBEdit1KeyPress
      end
      object NxLinkLabel9: TNxLinkLabel
        Left = 195
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
        OnClick = NxLinkLabel9Click
        ExplicitLeft = 197
      end
      object NxLinkLabel8: TNxLinkLabel
        Left = 248
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
        OnClick = NxLinkLabel8Click
        ExplicitLeft = 250
      end
      object NxLinkLabel10: TNxLinkLabel
        Left = 44
        Top = 136
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
      Left = 361
      Top = 157
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
      TabOrder = 7
      Visible = False
      DesignSize = (
        335
        348)
      FullWidth = 337
      object NxLinkLabel11: TNxLinkLabel
        Left = 243
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
        ExplicitLeft = 245
      end
      object NxLinkLabel12: TNxLinkLabel
        Left = 282
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
        ExplicitLeft = 284
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
    object CRDBGrid1: TCRDBGrid1
      Left = 8
      Top = 59
      Width = 465
      Height = 364
      DataSource = MeterDataModule.dsSLAcq
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
          FieldName = 'Boxes'
          Title.Alignment = taCenter
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Pcs'
          Title.Alignment = taCenter
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cost'
          Title.Alignment = taCenter
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TotalPcs'
          Title.Alignment = taCenter
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Amount'
          Width = 64
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
  end
end
