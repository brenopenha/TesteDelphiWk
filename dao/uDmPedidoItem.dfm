object DmPedidoItem: TDmPedidoItem
  Height = 315
  Width = 370
  PixelsPerInch = 120
  object FDQ_Incluir: TFDQuery
    Connection = DmConexao.FDConnection1
    SQL.Strings = (
      
        'insert into pedidos_item (nro_pedido, cod_produto, quantidade, v' +
        'lr_unitario, vlr_total ) '
      
        'values ( :nro_pedido, :cod_produto, :quantidade, :vlr_unitario, ' +
        ':vlr_total )')
    Left = 159
    Top = 12
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
  object FDQ_Consultar: TFDQuery
    Connection = DmConexao.FDConnection1
    SQL.Strings = (
      'select *'
      'from pedidos_item'
      'where nro_pedido = :nro_pedido')
    Left = 158
    Top = 104
    ParamData = <
      item
        Name = 'NRO_PEDIDO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object FDQ_Excluir: TFDQuery
    Connection = DmConexao.FDConnection1
    SQL.Strings = (
      'delete from pedidos_item'
      'where nro_pedido = :nro_pedido')
    Left = 155
    Top = 193
    ParamData = <
      item
        Name = 'NRO_PEDIDO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end
