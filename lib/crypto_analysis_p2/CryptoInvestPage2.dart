import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CryptoInvestPage2 extends StatefulWidget {
  const CryptoInvestPage2({Key? key}) : super(key: key);

  @override
  State<CryptoInvestPage2> createState() => _CryptoInvestPage2State();
}

class _CryptoInvestPage2State extends State<CryptoInvestPage2>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: const Text("Invest"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.tune),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'BitCoin',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  '\$697.789',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey,
                    ),
                    Text(
                      '17.75% this week',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: LineChart(
                      LineChartData(
                        lineBarsData: [
                          LineChartBarData(
                            spots: _lineData,
                            color: Colors.green,
                            dotData: FlDotData(
                              show: false,
                            ),
                            barWidth: 5,
                          ),
                        ],
                        gridData: FlGridData(
                          show: true,
                          drawVerticalLine: false,
                          getDrawingHorizontalLine: (v) {
                            return FlLine(
                                color: Colors.grey[400], strokeWidth: 1);
                          },
                          horizontalInterval: 0.8,
                        ),
                        titlesData: FlTitlesData(
                          bottomTitles: AxisTitles(),
                          rightTitles: AxisTitles(),
                          topTitles: AxisTitles(
                            sideTitles: SideTitles(
                                reservedSize: 64,
                                showTitles: true,
                                getTitlesWidget: (v, _) {
                                  if (v == 0.0) {
                                    return Text("7:30");
                                  } else if (v == 1.0) {
                                    return Text("1:40");
                                  } else if (v == 2.0) {
                                    return Text("6:40");
                                  } else if (v == 3.0) {
                                    return Text("8:30");
                                  } else if (v == 4.0) {
                                    return Text("10:40");
                                  } else if (v == 5.0) {
                                    return Text("10:40");
                                  } else if (v == 6.0) {
                                    return Text("10:40");
                                  } else if (v == 7.0) {
                                    return Text("11:40");
                                  } else {
                                    return Text("??:??");
                                  }
                                }),
                          ),
                        ),
                        borderData: FlBorderData(
                          show: false,
                        ),
                        maxY: 43.0,
                        minY: 38.0,
                      ),
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                ),
                TabBar(
                    labelColor: Colors.black,
                    indicatorColor: Colors.teal,
                    indicatorSize: TabBarIndicatorSize.label,
                    controller: _tabController,
                    tabs: const [
                      Tab(
                        text: "1h",
                      ),
                      Tab(
                        text: "1d",
                      ),
                      Tab(
                        text: "7d",
                      ),
                      Tab(
                        text: "30d",
                      ),
                      Tab(
                        text: "1y",
                      ),
                      Tab(
                        text: "all",
                      )
                    ]),
                const SizedBox(
                  height: 16,
                ),
              ],
            )),
            const SizedBox(
              height: 16,
            ),
            Container(
              height: 72,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.black,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("ADA"),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Cardano",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        "\$0.0882934",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.arrow_drop_up,
                            color: Colors.green,
                          ),
                          Text(
                            "11.83%",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 84,
              decoration: const ShapeDecoration(
                shape: StadiumBorder(),
                color: Colors.black,
              ),
              child: const Center(
                child: Text(
                  "Trade Bitcon",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  late TabController _tabController;

  List<FlSpot> _lineData = [
    FlSpot(0.0, 38.0),
    FlSpot(1.0, 41.8),
    FlSpot(2.0, 40.5),
    FlSpot(3.0, 42.3),
    FlSpot(4.0, 39.0),
    FlSpot(5.0, 40.4),
    FlSpot(6.0, 41.2),
    FlSpot(7.0, 38.1),
    FlSpot(7.0, 42.1),
    FlSpot(8.0, 43.1),
  ];
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }
}
