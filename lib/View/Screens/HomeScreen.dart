import 'package:de_appointment/Model/CategoryModel.dart';
import 'package:de_appointment/Model/TopRateModel.dart';
import 'package:de_appointment/View/Screens/AppScreen.dart';
import 'package:de_appointment/View/Widgets/TopRateWidget.dart';
import 'package:flutter/material.dart';
import '../Widgets/CategoryWidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 24, 87, 121),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.menu),
        actions: [
          const Icon(
            Icons.notifications_none,
            size: 28,
          ),
          Container(
            margin:
                const EdgeInsets.only(right: 25, left: 10, top: 10, bottom: 10),
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: const DecorationImage(
                    fit: BoxFit.cover, image: AssetImage("images/0.jpg"))),
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 22, top: 20),
              child: const Text(
                'Hi, Tolba',
                style: TextStyle(fontSize: 27),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 22, top: 5),
              child: const Text(
                'Welcome Back',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 25, right: 25, top: 25),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(7)),
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: const TextField(
                        style: TextStyle(fontSize: 22, color: Colors.black),
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
                          color: Colors.teal),
                      child: const Center(
                          child: Icon(
                        Icons.search,
                        size: 34,
                        color: Colors.white,
                      )),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 30),
              child: Row(
                children: const [
                  Text(
                    'Category',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                  ),
                  Spacer(),
                  Text(
                    'See all',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 135,
              child: ListView.builder(
                physics: const ScrollPhysics(

                ),
                  shrinkWrap: true,
                  itemCount: category.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CategoryWidget(
                      category: category[index],
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 30),
              child: Row(
                children: const [
                  Text(
                    'Top rate',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                  ),
                  Spacer(),
                  Text(
                    'See all',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: topRate.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  AppScreen(rate: topRate[index],)));
                      },
                      child: RateWidget(
                        topRate: topRate[index],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
