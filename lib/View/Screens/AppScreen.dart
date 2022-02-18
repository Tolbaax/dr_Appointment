
import 'package:de_appointment/Model/DrTimeModel.dart';
import 'package:de_appointment/View/Widgets/DataTimeWidget.dart';
import 'package:de_appointment/View/Widgets/DrTimeWidget.dart';
import 'package:flutter/material.dart';

import '../../Model/DataTimeModel.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({Key? key,}) : super(key: key);
  static String id = 'AppScreen';
  @override
  _AppScreenState createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  List<DataTimeModel> dataTime = [
    DataTimeModel(day: 'Tue', month: 13, color: Colors.teal.shade600, textColor: Colors.white),
    DataTimeModel(day: 'Wed', month: 14, color: Colors.white),
    DataTimeModel(day: 'Thu', month: 15, color: Colors.white),
    DataTimeModel(day: 'Fri', month: 16, color: Colors.white),
    DataTimeModel(day: 'Sat', month: 17, color: Colors.white),
    DataTimeModel(day: 'Sun', month: 18, color: Colors.white),
    DataTimeModel(day: 'Mon', month: 19, color: Colors.white),
  ];

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade700,
        elevation: 0.0,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: const Icon(Icons.notifications_none),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blueGrey.shade700,
              borderRadius: const BorderRadius.only(
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
                  child: Image.asset('images/dr2.png'),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20, bottom: 15),
                      child: Text(
                        'Dr. Mazen',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'Eye specialist',
                        style: TextStyle(
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  margin: const EdgeInsets.only(left: 20, top: 20),
                  child: const Text(
                    'February 2022',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                  )),
            ],
          ),
          SizedBox(
            height: 105,
            child: ListView.builder(
                itemCount: dataTime.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return DataTimeWidget(
                    dataTime: dataTime[index],
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
            child: const Text('Make An Appointment',style: TextStyle(color: Colors.white,fontSize: 20),),
          ),
        ],
      ),
    );
  }
}
