object frm_pedVenda: Tfrm_pedVenda
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro de Pedido de Venda'
  ClientHeight = 645
  ClientWidth = 916
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poMainFormCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  TextHeight = 15
  object Panel_rodape: TPanel
    Left = 0
    Top = 595
    Width = 916
    Height = 50
    Align = alBottom
    TabOrder = 3
    ExplicitTop = 586
    ExplicitWidth = 910
    object btn_sair: TButton
      Left = 790
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 0
      OnClick = btn_sairClick
    end
  end
  object Panel_grid_prod: TPanel
    Left = 0
    Top = 195
    Width = 916
    Height = 400
    Align = alClient
    TabOrder = 2
    object Y: TLabel
      Left = 666
      Top = 356
      Width = 65
      Height = 15
      Caption = 'Total Pedido'
    end
    object Label1: TLabel
      Left = 52
      Top = 8
      Width = 103
      Height = 20
      Caption = 'Itens do Pedido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object sg_produtos: TStringGrid
      Left = 49
      Top = 32
      Width = 816
      Height = 313
      Color = clSkyBlue
      FixedCols = 0
      RowCount = 2
      GradientEndColor = clMedGray
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect, goFixedRowDefAlign]
      TabOrder = 0
      OnDrawCell = sg_produtosDrawCell
      OnKeyDown = sg_produtosKeyDown
      OnKeyPress = sg_produtosKeyPress
      ColWidths = (
        76
        447
        64
        90
        123)
    end
    object b_GravarPedido: TButton
      Left = 521
      Top = 351
      Width = 106
      Height = 25
      Caption = 'Gravar Pedido'
      TabOrder = 1
      OnClick = b_GravarPedidoClick
    end
    object eTotalPedido: TEdit
      Left = 739
      Top = 351
      Width = 121
      Height = 23
      TabStop = False
      ReadOnly = True
      TabOrder = 2
    end
  end
  object Panel_ins_prod: TPanel
    Left = 0
    Top = 74
    Width = 916
    Height = 121
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 910
    object GroupBox_inc_prod: TGroupBox
      Left = 1
      Top = 1
      Width = 914
      Height = 119
      Align = alClient
      Caption = 'Sele'#231#227'o de Produtos '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 908
      object edit_cod_produto: TLabeledEdit
        Left = 48
        Top = 48
        Width = 89
        Height = 25
        EditLabel.Width = 78
        EditLabel.Height = 17
        EditLabel.Caption = 'Cod. Produto'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -13
        EditLabel.Font.Name = 'Segoe UI'
        EditLabel.Font.Style = []
        EditLabel.ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = ''
        OnExit = edit_cod_produtoExit
        OnKeyPress = edit_cod_produtoKeyPress
      end
      object edit_qtde: TLabeledEdit
        Left = 432
        Top = 48
        Width = 97
        Height = 25
        EditLabel.Width = 68
        EditLabel.Height = 17
        EditLabel.Caption = 'Quantidade'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -13
        EditLabel.Font.Name = 'Segoe UI'
        EditLabel.Font.Style = []
        EditLabel.ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Text = ''
      end
      object edit_vl_unitario: TLabeledEdit
        Left = 535
        Top = 48
        Width = 121
        Height = 25
        EditLabel.Width = 80
        EditLabel.Height = 17
        EditLabel.Caption = 'Valor Unit'#225'rio'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -13
        EditLabel.Font.Name = 'Segoe UI'
        EditLabel.Font.Style = []
        EditLabel.ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Text = ''
      end
      object b_inserir_prod: TButton
        Left = 693
        Top = 47
        Width = 105
        Height = 25
        Caption = 'Inserir Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = b_inserir_prodClick
      end
      object edit_DescProduto: TLabeledEdit
        Left = 143
        Top = 48
        Width = 283
        Height = 25
        TabStop = False
        Color = clBtnFace
        EditLabel.Width = 82
        EditLabel.Height = 17
        EditLabel.Caption = 'Desc. Produto'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -13
        EditLabel.Font.Name = 'Segoe UI'
        EditLabel.Font.Style = []
        EditLabel.ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        Text = ''
      end
    end
  end
  object Panel_Cliente: TPanel
    Left = 0
    Top = 0
    Width = 916
    Height = 74
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 910
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 914
      Height = 72
      Align = alClient
      Caption = 'Sele'#231#227'o de Cliente '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 908
      object edit_cod_cli: TLabeledEdit
        Left = 48
        Top = 44
        Width = 98
        Height = 25
        EditLabel.Width = 70
        EditLabel.Height = 17
        EditLabel.Caption = 'Cod. Cliente'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -13
        EditLabel.Font.Name = 'Segoe UI'
        EditLabel.Font.Style = []
        EditLabel.ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = ''
        OnExit = edit_cod_cliExit
        OnKeyPress = edit_cod_produtoKeyPress
      end
      object edit_nome_cli: TLabeledEdit
        Left = 152
        Top = 43
        Width = 283
        Height = 25
        TabStop = False
        Color = clBtnFace
        EditLabel.Width = 79
        EditLabel.Height = 17
        EditLabel.Caption = 'Nome Cliente'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -13
        EditLabel.Font.Name = 'Segoe UI'
        EditLabel.Font.Style = []
        EditLabel.ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        Text = ''
      end
      object edit_cidade_cli: TLabeledEdit
        Left = 442
        Top = 43
        Width = 223
        Height = 25
        TabStop = False
        Color = clBtnFace
        EditLabel.Width = 41
        EditLabel.Height = 17
        EditLabel.Caption = 'Cidade'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -13
        EditLabel.Font.Name = 'Segoe UI'
        EditLabel.Font.Style = []
        EditLabel.ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        Text = ''
      end
      object edit_uf_cli: TLabeledEdit
        Left = 672
        Top = 43
        Width = 65
        Height = 25
        TabStop = False
        Color = clBtnFace
        EditLabel.Width = 15
        EditLabel.Height = 17
        EditLabel.Caption = 'UF'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -13
        EditLabel.Font.Name = 'Segoe UI'
        EditLabel.Font.Style = []
        EditLabel.ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        Text = ''
      end
    end
  end
end
