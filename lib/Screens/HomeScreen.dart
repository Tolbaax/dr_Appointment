
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        elevation: 0,
        leading: const Icon(Icons.menu),
        actions: [
          const Icon(Icons.notifications_none,size: 28,),
          Container(
            margin:
            const EdgeInsets.only(right: 22, left: 10, top: 10, bottom: 10),
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                image: const DecorationImage(
                    fit: BoxFit.fill, image: AssetImage("images/1.jpg"))),
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration:  BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius:const BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin:const EdgeInsets.only(left:22,top: 25),
              child:const Text('Hi, Tolba',style: TextStyle(fontSize: 27),),
            ),
            Container(
              margin:const EdgeInsets.only(left:22,top: 5),
              child:const Text('Welcome Back',style: TextStyle(fontSize: 32,fontWeight: FontWeight.w700),),
            ),
            Container(
              height: 50,width: MediaQuery.of(context).size.width,
              margin:const EdgeInsets.only(left: 25,right: 25,top: 35),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7)
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      margin:const EdgeInsets.only(left: 10),
                      child:const TextField(
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search...',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.teal
                      ),
                      child:const Center(child: Icon(Icons.search,size: 34,color: Colors.white,)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25,right: 25,top: 30),
              child: Row(
                children:const [
                  Text('Category',style: TextStyle(fontSize: 23,fontWeight: FontWeight.w700),),
                  Spacer(),
                  Text('See all',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.grey),),
                  //---
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
