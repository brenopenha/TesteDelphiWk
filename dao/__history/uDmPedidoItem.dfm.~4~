object DmPedidoItem: TDmPedidoItem
  Height = 421
  Width = 480
  PixelsPerInch = 120
  object FDQ_Incluir: TFDQuery
    Connection = DmConexao.FDConnection1
    SQL.Strings = (
      
        'insert into pedidos_item (nro_pedido, cod_produto, quantidade, v' +
        'lr_unitario, vlr_total ) '
      
        'values ( :nro_pedido, :cod_produto, :quantidade, :vlr_unitario, ' +
        ':vlr_total )')
    Left = 112
    Top = 80
    ParamData = <
      item
        Name = 'NRO_PEDIDO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'COD_PRODUTO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'QUANTIDADE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'VLR_UNITARIO'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Name = 'VLR_TOTAL'
        DataType = ftFloat
        ParamType = ptInput
      end>
  end
end
