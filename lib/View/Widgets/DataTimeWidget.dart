
import 'package:de_appointment/Model/DataTimeModel.dart';
import 'package:flutter/material.dart';

class DataTimeWidget extends StatefulWidget {
  const DataTimeWidget({Key? key,this.dataTime}) : super(key: key);
  final DataTimeModel? dataTime;

  @override
  _DataTimeWidgetState createState() => _DataTimeWidgetState();
}

class _DataTimeWidgetState extends State<DataTimeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,width: 65,
      margin:const EdgeInsets.only(left: 20,top: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: widget.dataTime!.color
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Text(widget.dataTime!.day!,style:  TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: widget.dataTime!.textColor),),
          const SizedBox(height: 15,),
          Text(widget.dataTime!.month!.toString(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: widget.dataTime!.textColor))
        ],
      ),
    );
  }
}
