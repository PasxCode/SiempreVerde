object FReport: TFReport
  Left = 193
  Top = 124
  Width = 814
  Height = 399
  Caption = 'Listado de Facturas.'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Scaled = False
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 40
    Width = 68
    Height = 13
    Caption = 'Imprimiendo... '
  end
  object PageControl: TPageControl
    Left = 0
    Top = 56
    Width = 801
    Height = 265
    ActivePage = TSAlbaranes
    TabOrder = 0
    Visible = False
    object TSFacturas: TTabSheet
      Caption = 'Facturas'
      object QRFacturas: TQuickRep
        Left = 7
        Top = -462
        Width = 794
        Height = 1123
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        DataSet = QFacturas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Functions.Strings = (
          'PAGENUMBER'
          'COLUMNNUMBER'
          'REPORTTITLE')
        Functions.DATA = (
          '0'
          '0'
          #39#39)
        Options = [FirstPageHeader, LastPageFooter]
        Page.Columns = 1
        Page.Orientation = poPortrait
        Page.PaperSize = A4
        Page.Values = (
          100.000000000000000000
          2970.000000000000000000
          100.000000000000000000
          2100.000000000000000000
          100.000000000000000000
          100.000000000000000000
          0.000000000000000000)
        PrinterSettings.Copies = 1
        PrinterSettings.OutputBin = Auto
        PrinterSettings.Duplex = False
        PrinterSettings.FirstPage = 1
        PrinterSettings.LastPage = 1
        PrinterSettings.ExtendedDuplex = 0
        PrinterSettings.UseStandardprinter = False
        PrinterSettings.UseCustomBinCode = False
        PrinterSettings.CustomBinCode = 0
        PrinterSettings.UseCustomPaperCode = False
        PrinterSettings.CustomPaperCode = 0
        PrinterSettings.PrintMetaFile = False
        PrintIfEmpty = False
        SnapToGrid = True
        Units = MM
        Zoom = 100
        OnApplyPrinterSettings = QRAlbaranesApplyPrinterSettings
        PrevFormStyle = fsNormal
        PreviewInitialState = wsNormal
        object QRSubDetail3: TQRSubDetail
          Left = 38
          Top = 393
          Width = 718
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            52.916666666666670000
            1899.708333333333000000)
          Master = QRFacturas
          DataSet = TDetalle
          PrintBefore = False
          PrintIfEmpty = True
          object QRDBText7: TQRDBText
            Left = 24
            Top = 4
            Width = 409
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              63.500000000000000000
              10.583333333333300000
              1082.145833333330000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = TDetalle
            DataField = 'ConDetFac'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText8: TQRDBText
            Left = 440
            Top = 4
            Width = 49
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1164.166666666670000000
              10.583333333333300000
              129.645833333333000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = TDetalle
            DataField = 'CanDetFac'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText9: TQRDBText
            Left = 496
            Top = 4
            Width = 81
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1312.333333333330000000
              10.583333333333300000
              214.312500000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = TDetalle
            DataField = 'PreUniDetFac'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRExpr1: TQRExpr
            Left = 592
            Top = 4
            Width = 97
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1566.333333333330000000
              10.583333333333300000
              256.645833333333000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'TDetalle.CanDetFac*TDetalle.PreUniDetFac+'#39' '#8364#39
            FontSize = 10
          end
        end
        object QRSubDetail4: TQRSubDetail
          Left = 38
          Top = 413
          Width = 718
          Height = 180
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = True
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            476.250000000000000000
            1899.708333333333000000)
          Master = QRFacturas
          PrintBefore = False
          PrintIfEmpty = True
          object QRDBText10: TQRDBText
            Left = 52
            Top = 123
            Width = 148
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              137.583333333333000000
              325.437500000000000000
              391.583333333333000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = QFacturas
            DataField = 'BasImpFac'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText11: TQRDBText
            Left = 235
            Top = 123
            Width = 30
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              621.770833333333300000
              325.437500000000000000
              79.375000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = QFacturas
            DataField = 'PorIvaFac'
            OnPrint = QRDBText11Print
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRExpr2: TQRExpr
            Left = 537
            Top = 123
            Width = 170
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1420.812500000000000000
              325.437500000000000000
              449.791666666667000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = '(QFacturas.BasImpFac*((QFacturas.PorIvaFac/100)+1))+'#39' '#8364#39
            FontSize = 10
          end
          object QRDBText12: TQRDBText
            Left = 24
            Top = 9
            Width = 663
            Height = 65
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              171.979166666667000000
              63.500000000000000000
              23.812500000000000000
              1754.187500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = QFacturas
            DataField = 'ObsFac'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRExpr14: TQRExpr
            Left = 272
            Top = 123
            Width = 73
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              719.666666666666700000
              325.437500000000000000
              193.145833333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = '(QFacturas.BasImpFac * QFacturas.PorIvaFac / 100)+'#39' '#8364#39
            FontSize = 10
          end
        end
        object PageHeaderBand1: TQRBand
          Left = 38
          Top = 38
          Width = 718
          Height = 355
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            939.270833333333300000
            1899.708333333333000000)
          BandType = rbPageHeader
          object QRDBText13: TQRDBText
            Left = 24
            Top = 196
            Width = 43
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              63.500000000000000000
              518.583333333333300000
              113.770833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = QFacturas
            DataField = 'NomCli'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText14: TQRDBText
            Left = 48
            Top = 220
            Width = 32
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              127.000000000000000000
              582.083333333333300000
              84.666666666666670000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = QFacturas
            DataField = 'DirCli'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText15: TQRDBText
            Left = 48
            Top = 244
            Width = 70
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              127.000000000000000000
              645.583333333333000000
              185.208333333333000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = QFacturas
            DataField = 'CPCli'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText16: TQRDBText
            Left = 128
            Top = 244
            Width = 39
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              338.666666666666700000
              645.583333333333300000
              103.187500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = QFacturas
            DataField = 'PobCli'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText17: TQRDBText
            Left = 128
            Top = 268
            Width = 36
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              338.666666666666700000
              709.083333333333300000
              95.250000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = QFacturas
            DataField = 'ProCli'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText18: TQRDBText
            Left = 311
            Top = 175
            Width = 31
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              822.854166666666700000
              463.020833333333300000
              82.020833333333330000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = QFacturas
            DataField = 'CifCli'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel1: TQRLabel
            Left = 480
            Top = 194
            Width = 217
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1270.000000000000000000
              513.291666666667000000
              574.145833333333000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'FACTURA'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText1: TQRDBText
            Left = 562
            Top = 236
            Width = 137
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1486.958333333330000000
              624.416666666667000000
              362.479166666667000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = QFacturas
            DataField = 'NumFac'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText2: TQRDBText
            Left = 561
            Top = 270
            Width = 137
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1484.312500000000000000
              714.375000000000000000
              362.479166666667000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = QFacturas
            DataField = 'FecFac'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
      end
    end
    object TSAlbaranes: TTabSheet
      Caption = 'Albaranes'
      ImageIndex = 1
      object QRAlbaranes: TQuickRep
        Left = 15
        Top = -326
        Width = 794
        Height = 1123
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        DataSet = QAlbaranes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Functions.Strings = (
          'PAGENUMBER'
          'COLUMNNUMBER'
          'REPORTTITLE')
        Functions.DATA = (
          '0'
          '0'
          #39#39)
        Options = [FirstPageHeader, LastPageFooter]
        Page.Columns = 1
        Page.Orientation = poPortrait
        Page.PaperSize = A4
        Page.Values = (
          100.000000000000000000
          2970.000000000000000000
          100.000000000000000000
          2100.000000000000000000
          100.000000000000000000
          100.000000000000000000
          0.000000000000000000)
        PrinterSettings.Copies = 1
        PrinterSettings.OutputBin = Auto
        PrinterSettings.Duplex = False
        PrinterSettings.FirstPage = 1
        PrinterSettings.LastPage = 1
        PrinterSettings.ExtendedDuplex = 0
        PrinterSettings.UseStandardprinter = True
        PrinterSettings.UseCustomBinCode = False
        PrinterSettings.CustomBinCode = 0
        PrinterSettings.UseCustomPaperCode = False
        PrinterSettings.CustomPaperCode = 0
        PrinterSettings.PrintMetaFile = False
        PrintIfEmpty = True
        SnapToGrid = True
        Units = MM
        Zoom = 100
        OnApplyPrinterSettings = QRAlbaranesApplyPrinterSettings
        PrevFormStyle = fsNormal
        PreviewInitialState = wsNormal
        object QRSubDetail1: TQRSubDetail
          Left = 38
          Top = 393
          Width = 718
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            52.916666666666670000
            1899.708333333333000000)
          Master = QRAlbaranes
          DataSet = TDetalleAlb
          PrintBefore = False
          PrintIfEmpty = True
          object QRDBText3: TQRDBText
            Left = 24
            Top = 4
            Width = 409
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              63.500000000000000000
              10.583333333333300000
              1082.145833333330000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = TDetalleAlb
            DataField = 'ConDetAlb'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText4: TQRDBText
            Left = 440
            Top = 4
            Width = 49
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1164.166666666670000000
              10.583333333333300000
              129.645833333333000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = TDetalleAlb
            DataField = 'CanDetAlb'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText5: TQRDBText
            Left = 496
            Top = 4
            Width = 81
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1312.333333333330000000
              10.583333333333300000
              214.312500000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = TDetalleAlb
            DataField = 'PreUniDetAlb'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRExpr3: TQRExpr
            Left = 592
            Top = 4
            Width = 97
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1566.333333333330000000
              10.583333333333300000
              256.645833333333000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'TDetalleAlb.CanDetAlb*TDetalleAlb.PreUniDetAlb+'#39' '#8364#39
            FontSize = 10
          end
        end
        object QRSubDetail2: TQRSubDetail
          Left = 38
          Top = 413
          Width = 718
          Height = 180
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = True
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            476.250000000000000000
            1899.708333333333000000)
          Master = QRAlbaranes
          PrintBefore = False
          PrintIfEmpty = True
          object QRDBText6: TQRDBText
            Left = 52
            Top = 123
            Width = 148
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              137.583333333333000000
              325.437500000000000000
              391.583333333333000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = QAlbaranes
            DataField = 'BasImpAlb'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText19: TQRDBText
            Left = 235
            Top = 123
            Width = 30
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              621.770833333333300000
              325.437500000000000000
              79.375000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = QAlbaranes
            DataField = 'PorIvaAlb'
            OnPrint = QRDBText19Print
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRExpr4: TQRExpr
            Left = 537
            Top = 123
            Width = 170
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1420.812500000000000000
              325.437500000000000000
              449.791666666667000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = '(QAlbaranes.BasImpAlb*((QAlbaranes.PorIvaAlb/100)+1))+'#39' '#8364#39
            FontSize = 10
          end
          object QRDBText20: TQRDBText
            Left = 24
            Top = 9
            Width = 663
            Height = 65
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              171.979166666667000000
              63.500000000000000000
              23.812500000000000000
              1754.187500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = QAlbaranes
            DataField = 'ObsAlb'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object QRBand1: TQRBand
          Left = 38
          Top = 38
          Width = 718
          Height = 355
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            939.270833333333300000
            1899.708333333333000000)
          BandType = rbPageHeader
          object QRDBText21: TQRDBText
            Left = 24
            Top = 196
            Width = 43
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              63.500000000000000000
              518.583333333333300000
              113.770833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = QAlbaranes
            DataField = 'NomCli'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText22: TQRDBText
            Left = 48
            Top = 220
            Width = 32
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              127.000000000000000000
              582.083333333333300000
              84.666666666666670000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = QAlbaranes
            DataField = 'DirCli'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText23: TQRDBText
            Left = 48
            Top = 244
            Width = 70
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              127.000000000000000000
              645.583333333333000000
              185.208333333333000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = QAlbaranes
            DataField = 'CPCli'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText24: TQRDBText
            Left = 128
            Top = 244
            Width = 39
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              338.666666666666700000
              645.583333333333300000
              103.187500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = QAlbaranes
            DataField = 'PobCli'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText25: TQRDBText
            Left = 128
            Top = 268
            Width = 36
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              338.666666666666700000
              709.083333333333300000
              95.250000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = QAlbaranes
            DataField = 'ProCli'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText26: TQRDBText
            Left = 311
            Top = 175
            Width = 31
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              822.854166666666700000
              463.020833333333300000
              82.020833333333330000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = QAlbaranes
            DataField = 'CifCli'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel2: TQRLabel
            Left = 480
            Top = 194
            Width = 217
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1270.000000000000000000
              513.291666666667000000
              574.145833333333000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'ALBAR'#193'N'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText27: TQRDBText
            Left = 562
            Top = 236
            Width = 137
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1486.958333333330000000
              624.416666666667000000
              362.479166666667000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = QAlbaranes
            DataField = 'NumAlb'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRDBText28: TQRDBText
            Left = 561
            Top = 270
            Width = 137
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1484.312500000000000000
              714.375000000000000000
              362.479166666667000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = QAlbaranes
            DataField = 'FecAlb'
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Listado Clientes'
      ImageIndex = 2
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 0
        Width = 793
        Height = 237
        VertScrollBar.Position = 8
        Align = alClient
        TabOrder = 0
        object QRLisCli: TQuickRep
          Left = 3
          Top = -26
          Width = 794
          Height = 1123
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          DataSet = TClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Functions.Strings = (
            'PAGENUMBER'
            'COLUMNNUMBER'
            'REPORTTITLE')
          Functions.DATA = (
            '0'
            '0'
            #39#39)
          Options = [FirstPageHeader, LastPageFooter]
          Page.Columns = 1
          Page.Orientation = poPortrait
          Page.PaperSize = A4
          Page.Values = (
            100.000000000000000000
            2970.000000000000000000
            100.000000000000000000
            2100.000000000000000000
            100.000000000000000000
            100.000000000000000000
            0.000000000000000000)
          PrinterSettings.Copies = 1
          PrinterSettings.OutputBin = Auto
          PrinterSettings.Duplex = False
          PrinterSettings.FirstPage = 0
          PrinterSettings.LastPage = 0
          PrinterSettings.ExtendedDuplex = 0
          PrinterSettings.UseStandardprinter = False
          PrinterSettings.UseCustomBinCode = False
          PrinterSettings.CustomBinCode = 0
          PrinterSettings.UseCustomPaperCode = False
          PrinterSettings.CustomPaperCode = 0
          PrinterSettings.PrintMetaFile = False
          PrintIfEmpty = True
          SnapToGrid = True
          Units = MM
          Zoom = 100
          OnApplyPrinterSettings = QRAlbaranesApplyPrinterSettings
          PrevFormStyle = fsNormal
          PreviewInitialState = wsNormal
          object PageHeaderBand2: TQRBand
            Left = 38
            Top = 38
            Width = 718
            Height = 40
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            AlignToBottom = False
            Color = clWhite
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              105.833333333333300000
              1899.708333333333000000)
            BandType = rbPageHeader
            object QRLabel3: TQRLabel
              Left = 0
              Top = 0
              Width = 181
              Height = 25
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                66.145833333333330000
                0.000000000000000000
                0.000000000000000000
                478.895833333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Listado de Clientes'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -21
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              FontSize = 16
            end
            object QRSysData1: TQRSysData
              Left = 648
              Top = 0
              Width = 65
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1714.500000000000000000
                0.000000000000000000
                171.979166666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              Color = clWhite
              Data = qrsDate
              Transparent = False
              FontSize = 10
            end
            object QRLabel13: TQRLabel
              Left = 640
              Top = 16
              Width = 41
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1693.333333333333000000
                42.333333333333330000
                108.479166666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Pagina'
              Color = clWhite
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRExpr11: TQRExpr
              Left = 688
              Top = 16
              Width = 25
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1820.333333333333000000
                42.333333333333330000
                66.145833333333330000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              WordWrap = True
              Expression = 'PAGENUMBER'
              FontSize = 10
            end
          end
          object DetailBand1: TQRBand
            Left = 38
            Top = 102
            Width = 718
            Height = 101
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            AlignToBottom = False
            Color = clWhite
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              267.229166666666700000
              1899.708333333333000000)
            BandType = rbDetail
            object QRDBText29: TQRDBText
              Left = 0
              Top = 0
              Width = 73
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                0.000000000000000000
                0.000000000000000000
                193.145833333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = TClientes
              DataField = 'CifCli'
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRDBText30: TQRDBText
              Left = 80
              Top = 0
              Width = 257
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                211.666666666666700000
                0.000000000000000000
                679.979166666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = TClientes
              DataField = 'NomCli'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRExpr5: TQRExpr
              Left = 408
              Top = 0
              Width = 84
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1079.500000000000000000
                0.000000000000000000
                222.250000000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              WordWrap = True
              Expression = 'IF(TClientes.Tipcli='#39'E'#39','#39'Entidad'#39','#39'Particular'#39')'
              FontSize = 10
            end
            object QRExpr6: TQRExpr
              Left = 408
              Top = 16
              Width = 113
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1079.500000000000000000
                42.333333333333330000
                298.979166666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              WordWrap = True
              Expression = 'IF(TClientes.ForPagCli='#39'C'#39','#39'Contado'#39','#39'Transferencia:'#39')'
              FontSize = 10
            end
            object QRDBText35: TQRDBText
              Left = 0
              Top = 16
              Width = 337
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                0.000000000000000000
                42.333333333333330000
                891.645833333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = TClientes
              DataField = 'DirCli'
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRDBText36: TQRDBText
              Left = 0
              Top = 32
              Width = 49
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                0.000000000000000000
                84.666666666666670000
                129.645833333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = TClientes
              DataField = 'CpCli'
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRDBText37: TQRDBText
              Left = 48
              Top = 32
              Width = 289
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                127.000000000000000000
                84.666666666666670000
                764.645833333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = TClientes
              DataField = 'PobCli'
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRDBText38: TQRDBText
              Left = 0
              Top = 48
              Width = 337
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                0.000000000000000000
                127.000000000000000000
                891.645833333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = TClientes
              DataField = 'ProCli'
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRDBText39: TQRDBText
              Left = 112
              Top = 64
              Width = 77
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                296.333333333333300000
                169.333333333333300000
                203.729166666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = TClientes
              DataField = 'Tel2Cli'
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRDBText40: TQRDBText
              Left = 32
              Top = 64
              Width = 77
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                84.666666666666670000
                169.333333333333300000
                203.729166666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = TClientes
              DataField = 'Tel1Cli'
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRDBText41: TQRDBText
              Left = 224
              Top = 64
              Width = 77
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                592.666666666666700000
                169.333333333333300000
                203.729166666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = TClientes
              DataField = 'FaxCli'
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRDBText42: TQRDBText
              Left = 40
              Top = 80
              Width = 297
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                105.833333333333300000
                211.666666666666700000
                785.812500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = TClientes
              DataField = 'EmaCli'
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRExpr7: TQRExpr
              Left = 528
              Top = 32
              Width = 33
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1397.000000000000000000
                84.666666666666670000
                87.312500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              WordWrap = True
              Expression = 
                'IF(TClientes.ForPagCli='#39'T'#39',FormatNumeric('#39'0000'#39',TClientes.EntCue' +
                'Cli),'#39#39')'
              FontSize = 10
            end
            object QRExpr8: TQRExpr
              Left = 568
              Top = 32
              Width = 33
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1502.833333333333000000
                84.666666666666670000
                87.312500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              WordWrap = True
              Expression = 
                'IF(TClientes.ForPagCli='#39'T'#39',FormatNumeric('#39'0000'#39',TClientes.OfiCue' +
                'Cli),'#39#39')'
              FontSize = 10
            end
            object QRExpr9: TQRExpr
              Left = 608
              Top = 32
              Width = 17
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1608.666666666667000000
                84.666666666666670000
                44.979166666666670000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              WordWrap = True
              Expression = 
                'IF(TClientes.ForPagCli='#39'T'#39',FormatNumeric('#39'00'#39',TClientes.DCCueCli' +
                '),'#39#39')'
              FontSize = 10
            end
            object QRExpr10: TQRExpr
              Left = 632
              Top = 32
              Width = 73
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1672.166666666667000000
                84.666666666666670000
                193.145833333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              ResetAfterPrint = False
              Transparent = False
              WordWrap = True
              Expression = 
                'IF(TClientes.ForPagCli='#39'T'#39',FormatNumeric('#39'0000000000'#39',TClientes.' +
                'NumCueCli),'#39#39')'
              FontSize = 10
            end
            object QRLabel7: TQRLabel
              Left = 0
              Top = 64
              Width = 29
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                0.000000000000000000
                169.333333333333300000
                76.729166666666670000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Tels:'
              Color = clWhite
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRLabel8: TQRLabel
              Left = 192
              Top = 64
              Width = 27
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                508.000000000000000000
                169.333333333333300000
                71.437500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Fax:'
              Color = clWhite
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRLabel9: TQRLabel
              Left = 0
              Top = 80
              Width = 38
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                0.000000000000000000
                211.666666666666700000
                100.541666666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Email:'
              Color = clWhite
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRShape2: TQRShape
              Left = 0
              Top = 96
              Width = 718
              Height = 3
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                7.937500000000000000
                0.000000000000000000
                254.000000000000000000
                1899.708333333333000000)
              Pen.Style = psDot
              Shape = qrsHorLine
              VertAdjust = 0
            end
            object QRDBText31: TQRDBText
              Left = 528
              Top = 17
              Width = 177
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1397.000000000000000000
                44.979166666666670000
                468.312500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = TClientes
              DataField = 'NomEntCli'
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
          end
          object ColumnHeaderBand1: TQRBand
            Left = 38
            Top = 78
            Width = 718
            Height = 24
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            AlignToBottom = False
            Color = clSilver
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              63.500000000000000000
              1899.708333333333000000)
            BandType = rbColumnHeader
            object QRLabel4: TQRLabel
              Left = 8
              Top = 3
              Width = 98
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                21.166666666666670000
                7.937500000000000000
                259.291666666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Datos Generales'
              Color = clWhite
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRShape1: TQRShape
              Left = 0
              Top = 19
              Width = 718
              Height = 9
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                23.812500000000000000
                0.000000000000000000
                50.270833333333330000
                1899.708333333333000000)
              Shape = qrsHorLine
              VertAdjust = 0
            end
            object QRLabel5: TQRLabel
              Left = 408
              Top = 3
              Width = 88
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1079.500000000000000000
                7.937500000000000000
                232.833333333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Forma de pago'
              Color = clWhite
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRLabel6: TQRLabel
              Left = 520
              Top = 3
              Width = 76
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1375.833333333333000000
                7.937500000000000000
                201.083333333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'N'#186' de cuenta'
              Color = clWhite
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
          end
          object SummaryBand1: TQRBand
            Left = 38
            Top = 203
            Width = 718
            Height = 54
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            AlignToBottom = True
            Color = clSilver
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              142.875000000000000000
              1899.708333333333000000)
            BandType = rbSummary
            object QRLabel10: TQRLabel
              Left = 568
              Top = 5
              Width = 145
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1502.833333333333000000
                13.229166666666670000
                383.645833333333300000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'QRLabel10'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              OnPrint = QRLabel10Print
              ParentFont = False
              Transparent = True
              WordWrap = True
              FontSize = 10
            end
            object QRShape3: TQRShape
              Left = 0
              Top = -3
              Width = 718
              Height = 6
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                15.875000000000000000
                0.000000000000000000
                -7.937500000000000000
                1899.708333333333000000)
              Shape = qrsHorLine
              VertAdjust = 0
            end
            object QRShape4: TQRShape
              Left = -5
              Top = 24
              Width = 736
              Height = 33
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                87.312500000000000000
                -13.229166666666670000
                63.500000000000000000
                1947.333333333333000000)
              Pen.Color = clWhite
              Shape = qrsRectangle
              VertAdjust = 0
            end
          end
        end
      end
    end
    object CalculoFac: TTabSheet
      Caption = 'Calculo Factura'
      ImageIndex = 3
      object ScrollBox2: TScrollBox
        Left = 0
        Top = 0
        Width = 793
        Height = 233
        TabOrder = 0
        object QRCalculoFac: TQuickRep
          Left = 0
          Top = 0
          Width = 794
          Height = 1123
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          DataSet = QCalculoFac
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Functions.Strings = (
            'PAGENUMBER'
            'COLUMNNUMBER'
            'REPORTTITLE')
          Functions.DATA = (
            '0'
            '0'
            #39#39)
          Options = [FirstPageHeader, LastPageFooter]
          Page.Columns = 1
          Page.Orientation = poPortrait
          Page.PaperSize = A4
          Page.Values = (
            100.000000000000000000
            2970.000000000000000000
            100.000000000000000000
            2100.000000000000000000
            100.000000000000000000
            100.000000000000000000
            0.000000000000000000)
          PrinterSettings.Copies = 1
          PrinterSettings.OutputBin = Auto
          PrinterSettings.Duplex = False
          PrinterSettings.FirstPage = 0
          PrinterSettings.LastPage = 0
          PrinterSettings.ExtendedDuplex = 0
          PrinterSettings.UseStandardprinter = False
          PrinterSettings.UseCustomBinCode = False
          PrinterSettings.CustomBinCode = 0
          PrinterSettings.UseCustomPaperCode = False
          PrinterSettings.CustomPaperCode = 0
          PrinterSettings.PrintMetaFile = False
          PrintIfEmpty = True
          SnapToGrid = True
          Units = MM
          Zoom = 100
          OnApplyPrinterSettings = QRCalculoFacApplyPrinterSettings
          PrevFormStyle = fsNormal
          PreviewInitialState = wsNormal
          object PageHeaderBand3: TQRBand
            Left = 38
            Top = 38
            Width = 718
            Height = 83
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            AlignToBottom = False
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ForceNewColumn = False
            ForceNewPage = False
            ParentFont = False
            Size.Values = (
              219.604166666666700000
              1899.708333333333000000)
            BandType = rbPageHeader
            object QRShape9: TQRShape
              Left = 0
              Top = 48
              Width = 718
              Height = 35
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                92.604166666666670000
                0.000000000000000000
                127.000000000000000000
                1899.708333333333000000)
              Brush.Color = clSilver
              Shape = qrsRectangle
              VertAdjust = 0
            end
            object QRLabel11: TQRLabel
              Left = 2
              Top = 56
              Width = 51
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                5.291666666666667000
                148.166666666666700000
                134.937500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'N'#250'mero'
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRLabel12: TQRLabel
              Left = 88
              Top = 56
              Width = 40
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                232.833333333333300000
                148.166666666666700000
                105.833333333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Fecha'
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRLabel14: TQRLabel
              Left = 184
              Top = 56
              Width = 46
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                486.833333333333300000
                148.166666666666700000
                121.708333333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Cliente'
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRLabel16: TQRLabel
              Left = 488
              Top = 56
              Width = 64
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1291.166666666667000000
                148.166666666666700000
                169.333333333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Base Imp.'
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRLabel17: TQRLabel
              Left = 632
              Top = 56
              Width = 58
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1672.166666666667000000
                148.166666666666700000
                153.458333333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Valor Iva'
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRLabel15: TQRLabel
              Left = 584
              Top = 56
              Width = 37
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1545.166666666667000000
                148.166666666666700000
                97.895833333333330000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = '% IVA'
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRShape7: TQRShape
              Left = 168
              Top = 48
              Width = 9
              Height = 41
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                108.479166666666700000
                444.500000000000000000
                127.000000000000000000
                23.812500000000000000)
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape8: TQRShape
              Left = 476
              Top = 48
              Width = 9
              Height = 41
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                108.479166666666700000
                1259.416666666667000000
                127.000000000000000000
                23.812500000000000000)
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRLabel22: TQRLabel
              Left = 144
              Top = 12
              Width = 231
              Height = 20
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                52.916666666666670000
                381.000000000000000000
                31.750000000000000000
                611.187500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Balance de facturaci'#243'n desde '
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              OnPrint = QRLabel22Print
              ParentFont = False
              Transparent = False
              WordWrap = True
              FontSize = 12
            end
          end
          object DetailBand2: TQRBand
            Left = 38
            Top = 121
            Width = 718
            Height = 18
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            AlignToBottom = False
            Color = clWhite
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              47.625000000000000000
              1899.708333333333000000)
            BandType = rbDetail
            object QRDBText32: TQRDBText
              Left = 0
              Top = 0
              Width = 81
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                0.000000000000000000
                0.000000000000000000
                214.312500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = QCalculoFac
              DataField = 'NumFac'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRDBText33: TQRDBText
              Left = 88
              Top = 0
              Width = 81
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                232.833333333333300000
                0.000000000000000000
                214.312500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = QCalculoFac
              DataField = 'FecFac'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRDBText34: TQRDBText
              Left = 184
              Top = 0
              Width = 65
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                486.833333333333300000
                0.000000000000000000
                171.979166666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = QCalculoFac
              DataField = 'CifCli'
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRDBText43: TQRDBText
              Left = 256
              Top = 0
              Width = 217
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                677.333333333333300000
                0.000000000000000000
                574.145833333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = QCalculoFac
              DataField = 'NomCli'
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRDBText44: TQRDBText
              Left = 584
              Top = 0
              Width = 41
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1545.166666666667000000
                0.000000000000000000
                108.479166666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = QCalculoFac
              DataField = 'PorIvaFac'
              OnPrint = QRDBText44Print
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRExpr12: TQRExpr
              Left = 632
              Top = 0
              Width = 81
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1672.166666666667000000
                0.000000000000000000
                214.312500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              OnPrint = QRExpr12Print
              ResetAfterPrint = False
              Transparent = False
              WordWrap = True
              Expression = 
                '((QCalculoFac.BasImpFac*((QCalculoFac.PorIvaFac/100)+1))-(QCalcu' +
                'loFac.BasImpFac))'
              FontSize = 10
            end
            object QRExpr13: TQRExpr
              Left = 488
              Top = 0
              Width = 89
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1291.166666666667000000
                0.000000000000000000
                235.479166666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              OnPrint = QRExpr13Print
              ResetAfterPrint = False
              Transparent = False
              WordWrap = True
              Expression = '(QCalculoFac.BasImpFac)+'#39' '#8364#39
              FontSize = 10
            end
            object QRShape5: TQRShape
              Left = 476
              Top = 0
              Width = 9
              Height = 19
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                50.270833333333330000
                1259.416666666667000000
                0.000000000000000000
                23.812500000000000000)
              Shape = qrsVertLine
              VertAdjust = 0
            end
            object QRShape6: TQRShape
              Left = 168
              Top = 0
              Width = 9
              Height = 19
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                50.270833333333330000
                444.500000000000000000
                0.000000000000000000
                23.812500000000000000)
              Shape = qrsVertLine
              VertAdjust = 0
            end
          end
          object SummaryBand2: TQRBand
            Left = 38
            Top = 139
            Width = 718
            Height = 67
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            AlignToBottom = False
            Color = clWhite
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              177.270833333333300000
              1899.708333333333000000)
            BandType = rbSummary
            object QRLabel18: TQRLabel
              Left = 204
              Top = 16
              Width = 121
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                539.750000000000000000
                42.333333333333330000
                320.145833333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Base total facturada:'
              Color = clWhite
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRLabel19: TQRLabel
              Left = 201
              Top = 40
              Width = 124
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                531.812500000000000000
                105.833333333333300000
                328.083333333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'I.V.A. total facturado:'
              Color = clWhite
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRLabel20: TQRLabel
              Left = 336
              Top = 16
              Width = 70
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                889.000000000000000000
                42.333333333333330000
                185.208333333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'QRLabel20'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              OnPrint = QRLabel20Print
              ParentFont = False
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRLabel21: TQRLabel
              Left = 336
              Top = 40
              Width = 70
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                889.000000000000000000
                105.833333333333300000
                185.208333333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'QRLabel21'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              OnPrint = QRLabel21Print
              ParentFont = False
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
          end
          object PageFooterBand1: TQRBand
            Left = 38
            Top = 206
            Width = 718
            Height = 40
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            AlignToBottom = False
            Color = clWhite
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              105.833333333333300000
              1899.708333333333000000)
            BandType = rbPageFooter
            object QRSysData2: TQRSysData
              Left = 632
              Top = 16
              Width = 8
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1672.166666666667000000
                42.333333333333330000
                21.166666666666670000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              Color = clWhite
              Data = qrsPageNumber
              Transparent = False
              FontSize = 10
            end
            object QRLabel23: TQRLabel
              Left = 584
              Top = 16
              Width = 41
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1545.166666666667000000
                42.333333333333330000
                108.479166666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'P'#225'gina'
              Color = clWhite
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRLabel24: TQRLabel
              Left = 21
              Top = 8
              Width = 123
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                55.562500000000000000
                21.166666666666670000
                325.437500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Fecha de impresi'#243'n: '
              Color = clWhite
              Transparent = False
              WordWrap = True
              FontSize = 10
            end
            object QRSysData3: TQRSysData
              Left = 149
              Top = 8
              Width = 119
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                394.229166666666700000
                21.166666666666670000
                314.854166666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              Color = clWhite
              Data = qrsDateTime
              Transparent = False
              FontSize = 10
            end
          end
        end
      end
    end
  end
  object QFacturas: TwwQuery
    Active = True
    DatabaseName = 'Jardines'
    SQL.Strings = (
      
        'SELECT F.NumFac, F.CifCli, F.FecFac, F.BasImpFac, F.PorIvaFac, F' +
        '.ObsFac,'
      'C.NomCli, C.DirCli, C.CPCli, C.PobCli, C.ProCli'
      'FROM Clientes C, Facturas F'
      'where F.CifCli = C.CifCli')
    ValidateWithMask = True
    Left = 128
    object QFacturasNumFac: TStringField
      FieldName = 'NumFac'
      Origin = 'JARDINES."Facturas.DB".NumFac'
      Size = 10
    end
    object QFacturasCifCli: TStringField
      FieldName = 'CifCli'
      Origin = 'JARDINES."Facturas.DB".CifCli'
      Size = 9
    end
    object QFacturasFecFac: TDateField
      FieldName = 'FecFac'
      Origin = 'JARDINES."Facturas.DB".FecFac'
    end
    object QFacturasBasImpFac: TCurrencyField
      FieldName = 'BasImpFac'
      Origin = 'JARDINES."Facturas.DB".BasImpFac'
    end
    object QFacturasPorIvaFac: TFloatField
      FieldName = 'PorIvaFac'
      Origin = 'JARDINES."Facturas.DB".PorIvaFac'
    end
    object QFacturasObsFac: TMemoField
      FieldName = 'ObsFac'
      Origin = 'JARDINES."Facturas.DB".ObsFac'
      BlobType = ftMemo
      Size = 100
    end
    object QFacturasNomCli: TStringField
      FieldName = 'NomCli'
      Origin = 'JARDINES."Clientes.DB".NomCli'
      Size = 80
    end
    object QFacturasDirCli: TStringField
      FieldName = 'DirCli'
      Origin = 'JARDINES."Clientes.DB".DirCli'
      Size = 50
    end
    object QFacturasCPCli: TFloatField
      FieldName = 'CPCli'
      Origin = 'JARDINES."Clientes.DB".CpCli'
    end
    object QFacturasPobCli: TStringField
      FieldName = 'PobCli'
      Origin = 'JARDINES."Clientes.DB".PobCli'
      Size = 50
    end
    object QFacturasProCli: TStringField
      FieldName = 'ProCli'
      Origin = 'JARDINES."Clientes.DB".ProCli'
      Size = 30
    end
  end
  object TGeneral: TwwTable
    Active = True
    DatabaseName = 'Jardines'
    TableName = 'general.DB'
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 16
  end
  object DSGeneral: TwwDataSource
    DataSet = TGeneral
    Left = 48
  end
  object DSQuery: TwwDataSource
    DataSet = QFacturas
    Left = 160
  end
  object TDetalle: TwwTable
    Active = True
    DatabaseName = 'Jardines'
    IndexFieldNames = 'NumFac'
    MasterFields = 'NumFac'
    MasterSource = DSQuery
    TableName = 'DetalleFac.DB'
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 200
    object TDetalleNumFac: TStringField
      FieldName = 'NumFac'
      Size = 10
    end
    object TDetalleNumDetFac: TFloatField
      FieldName = 'NumDetFac'
    end
    object TDetalleConDetFac: TStringField
      FieldName = 'ConDetFac'
      Size = 100
    end
    object TDetalleCanDetFac: TFloatField
      FieldName = 'CanDetFac'
    end
    object TDetallePreUniDetFac: TFloatField
      FieldName = 'PreUniDetFac'
      currency = True
    end
  end
  object DSDetalle: TwwDataSource
    DataSet = TDetalle
    Left = 232
  end
  object QAlbaranes: TwwQuery
    Active = True
    DatabaseName = 'Jardines'
    SQL.Strings = (
      
        'SELECT A.NumAlb, A.CifCli, A.FecAlb, A.BasImpAlb, A.PorIvaAlb, A' +
        '.ObsAlb,'
      'C.NomCli, C.DirCli, C.CPCli, C.PobCli, C.ProCli'
      'FROM Clientes C, Albaranes A'
      'where A.CifCli = C.CifCli')
    ValidateWithMask = True
    Left = 384
    object QAlbaranesNumAlb: TStringField
      FieldName = 'NumAlb'
      Origin = 'JARDINES."Albaranes.DB".NumAlb'
      Size = 10
    end
    object QAlbaranesCifCli: TStringField
      FieldName = 'CifCli'
      Origin = 'JARDINES."Albaranes.DB".CifCli'
      Size = 9
    end
    object QAlbaranesFecAlb: TDateField
      FieldName = 'FecAlb'
      Origin = 'JARDINES."Albaranes.DB".FecAlb'
    end
    object QAlbaranesBasImpAlb: TFloatField
      FieldName = 'BasImpAlb'
      Origin = 'JARDINES."Albaranes.DB".BasImpAlb'
      currency = True
    end
    object QAlbaranesPorIvaAlb: TFloatField
      FieldName = 'PorIvaAlb'
      Origin = 'JARDINES."Albaranes.DB".PorIvaAlb'
    end
    object QAlbaranesObsAlb: TMemoField
      FieldName = 'ObsAlb'
      Origin = 'JARDINES."Albaranes.DB".ObsAlb'
      BlobType = ftMemo
      Size = 100
    end
    object QAlbaranesNomCli: TStringField
      FieldName = 'NomCli'
      Origin = 'JARDINES."Clientes.DB".NomCli'
      Size = 80
    end
    object QAlbaranesDirCli: TStringField
      FieldName = 'DirCli'
      Origin = 'JARDINES."Clientes.DB".DirCli'
      Size = 50
    end
    object QAlbaranesCPCli: TFloatField
      FieldName = 'CPCli'
      Origin = 'JARDINES."Clientes.DB".CpCli'
    end
    object QAlbaranesPobCli: TStringField
      FieldName = 'PobCli'
      Origin = 'JARDINES."Clientes.DB".PobCli'
      Size = 50
    end
    object QAlbaranesProCli: TStringField
      FieldName = 'ProCli'
      Origin = 'JARDINES."Clientes.DB".ProCli'
      Size = 30
    end
  end
  object DSQAlbaranes: TwwDataSource
    DataSet = QAlbaranes
    Left = 416
  end
  object TDetalleAlb: TwwTable
    Active = True
    DatabaseName = 'Jardines'
    IndexFieldNames = 'NumAlb'
    MasterFields = 'NumAlb'
    MasterSource = DSQAlbaranes
    TableName = 'DetalleAlb.DB'
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 472
    object TDetalleAlbNumAlb: TStringField
      FieldName = 'NumAlb'
      Size = 10
    end
    object TDetalleAlbNumDetAlb: TFloatField
      FieldName = 'NumDetAlb'
    end
    object TDetalleAlbConDetAlb: TStringField
      FieldName = 'ConDetAlb'
      Size = 100
    end
    object TDetalleAlbCanDetAlb: TFloatField
      FieldName = 'CanDetAlb'
    end
    object TDetalleAlbPreUniDetAlb: TFloatField
      FieldName = 'PreUniDetAlb'
    end
  end
  object DSDetalleAlb: TwwDataSource
    DataSet = TDetalleAlb
    Left = 504
  end
  object PrintDialog1: TPrintDialog
    Copies = 1
    Left = 576
    Top = 8
  end
  object DSClientes: TwwDataSource
    Left = 712
  end
  object TClientes: TwwQuery
    Active = True
    DatabaseName = 'Jardines'
    SQL.Strings = (
      'Select * from Clientes')
    ValidateWithMask = True
    Left = 672
    object TClientesCifCli: TStringField
      DisplayWidth = 9
      FieldName = 'CifCli'
      Origin = 'JARDINES."clientes.DB".CifCli'
      Size = 9
    end
    object TClientesNomCli: TStringField
      DisplayWidth = 80
      FieldName = 'NomCli'
      Origin = 'JARDINES."clientes.DB".NomCli'
      Size = 80
    end
    object TClientesDirCli: TStringField
      DisplayWidth = 50
      FieldName = 'DirCli'
      Origin = 'JARDINES."clientes.DB".DirCli'
      Size = 50
    end
    object TClientesCpCli: TFloatField
      DisplayWidth = 10
      FieldName = 'CpCli'
      Origin = 'JARDINES."clientes.DB".CpCli'
    end
    object TClientesPobCli: TStringField
      DisplayWidth = 50
      FieldName = 'PobCli'
      Origin = 'JARDINES."clientes.DB".PobCli'
      Size = 50
    end
    object TClientesProCli: TStringField
      DisplayWidth = 30
      FieldName = 'ProCli'
      Origin = 'JARDINES."clientes.DB".ProCli'
      Size = 30
    end
    object TClientesTel1Cli: TFloatField
      DisplayWidth = 10
      FieldName = 'Tel1Cli'
      Origin = 'JARDINES."clientes.DB".Tel1Cli'
    end
    object TClientesTel2Cli: TFloatField
      DisplayWidth = 10
      FieldName = 'Tel2Cli'
      Origin = 'JARDINES."clientes.DB".Tel2Cli'
    end
    object TClientesFaxCli: TFloatField
      DisplayWidth = 10
      FieldName = 'FaxCli'
      Origin = 'JARDINES."clientes.DB".FaxCli'
    end
    object TClientesEmaCli: TStringField
      DisplayWidth = 80
      FieldName = 'EmaCli'
      Origin = 'JARDINES."clientes.DB".EmaCli'
      Size = 80
    end
    object TClientesWebCli: TStringField
      DisplayWidth = 80
      FieldName = 'WebCli'
      Origin = 'JARDINES."clientes.DB".WebCli'
      Size = 80
    end
    object TClientesObsCli: TMemoField
      DisplayWidth = 10
      FieldName = 'ObsCli'
      Origin = 'JARDINES."clientes.DB".ObsCli'
      BlobType = ftMemo
      Size = 100
    end
    object TClientesTipcli: TStringField
      DisplayWidth = 1
      FieldName = 'Tipcli'
      Origin = 'JARDINES."clientes.DB".Tipcli'
      Size = 1
    end
    object TClientesForPagCli: TStringField
      DisplayWidth = 1
      FieldName = 'ForPagCli'
      Origin = 'JARDINES."clientes.DB".ForPagCli'
      Size = 1
    end
    object TClientesEntCueCli: TFloatField
      DisplayWidth = 10
      FieldName = 'EntCueCli'
      Origin = 'JARDINES."clientes.DB".EntCueCli'
      DisplayFormat = '0000'
    end
    object TClientesOfiCueCli: TFloatField
      DisplayWidth = 10
      FieldName = 'OfiCueCli'
      Origin = 'JARDINES."clientes.DB".OfiCueCli'
      DisplayFormat = '0000'
    end
    object TClientesDCCueCli: TFloatField
      DisplayWidth = 10
      FieldName = 'DCCueCli'
      Origin = 'JARDINES."clientes.DB".DCCueCli'
      DisplayFormat = '00'
    end
    object TClientesNumCueCli: TFloatField
      DisplayWidth = 10
      FieldName = 'NumCueCli'
      Origin = 'JARDINES."clientes.DB".NumCueCli'
      DisplayFormat = '0000000000'
    end
    object TClientesNomEntCli: TStringField
      DisplayWidth = 50
      FieldName = 'NomEntCli'
      Origin = 'JARDINES."clientes.DB".NomEntCli'
      Size = 50
    end
  end
  object QCalculoFac: TwwQuery
    Active = True
    DatabaseName = 'Jardines'
    SQL.Strings = (
      
        'SELECT F.NumFac, F.CifCli, F.FecFac, F.BasImpFac,F.PorIvaFac, C.' +
        'NomCli'
      'FROM Clientes C, Facturas F'
      'where F.CifCli = C.CifCli')
    ValidateWithMask = True
    Left = 64
    Top = 336
    object QCalculoFacNumFac: TStringField
      FieldName = 'NumFac'
      Origin = 'JARDINES."Facturas.DB".NumFac'
      Size = 10
    end
    object QCalculoFacCifCli: TStringField
      FieldName = 'CifCli'
      Origin = 'JARDINES."Facturas.DB".CifCli'
      Size = 9
    end
    object QCalculoFacFecFac: TDateField
      FieldName = 'FecFac'
      Origin = 'JARDINES."Facturas.DB".FecFac'
    end
    object QCalculoFacBasImpFac: TCurrencyField
      FieldName = 'BasImpFac'
      Origin = 'JARDINES."Facturas.DB".BasImpFac'
      DisplayFormat = '#.00'
    end
    object QCalculoFacNomCli: TStringField
      FieldName = 'NomCli'
      Origin = 'JARDINES."Clientes.DB".NomCli'
      Size = 80
    end
    object QCalculoFacPorIvaFac: TFloatField
      FieldName = 'PorIvaFac'
      Origin = 'JARDINES."Facturas.DB".PorIvaFac'
      Precision = 2
    end
  end
  object DSCalculoFac: TwwDataSource
    DataSet = QCalculoFac
    Left = 104
    Top = 336
  end
end
