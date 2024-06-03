object DmPedido: TDmPedido
  Height = 419
  Width = 427
  PixelsPerInch = 120
  object FDQ_Incluir: TFDQuery
    Connection = DmConexao.FDConnection1
    SQL.Strings = (
      
        'insert into pedidos (nro_pedido, dt_emissao, cod_cliente, vl_tot' +
        'al) values (:nro_pedido, :dt_emissao, :cod_cliente, :vl_total)')
    Left = 160
    Top = 120
    ParamData = <
      item
        Name = 'NRO_PEDIDO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DT_EMISSAO'
        DataType = ftDateTime
        ParamType = ptInput
      end
      item
        Name = 'COD_CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'VL_TOTAL'
        DataType = ftFloat
        ParamType = ptInput
      end>
  end
  object FDQ_ProxNroPed: TFDQuery
    Connection = DmConexao.FDConnection1
    SQL.Strings = (
      'select COALESCE(max(nro_pedido)+1,1) as prox_numero'
      'from pedidos')
    Left = 144
    Top = 232
  end
end
