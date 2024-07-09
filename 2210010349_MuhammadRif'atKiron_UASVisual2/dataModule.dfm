object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 192
  Top = 137
  Height = 150
  Width = 215
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\ASUS\OneDrive\Documents\libmysql.dll'
    Left = 16
    Top = 32
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select*from kustomer')
    Params = <>
    Left = 80
    Top = 32
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 136
    Top = 40
  end
end
