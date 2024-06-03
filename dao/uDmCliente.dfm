object DmCliente: TDmCliente
  Height = 388
  Width = 523
  PixelsPerInch = 120
  object FDQ_ConsDados: TFDQuery
    Connection = DmConexao.FDConnection1
    SQL.Strings = (
      'select *'
      'from clientes'
      'where codigo = :codigo')
    Left = 264
    Top = 160
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
