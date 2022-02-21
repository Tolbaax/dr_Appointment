
import 'package:flutter/material.dart';

class DrTimeModel{
  String? time;
  Color? color;
  Color? textColor;
  Color? iconColor;
  DrTimeModel({this.time,this.color,this.textColor,this.iconColor});
}

List<DrTimeModel> morningTime = [
  DrTimeModel(time: '08:30 Am',color: Colors.white),
  DrTimeModel(time: '09:30 Am',color: Colors.teal.shade600,textColor: Colors.white,iconColor: Colors.white),
  DrTimeModel(time: '10:00 Am',color: Colors.white),
  DrTimeModel(time: '10:30 Am',color: Colors.white),
  DrTimeModel(time: '11:00 Am',color: Colors.white),
  DrTimeModel(time: '11:30 Am',color: Colors.white),

];

List<DrTimeModel> eveningTime = [
  DrTimeModel(time: '05:30 Pm',color: Colors.teal.shade600,textColor: Colors.white,iconColor: Colors.white),
  DrTimeModel(time: '06:00 Pm',color: Colors.white),
  DrTimeModel(time: '07:00 Pm',color: Colors.white),
  DrTimeModel(time: '08:30 Pm',color: Colors.white),
  DrTimeModel(time: '9:00 Pm',color: Colors.white),
  DrTimeModel(time: '10:30 Pm',color: Colors.white),

];