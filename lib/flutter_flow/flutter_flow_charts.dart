import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

export 'package:fl_chart/fl_chart.dart' show BarChartAlignment;

class FFBarChartData {
  const FFBarChartData({
    required this.yData,
    required this.color,
  });

  final List<double> yData;
  final Color color;
}

class ChartStylingInfo {
  const ChartStylingInfo({
    this.backgroundColor = Colors.transparent,
    this.showBorder = false,
  });

  final Color backgroundColor;
  final bool showBorder;
}

class AxisBounds {
  const AxisBounds({
    this.minX,
    this.maxX,
    this.minY,
    this.maxY,
  });

  final double? minX;
  final double? maxX;
  final double? minY;
  final double? maxY;
}

class AxisLabelInfo {
  const AxisLabelInfo({
    this.showLabels = false,
    this.labelTextStyle,
    this.reservedSize = 24,
  });

  final bool showLabels;
  final TextStyle? labelTextStyle;
  final double reservedSize;
}

class FlutterFlowBarChart extends StatelessWidget {
  const FlutterFlowBarChart({
    super.key,
    required this.barData,
    required this.xLabels,
    this.barWidth = 12,
    this.barBorderRadius,
    this.groupSpace = 8,
    this.alignment = BarChartAlignment.spaceAround,
    this.chartStylingInfo = const ChartStylingInfo(),
    this.axisBounds = const AxisBounds(),
    this.xAxisLabelInfo = const AxisLabelInfo(),
    this.yAxisLabelInfo = const AxisLabelInfo(),
  });

  final List<FFBarChartData> barData;
  final List<String> xLabels;
  final double barWidth;
  final BorderRadius? barBorderRadius;
  final double groupSpace;
  final BarChartAlignment alignment;
  final ChartStylingInfo chartStylingInfo;
  final AxisBounds axisBounds;
  final AxisLabelInfo xAxisLabelInfo;
  final AxisLabelInfo yAxisLabelInfo;

  @override
  Widget build(BuildContext context) {
    final data = barData.isEmpty ? const <double>[] : barData.first.yData;
    final color = barData.isEmpty ? Theme.of(context).colorScheme.primary : barData.first.color;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: chartStylingInfo.backgroundColor,
        border: chartStylingInfo.showBorder ? Border.all(color: Theme.of(context).dividerColor) : null,
      ),
      child: BarChart(
        BarChartData(
          minY: axisBounds.minY,
          maxY: axisBounds.maxY,
          alignment: alignment,
          borderData: FlBorderData(show: chartStylingInfo.showBorder),
          gridData: const FlGridData(show: false),
          titlesData: FlTitlesData(
            topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: yAxisLabelInfo.showLabels,
                reservedSize: yAxisLabelInfo.reservedSize,
              ),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: xAxisLabelInfo.showLabels,
                reservedSize: xAxisLabelInfo.reservedSize,
                getTitlesWidget: (value, meta) {
                  final index = value.toInt();
                  if (index < 0 || index >= xLabels.length) {
                    return const SizedBox.shrink();
                  }
                  return Text(xLabels[index], style: xAxisLabelInfo.labelTextStyle);
                },
              ),
            ),
          ),
          barGroups: [
            for (var i = 0; i < data.length; i++)
              BarChartGroupData(
                x: i,
                barsSpace: groupSpace,
                barRods: [
                  BarChartRodData(
                    toY: data[i],
                    width: barWidth,
                    color: color,
                    borderRadius: barBorderRadius,
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
