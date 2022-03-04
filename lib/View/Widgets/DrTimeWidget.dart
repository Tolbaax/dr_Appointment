
import 'package:de_appointment/Model/DrTimeModel.dart';
import 'package:flutter/material.dart';
class DrTimeWidget extends StatelessWidget {
  const DrTimeWidget({Key? key,this.drTime, required this.secTime}) : super(key: key);
  final DrTimeModel? drTime;
  final bool secTime;

  @override
  Widget build(BuildContext context) {
    return  Container(
    margin:const EdgeInsets.only(left: 20, top: 15),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
      color: secTime?Colors.teal.shade600:Colors.white,
    ),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(
        padding:const EdgeInsets.only(right: 5),
    child: Icon(Icons.access_time_rounded,size: 19,color: secTime?Colors.white:Colors.black,),
    ),
    Text(drTime!.time!,style: TextStyle(fontSize: 16,color: secTime?Colors.white:Colors.black),)
],
),
);
  }
}

