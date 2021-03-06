object SealQueryForm: TSealQueryForm
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'SealQueryForm'
  ClientHeight = 311
  ClientWidth = 554
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object NxHeaderPanel1: TNxHeaderPanel
    Left = 0
    Top = 0
    Width = 554
    Height = 311
    Align = alClient
    Caption = 'Seal Inquiry'
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    ParentHeaderFont = False
    TabOrder = 0
    DesignSize = (
      552
      309)
    FullWidth = 554
    object NxLinkLabel1: TNxLinkLabel
      Left = 512
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
      Left = 11
      Top = 37
      Width = 190
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
      Text = 'Search Seal Number'
      OnChange = Edit1Change
      OnClick = Edit1Click
      OnKeyPress = Edit1KeyPress
    end
    object CRDBGrid1: TCRDBGrid1
      Left = 11
      Top = 64
      Width = 525
      Height = 229
      DataSource = dsSInq
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
          FieldName = 'SealNumber'
          Title.Alignment = taCenter
          Title.Caption = 'Seal Number'
          Width = 98
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'name'
          Title.Alignment = taCenter
          Title.Caption = 'Name'
          Width = 111
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'address'
          Title.Alignment = taCenter
          Title.Caption = 'Address'
          Width = 129
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'crew'
          Title.Alignment = taCenter
          Title.Caption = 'Crew'
          Width = 76
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
          FieldName = 'DateInst'
          Title.Alignment = taCenter
          Title.Caption = 'Date Instaled'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MeterBrand'
          Title.Alignment = taCenter
          Title.Caption = 'Meter Brand'
          Width = 124
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SerialNumber'
          Title.Alignment = taCenter
          Title.Caption = 'Serial Number'
          Width = 124
          Visible = True
        end>
    end
  end
  object SInq: TMyQuery
    Connection = MeterDataModule.MyConnection1
    SQL.Strings = (
      'select s.*,'
      '       m.name,'
      '       m.address,'
      '       t.crew '
      'from sealinv s'
      'left join zanecoisd.techcrew t on s.idtechcrew = t.idtechcrew'
      'left join zaneco.master m on m.code = s.code'
      'where s.sealnumber like :sealnumber')
    Left = 12
    Top = 158
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sealnumber'
      end>
    object SInqidSealInv: TLargeintField
      FieldName = 'idSealInv'
    end
    object SInqidTechCrew: TFloatField
      FieldName = 'idTechCrew'
    end
    object SInqSealNumber: TStringField
      FieldName = 'SealNumber'
    end
    object SInqStatus: TStringField
      FieldName = 'Status'
      Size = 1
    end
    object SInqDateInst: TDateField
      FieldName = 'DateInst'
    end
    object SInqMeterBrand: TStringField
      FieldName = 'MeterBrand'
    end
    object SInqSerialNumber: TStringField
      FieldName = 'SerialNumber'
    end
    object SInqidSealBatch: TFloatField
      FieldName = 'idSealBatch'
    end
    object SInqCode: TFloatField
      FieldName = 'Code'
    end
    object SInqname: TStringField
      FieldName = 'name'
      Size = 50
    end
    object SInqaddress: TStringField
      FieldName = 'address'
      Size = 50
    end
    object SInqcrew: TStringField
      FieldName = 'crew'
    end
  end
  object dsSInq: TMyDataSource
    DataSet = SInq
    Left = 13
    Top = 205
  end
end
