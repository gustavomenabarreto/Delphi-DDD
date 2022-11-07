object MainForm: TMainForm
  Left = 289
  Top = 144
  Width = 736
  Height = 389
  Caption = 'DDD Sample'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu
  OldCreateOrder = False
  Position = poScreenCenter
  WindowMenu = miAbout
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar: TStatusBar
    Left = 0
    Top = 312
    Width = 720
    Height = 19
    Panels = <>
  end
  object MainMenu: TMainMenu
    Left = 48
    object miFile: TMenuItem
      Caption = 'File'
      object miExit: TMenuItem
        Action = actClose
      end
    end
    object miHelp: TMenuItem
      Caption = 'Help'
      object miAbout: TMenuItem
        Action = actAbout
      end
    end
    object miDevelopment: TMenuItem
      Action = actTest
    end
  end
  object ActionList: TActionList
    Left = 8
    object actClose: TAction
      Caption = 'Close Application'
      OnExecute = OnAction
    end
    object actAbout: TAction
      Caption = 'About'
      OnExecute = OnAction
    end
    object actTest: TAction
      Caption = ' :::: Run Current Test (F9) ::::'
      ShortCut = 120
      OnExecute = OnAction
    end
  end
  object XPManifest: TXPManifest
    Left = 688
  end
end
