import 'package:flutter_application_1/bargraph/indi_bar.dart';

class BarData {
  final double janFo;
  final double febFo;
  final double marFo;
  final double aprFo;
  final double mayFo;
  final double junFo;
  final double julFo;
  final double augFo;
  final double sepFo;
  final double octFo;
  final double novFo;
  final double decFo;

  BarData(
      {required this.janFo,
      required this.febFo,
      required this.marFo,
      required this.aprFo,
      required this.mayFo,
      required this.junFo,
      required this.julFo,
      required this.augFo,
      required this.sepFo,
      required this.octFo,
      required this.novFo,
      required this.decFo});
  List<IndividualBar> barData = [];

  void initialixeBarData() {
    barData = [
      IndividualBar(x: 0, y: janFo),
      IndividualBar(x: 1, y: febFo),
      IndividualBar(x: 2, y: marFo),
      IndividualBar(x: 3, y: aprFo),
      IndividualBar(x: 4, y: mayFo),
      IndividualBar(x: 5, y: junFo),
      IndividualBar(x: 6, y: julFo),
      IndividualBar(x: 7, y: augFo),
      IndividualBar(x: 8, y: sepFo),
      IndividualBar(x: 9, y: octFo),
      IndividualBar(x: 10, y: novFo),
      IndividualBar(x: 11, y: decFo),
    ];
  }
}
