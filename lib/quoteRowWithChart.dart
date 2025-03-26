import 'package:app_family_materials/family_textStyles.dart';
import 'package:app_family_materials/flutter_family_materials.dart';
import 'package:flutter/material.dart';

class QuoteRowWithChart extends StatefulWidget {
  final String stockName;
  final String market;
  final String stockCode;
  final String nominal;
  final String perChange;
  final List<ChartPoint> chartData;

  const QuoteRowWithChart({
    super.key,
    required this.stockName,
    required this.market,
    required this.stockCode,
    required this.nominal,
    required this.perChange,
    required this.chartData,
  });

  @override
  QuoteRowWithChartState createState() => QuoteRowWithChartState();
}

class QuoteRowWithChartState extends State<QuoteRowWithChart> {
  @override
  Widget build(BuildContext context) {
    Color upDownColor;
    if (widget.perChange.startsWith('+')) {
      upDownColor = FamilyColors.success600;
    } else {
      upDownColor = FamilyColors.error600;
    }
    return LayoutBuilder(
      builder: (context, constraints) {
        return IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _buildStockInfo(),
              Padding(
                padding: EdgeInsets.only(top: 2),
                child: MiniChart(
                  data: widget.chartData,
                  width: 64,
                  height: 40,
                  lineColor: upDownColor,
                  // lineWidth: 1.5,
                ),
              ),
              _buildPriceCol(upDownColor),
            ],
          ),
        );
      },
    );
  }

  Widget _buildStockInfo() {
    return ConstrainedBox(
      constraints: BoxConstraints(minWidth: 120),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(widget.stockName, style: TextStyle(fontSize: 14, height: 1.2)),
          Row(
            children: [
              Text(widget.market, style: TextStyle(color: Colors.blue, fontSize: 12, height: 1)),
              Text(widget.stockCode, style: TextStyle(color: FamilyColors.neutral90, fontSize: 12, height: 1)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPriceCol(Color color) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Text(widget.nominal, style: TextStyle(fontSize: 16, color: color, height: 1)),
        Text(widget.perChange, style: TextStyle(fontSize: 14, color: color, height: 1)),
      ],
    );
  }
}
