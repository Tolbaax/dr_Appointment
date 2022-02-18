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
List<CategoryModel> category = [
  CategoryModel(
      categoryImageUrl: 'images/tooth.png',
      categoryNames: 'Dental',
      drNumber: '20 Doctors'),
  CategoryModel(
      categoryImageUrl: 'images/heart.png',
      categoryNames: 'Heart',
      drNumber: '18 Doctors'),
  CategoryModel(
      categoryImageUrl: 'images/brain.png',
      categoryNames: 'Brain',
      drNumber: '15 Doctors'),
  CategoryModel(
      categoryImageUrl: 'images/bone.png',
      categoryNames: 'Bone',
      drNumber: '30 Doctors'),
];
List<TopRateModel> topRate = [
  TopRateModel(
      topRateImageUrl: 'images/dr2.png',
      drName: 'Dr. Mazen',
      spec: 'Eye Specialist ',
      rate: 4.5,
      distance: '10km'),
  TopRateModel(
      topRateImageUrl: 'images/dr1.png',
      drName: 'Dr. Eman',
      spec: 'Dental Specialist',
      rate: 5,
      distance: '15km'),
  TopRateModel(
      topRateImageUrl: 'images/dr3.png',
      drName: 'Dr. Ahmed',
      spec: 'Brain Specialist',
      rate: 3.5,
      distance: '20km'),
  TopRateModel(
      topRateImageUrl: 'images/dr4.png',
      drName: 'Dr. Ebrahim',
      spec: 'Heart Surgeon',
      rate: 4.2,
      distance: '50km'),
];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.withAlpha(130),
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
                const EdgeInsets.only(right: 22, left: 10, top: 10, bottom: 10),
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: const DecorationImage(
                    fit: BoxFit.fill, image: AssetImage("images/1.jpg"))),
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
                                builder: (context) => const AppScreen()));
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
