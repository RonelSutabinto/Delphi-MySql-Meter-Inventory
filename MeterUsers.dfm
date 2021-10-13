object UsersForm: TUsersForm
  Left = 0
  Top = 0
  BorderStyle = bsNone
  BorderWidth = 1
  Caption = 'Users'
  ClientHeight = 272
  ClientWidth = 345
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object NxHeaderPanel1: TNxHeaderPanel
    Left = 0
    Top = 0
    Width = 345
    Height = 272
    AdaptiveColors = False
    Align = alClient
    BorderWidth = 2
    Caption = 'Application Users'
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -12
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    ParentHeaderFont = False
    TabOrder = 0
    FullWidth = 345
    object NxButton1: TNxButton
      Left = 10
      Top = 34
      Width = 55
      Caption = 'New'
      TabOrder = 1
      OnClick = NxButton1Click
    end
    object NxButton2: TNxButton
      Left = 74
      Top = 34
      Width = 55
      Caption = 'Edit'
      TabOrder = 2
      OnClick = NxButton2Click
    end
    object NxButton3: TNxButton
      Left = 139
      Top = 34
      Width = 55
      Caption = 'Delete'
      TabOrder = 3
      OnClick = NxButton3Click
    end
    object NxButton4: TNxButton
      Left = 283
      Top = 34
      Width = 55
      Caption = 'Close'
      TabOrder = 4
      OnClick = NxButton4Click
    end
    object UserPanel: TNxHeaderPanel
      Left = 22
      Top = 50
      Width = 297
      Height = 188
      AdaptiveColors = False
      Caption = 'New User'
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      ParentHeaderFont = False
      TabOrder = 5
      Visible = False
      DesignSize = (
        295
        186)
      FullWidth = 297
      object Label1: TLabel
        Left = 53
        Top = 40
        Width = 52
        Height = 13
        Caption = 'User Name'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 59
        Top = 64
        Width = 46
        Height = 13
        Caption = 'Password'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 59
        Top = 112
        Width = 46
        Height = 13
        Caption = 'Employee'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 19
        Top = 88
        Width = 86
        Height = 13
        Caption = 'Confirm Password'
        FocusControl = DBEdit2
      end
      object DBEdit1: TDBEdit
        Left = 110
        Top = 37
        Width = 166
        Height = 19
        Ctl3D = False
        DataField = 'UserName'
        DataSource = MeterDataModule.dsUsers
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit2: TDBEdit
        Left = 111
        Top = 61
        Width = 166
        Height = 19
        Ctl3D = False
        DataField = 'PassWord'
        DataSource = MeterDataModule.dsUsers
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        PasswordChar = '*'
        TabOrder = 1
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit3: TDBEdit
        Left = 110
        Top = 109
        Width = 166
        Height = 19
        Ctl3D = False
        DataField = 'EmpName'
        DataSource = MeterDataModule.dsUsers
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        OnKeyPress = DBEdit1KeyPress
      end
      object Edit1: TEdit
        Left = 110
        Top = 85
        Width = 166
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        PasswordChar = '*'
        TabOrder = 2
        OnKeyPress = DBEdit1KeyPress
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 16
        Top = 135
        Width = 253
        Height = 38
        Caption = 'User Restriction'
        Columns = 3
        DataField = 'RestrictionCode'
        DataSource = MeterDataModule.dsUsers
        Items.Strings = (
          'Admin'
          'Inventory'
          'Laboratory')
        ParentBackground = True
        TabOrder = 4
        Values.Strings = (
          '0'
          '1'
          '2')
        OnClick = DBRadioGroup1Click
      end
      object NxLinkLabel1: TNxLinkLabel
        Left = 180
        Top = 3
        Width = 47
        Height = 22
        Anchors = [akTop, akRight]
        Caption = 'Save'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
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
        ParentFont = False
        TextDistance = 2
        Transparent = True
        VertSpacing = 2
        OnClick = NxLinkLabel1Click
      end
      object NxLinkLabel2: TNxLinkLabel
        Left = 237
        Top = 5
        Width = 51
        Height = 18
        Anchors = [akTop, akRight]
        Caption = 'Cancel'
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
        OnClick = NxLinkLabel2Click
      end
    end
    object CRDBGrid1: TCRDBGrid1
      Left = 8
      Top = 64
      Width = 329
      Height = 199
      DataSource = MeterDataModule.dsUsers
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
          FieldName = 'EmpName'
          Title.Alignment = taCenter
          Title.Caption = 'Employee Name'
          Width = 292
          Visible = True
        end>
    end
  end
end
