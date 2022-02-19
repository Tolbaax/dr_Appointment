
import 'package:de_appointment/View/Screens/AppScreen.dart';
import 'package:de_appointment/View/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DrAppointment());
}

class DrAppointment extends StatefulWidget {
  const DrAppointment({Key? key}) : super(key: key);
  @override
  _DrAppointmentState createState() => _DrAppointmentState();
}

class _DrAppointmentState extends State<DrAppointment> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      routes: {
        AppScreen.id:(context)=> AppScreen(),
      },
    );
  }
}
