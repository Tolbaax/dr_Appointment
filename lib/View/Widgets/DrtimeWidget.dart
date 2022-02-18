
import 'package:de_appointment/Model/DrTimeModel.dart';
import 'package:flutter/material.dart';

class DrTimeWidget extends StatefulWidget {
  const DrTimeWidget({Key? key,this.drTime}) : super(key: key);
  final DrTimeModel? drTime;
  @override
  _DrTimeWidgetState createState() => _DrTimeWidgetState();
}

class _DrTimeWidgetState extends State<DrTimeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(left: 20, top: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: widget.drTime!.color,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
           Padding(
            padding:const EdgeInsets.only(right: 5),
            child: Icon(Icons.access_time_rounded,color: widget.drTime!.iconColor,size: 19,),
          ),
          Text(widget.drTime!.time!,style: TextStyle(color: widget.drTime!.textColor,fontSize: 16),)
        ],
      ),
    );
  }
}
