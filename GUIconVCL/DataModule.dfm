object MyDataModule: TMyDataModule
  OldCreateOrder = False
  Height = 241
  Width = 443
  object DbdemosConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=DBDEMOS')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 40
  end
  object CustomerTable: TFDQuery
    Connection = DbdemosConnection
    SQL.Strings = (
      'SELECT * FROM customer')
    Left = 48
    Top = 88
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 152
    Top = 40
  end
  object CustomerDataSource: TDataSource
    DataSet = CustomerTable
    Left = 152
    Top = 88
  end
  object FDPhysMSAccessDriverLink1: TFDPhysMSAccessDriverLink
    Left = 288
    Top = 40
  end
end
