
import 'package:flutter/material.dart';

class DataTimeModel{
  String? day;
  int? month;
  Color? color;
  Color? textColor;
  DataTimeModel({this.color,this.day,this.month,this.textColor});
}

List<DataTimeModel> dataTime = [
  DataTimeModel(day: 'Tue', month: 13, color: Colors.teal.shade600, textColor: Colors.white),
  DataTimeModel(day: 'Wed', month: 14, color: Colors.white),
  DataTimeModel(day: 'Thu', month: 15, color: Colors.white),
  DataTimeModel(day: 'Fri', month: 16, color: Colors.white),
  DataTimeModel(day: 'Sat', month: 17, color: Colors.white),
  DataTimeModel(day: 'Sun', month: 18, color: Colors.white),
  DataTimeModel(day: 'Mon', month: 19, color: Colors.white),
];