
import 'package:flutter/material.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({Key? key}) : super(key: key);
  static String id = 'AppScreen';
  @override
  _AppScreenState createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
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
            height: 190,
            decoration: BoxDecoration(
              color: Colors.blue.shade800,
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
                        style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w700),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'Heart surgeon',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w400,fontSize: 16),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 120,
                      margin: const EdgeInsets.only(top: 15, left: 20,bottom: 10),
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
                  margin:const EdgeInsets.only(left: 20,top: 25),
                  child:const Text('February 2022',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700),)),
            ],
          ),
          SizedBox(
            height: 120,
            child: ListView.builder(
                itemCount: 7,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
              return Container(
                height: 110,width: 65,
                margin:const EdgeInsets.only(left: 20,top: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:const[
                    Text('Tue',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                    SizedBox(height: 15,),
                    Text('21',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700))
                  ],
                ),
              );
            }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  margin:const EdgeInsets.only(left: 20,top: 25),
                  child:const Text('Morning',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700),)),
            ],
          ),
        ],
      ),
    );
  }
}
