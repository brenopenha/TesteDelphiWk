object DmProduto: TDmProduto
  Height = 354
  Width = 465
  PixelsPerInch = 120
  object FDQ_ConsDados: TFDQuery
    Connection = DmConexao.FDConnection1
    SQL.Strings = (
      'select *'
      'from produtos'
      'where codigo = :codigo')
    Left = 200
    Top = 144
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
