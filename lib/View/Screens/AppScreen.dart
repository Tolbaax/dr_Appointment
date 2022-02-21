
import 'package:de_appointment/Model/DrTimeModel.dart';
import 'package:de_appointment/Model/TopRateModel.dart';
import 'package:de_appointment/View/Widgets/DataTimeWidget.dart';
import 'package:de_appointment/View/Widgets/DrTimeWidget.dart';
import 'package:flutter/material.dart';

import '../../Model/DataTimeModel.dart';

class AppScreen extends StatefulWidget {
  AppScreen({Key? key,this.rate}) : super(key: key);
  static String id = 'AppScreen';
  TopRateModel? rate;
  @override
  _AppScreenState createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
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
            child: const Text('Make An Appointment',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
          ),
        ],
      ),
    );
  }
}
