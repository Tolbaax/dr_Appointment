
import 'package:de_appointment/Model/DrTimeModel.dart';
import 'package:de_appointment/Model/TopRateModel.dart';
import 'package:de_appointment/View/Widgets/DataTimeWidget.dart';
import 'package:de_appointment/View/Widgets/DrTimeWidget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../Model/DataTimeModel.dart';

class AppScreen extends StatefulWidget {
  AppScreen({Key? key,this.rate}) : super(key: key);
  TopRateModel? rate;
  @override
  _AppScreenState createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {

  var month = DateFormat.MMM().format(DateTime.now());

  var year = DateTime.now().year;

  int today = DateTime.now().day;

  int lastDayOfMonth = DateTime(DateTime.now().year,DateTime.now().month + 1,0).day;

  List<DataTimeModel> dataTime = [];

  void initializeDate()
  {
    for(int day =today; day<=lastDayOfMonth;day++) {
      dataTime.add(DataTimeModel(
        daysNum: day,
        dayStr: DateFormat.E().format(DateTime(DateTime.now().year,DateTime.now().month,day)),
      ));
    }
  }

  int secCurrentDay = 0;

  @override

  void initState(){
    initializeDate();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor:const Color.fromARGB(255, 24, 87, 121),
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 200,
                decoration:const BoxDecoration(
                  color: Color.fromARGB(255, 24, 87, 121),
                  borderRadius:  BorderRadius.only(
                    bottomRight: Radius.circular(35),
                    bottomLeft: Radius.circular(35),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 150,
                      width: 130,
                      margin: const EdgeInsets.only(left: 20, bottom: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade200),
                      child: Image.asset(widget.rate!.topRateImageUrl! ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:const EdgeInsets.only(left: 20, bottom: 15),
                          child: Text(
                            widget.rate!.drName!,
                            style:const TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Padding(
                          padding:const EdgeInsets.only(left: 20),
                          child: Text(
                            widget.rate!.spec!,
                            style:const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 120,
                          margin:
                          const EdgeInsets.only(top: 15, left: 20, bottom: 10),
                          child: ListView.builder(
                              itemCount: 5,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return const Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                );
                              }),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: -22.5,right: 35,
                child: Container(
                    height: 45,width: 45,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child:const Icon(Icons.location_on,color: Colors.amber,size: 30,),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  margin: const EdgeInsets.only(left: 20, top: 20),
                  child: Text(
                    '$month $year',
                    style:const TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                  )),
            ],
          ),
          SizedBox(
            height: 105,width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: dataTime.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: ()
                    {
                      setState(() {
                        secCurrentDay = index;
                      });
                    },
                    child: DataTimeWidget(dataTime: dataTime[index],active: secCurrentDay == index,),
                  );
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  margin: const EdgeInsets.only(left: 20, top: 15),
                  child: const Text(
                    'Morning',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                  )),
            ],
          ),
          Container(
            height: 110,
            margin: const EdgeInsets.only(right: 20,),
            child: GridView.builder(gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,childAspectRatio: 2.4),
                itemCount: morningTime.length,
                itemBuilder: (context,index){
              return DrTimeWidget(drTime: morningTime[index],);
                })
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  margin: const EdgeInsets.only(left: 20, top: 15),
                  child: const Text(
                    'Evening',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                  )),
            ],
          ),
          Container(
              height: 110,
              margin: const EdgeInsets.only(right: 20,),
              child: GridView.builder(gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,childAspectRatio: 2.4),
                  itemCount: eveningTime.length,
                  itemBuilder: (context,index){
                    return DrTimeWidget(drTime: eveningTime[index],);
                  })
          ),
          Container(
            alignment: Alignment.center,
            height: 50,
            margin:const EdgeInsets.only(left: 20,right: 20,top: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.teal.shade600,
            ),
            child: const Text('Make An Appointment',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
          ),
        ],
      ),
    );
  }
}
