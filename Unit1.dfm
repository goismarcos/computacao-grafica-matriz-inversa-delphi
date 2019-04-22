object Form1: TForm1
  Left = 0
  Top = 0
  BiDiMode = bdLeftToRight
  Caption = 'Traballho Computa'#231#227'o Gr'#225'fica'
  ClientHeight = 351
  ClientWidth = 514
  Color = clActiveBorder
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clMenuHighlight
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 24
    Top = 32
    Width = 300
    Height = 300
  end
  object Label1: TLabel
    Left = 352
    Top = 32
    Width = 137
    Height = 19
    Caption = 'Computa'#231#227'o Gr'#225'fica'
    Color = clHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clDefault
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 376
    Top = 57
    Width = 91
    Height = 19
    Caption = 'Marcos Gois '
    Color = clHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clDefault
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 376
    Top = 82
    Width = 82
    Height = 19
    Caption = '7'#186' termo CC'
    Color = clHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clDefault
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object btn: TButton
    Left = 376
    Top = 216
    Width = 97
    Height = 41
    Caption = 'Gerar Ponto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btnClick
  end
  object x: TEdit
    Left = 368
    Top = 128
    Width = 121
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = 'x'
  end
  object y: TEdit
    Left = 368
    Top = 168
    Width = 121
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Text = 'y'
  end
  object Button1: TButton
    Left = 376
    Top = 280
    Width = 97
    Height = 41
    Caption = 'Limpar Tudo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button1Click
  end
end
