object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 336
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 48
    Width = 58
    Height = 13
    Caption = 'ore da fare:'
  end
  object Label2: TLabel
    Left = 48
    Top = 96
    Width = 70
    Height = 13
    Caption = 'minuti da fare:'
  end
  object Label5: TLabel
    Left = 48
    Top = 195
    Width = 43
    Height = 13
    Caption = 'risultato:'
  end
  object Label3: TLabel
    Left = 48
    Top = 144
    Width = 60
    Height = 13
    Caption = 'minuti pausa'
  end
  object oraora: TcxClock
    Left = 497
    Top = 8
    Width = 130
    Height = 130
  end
  object ore: TEdit
    Left = 136
    Top = 45
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '0'
  end
  object min: TEdit
    Left = 136
    Top = 93
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '0'
  end
  object bottone: TButton
    Left = 296
    Top = 64
    Width = 75
    Height = 25
    Caption = 'calcola'
    TabOrder = 3
    OnClick = bottoneClick
  end
  object risultato: TEdit
    Left = 136
    Top = 192
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 4
    Text = '0'
  end
  object min_pausa: TEdit
    Left = 136
    Top = 141
    Width = 121
    Height = 21
    TabOrder = 5
    Text = '0'
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 592
    Top = 160
  end
end
