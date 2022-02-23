
import 'package:de_appointment/Model/DataTimeModel.dart';
import 'package:flutter/material.dart';

class DataTimeWidget extends StatelessWidget {
  const DataTimeWidget({Key? key, this.dataTime, required this.active}) : super(key: key);
  final DataTimeModel? dataTime;
  final bool active;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,width: 60,
      margin:const EdgeInsets.only(left: 20,top: 20),
      decoration: BoxDecoration(
        color: active? Colors.teal.shade600:Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Text(dataTime!.daysNum!.toString(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: active?Colors.white:Colors.black),),
          const SizedBox(height: 15,),
          Text(dataTime!.dayStr!,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: active?Colors.white:Colors.black))
        ],
      ),
    );
  }
}
