import 'package:flutter/material.dart';
import 'package:flutter_application_1/bargraph/bar_graph.dart';

class Analytics extends StatefulWidget {
  @override
  State<Analytics> createState() => _AnalyticsState();
}

class _AnalyticsState extends State<Analytics> {
  var height, width;

  List<double> monthlySummary = [
    40.0,
    49.0,
    55.0,
    100.0,
    120,
    122,
    150,
    160,
    165,
    180,
    188,
    198
  ];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.pink,
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.pink,
              ),
              height: height * 0.30,
              width: width,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: InkWell(
                          onTap: () {
                            // Open drawer when sort icon is tapped
                            //Scaffold.of(context).openDrawer();
                          },
                          child: const Icon(
                            Icons.sort,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    'assess/images/CURRENT1.png',
                    height: 100,
                    width: 700,
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
              height: height * 0.75,
              width: width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
              ),
              child: Center(
                child: SizedBox(
                  height: 400,
                  child: MyBarGraph(
                    monthlySummary: monthlySummary,
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
