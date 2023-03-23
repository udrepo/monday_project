import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:monday_project/config/monday_colors.dart';
import 'package:monday_project/config/monday_text_styles.dart';

import '../widgets/big_blue_btn_widget.dart';

class StudyScreen extends StatelessWidget {
  const StudyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> dayOfWeeks = [
      '13.03',
      '14.03',
      '15.03',
      '16.03',
      '17.03',
      '18.03',
    //  '19.03'
    ];

    return Column(
      children: [
        Row(
          children: [
            Text(
              'ҰБТ Monday',
              style: MondayTS.blueS24W600,
            ),
            const Spacer(),
            CircleAvatar(
              radius: 30,
              backgroundColor: MondayColors.kBlueColor,
              child: CircleAvatar(
                radius: 28,
                backgroundColor: Colors.white,
                child: Text(
                  'B',
                  style: MondayTS.blackS24W600,
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              color: MondayColors.kLightGrayBgColor),
          child: Text(
            'ЖҰМА 15, ҚАҢТАР',
            style: MondayTS.blackS15W400,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        //Graph
        Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              color: MondayColors.kLightGrayBgColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    print('was pressed');
                  },
                  icon: SvgPicture.asset('assets/icons/ic_arrow_left.svg')),
              SizedBox(
                child: Column(
                  children: [
                    Text('13.03.2022 - 19.03.2023'),
                    const SizedBox(
                      height: 10,
                    ),
           //      _BarChart()
                    Row(
                      children: [
                        for(var i in dayOfWeeks)
                          LayoutBuilder(
                            builder: (context, constraints) {
                              return Column(children: [
                                Container(
                                  width: 10,
                                  height: 90,
                                  decoration: BoxDecoration(
                                      color: MondayColors.kBlueColor
                                  ),),
                                SizedBox(height: 9,),
                                Text(i)
                              ],);
                            }
                          )
                      ],
                    )
                  ],
                ),
              ),
              IconButton(
                  onPressed: () {
                    print('was pressed');
                  },
                  iconSize: 15,
                  icon: SvgPicture.asset(
                    'assets/icons/ic_arrow_right.svg',
                  )),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        BigBlueButton(
          title: 'Математика',
          textStyle: MondayTS.whiteS18W400,
        ),
        SizedBox(
          height: 15,
        ),
        BigBlueButton(
          title: 'Физика',
          textStyle: MondayTS.whiteS18W400,
        ),
        SizedBox(height: 15),
        BigBlueButton(
          title: 'Математика формулалары',
          textStyle: MondayTS.whiteS18W400,
        ),
        SizedBox(height: 15),
        BigBlueButton(
          title: 'Физика формулалары',
          textStyle: MondayTS.whiteS18W400,
        ),
      ],
    );
  }
}


class _BarChart extends StatelessWidget {
  const _BarChart();

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        barTouchData: barTouchData,
        titlesData: titlesData,
        borderData: borderData,
        barGroups: barGroups,
        gridData: FlGridData(show: false),
        alignment: BarChartAlignment.spaceAround,
        maxY: 20,
      ),
    );
  }

  BarTouchData get barTouchData => BarTouchData(
    enabled: false,
    touchTooltipData: BarTouchTooltipData(
      tooltipBgColor: Colors.transparent,
      tooltipPadding: EdgeInsets.zero,
      tooltipMargin: 8,
      getTooltipItem: (
          BarChartGroupData group,
          int groupIndex,
          BarChartRodData rod,
          int rodIndex,
          ) {
        return BarTooltipItem(
          rod.toY.round().toString(),
          const TextStyle(
            color: MondayColors.kBlueColor,
            fontWeight: FontWeight.bold,
          ),
        );
      },
    ),
  );

  Widget getTitles(double value, TitleMeta meta) {
    final style = TextStyle(
      color: MondayColors.kBlueColor,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'Mn';
        break;
      case 1:
        text = 'Te';
        break;
      case 2:
        text = 'Wd';
        break;
      case 3:
        text = 'Tu';
        break;
      case 4:
        text = 'Fr';
        break;
      case 5:
        text = 'St';
        break;
      case 6:
        text = 'Sn';
        break;
      default:
        text = '';
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 4,
      child: Text(text, style: style),
    );
  }

  FlTitlesData get titlesData => FlTitlesData(
    show: true,
    bottomTitles: AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,
        reservedSize: 30,
        getTitlesWidget: getTitles,
      ),
    ),
    leftTitles: AxisTitles(
      sideTitles: SideTitles(showTitles: false),
    ),
    topTitles: AxisTitles(
      sideTitles: SideTitles(showTitles: false),
    ),
    rightTitles: AxisTitles(
      sideTitles: SideTitles(showTitles: false),
    ),
  );

  FlBorderData get borderData => FlBorderData(
    show: false,
  );

  LinearGradient get _barsGradient => LinearGradient(
    colors: [
      MondayColors.kGreenColor,
      MondayColors.kBlueColor,
    ],
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
  );

  List<BarChartGroupData> get barGroups => [
    BarChartGroupData(
      x: 0,
      barRods: [
        BarChartRodData(
          toY: 8,
          gradient: _barsGradient,
        )
      ],
      showingTooltipIndicators: [0],
    ),
    BarChartGroupData(
      x: 1,
      barRods: [
        BarChartRodData(
          toY: 10,
          gradient: _barsGradient,
        )
      ],
      showingTooltipIndicators: [0],
    ),
    BarChartGroupData(
      x: 2,
      barRods: [
        BarChartRodData(
          toY: 14,
          gradient: _barsGradient,
        )
      ],
      showingTooltipIndicators: [0],
    ),
    BarChartGroupData(
      x: 3,
      barRods: [
        BarChartRodData(
          toY: 15,
          gradient: _barsGradient,
        )
      ],
      showingTooltipIndicators: [0],
    ),
    BarChartGroupData(
      x: 4,
      barRods: [
        BarChartRodData(
          toY: 13,
          gradient: _barsGradient,
        )
      ],
      showingTooltipIndicators: [0],
    ),
    BarChartGroupData(
      x: 5,
      barRods: [
        BarChartRodData(
          toY: 10,
          gradient: _barsGradient,
        )
      ],
      showingTooltipIndicators: [0],
    ),
    BarChartGroupData(
      x: 6,
      barRods: [
        BarChartRodData(
          toY: 16,
          gradient: _barsGradient,
        )
      ],
      showingTooltipIndicators: [0],
    ),
  ];
}

class BarChartSample3 extends StatefulWidget {
  const BarChartSample3({super.key});

  @override
  State<StatefulWidget> createState() => BarChartSample3State();
}

class BarChartSample3State extends State<BarChartSample3> {
  @override
  Widget build(BuildContext context) {
    return const AspectRatio(
      aspectRatio: 1.6,
      child: _BarChart(),
    );
  }
}
