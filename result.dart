import 'package:flutter/material.dart';
import 'package:navigater/main.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: Result(bmi: 0),
    );
  }
}

double height=150;
double weight=50;

class Result extends StatefulWidget {
  Result({Key? key,required this.bmi}) : super(key: key);
  double bmi;

  @override
  State<Result> createState() => _HomePageState();
}

class _HomePageState extends State<Result> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,title: Text("BMI CALCULATOR", style: TextStyle(color: Colors.white,fontSize: 40,fontWeight:FontWeight.bold)),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body:
      Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(50.0),
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  color: Colors.greenAccent

              ),
              height: 250,
              width: 250,
              child: Column(
                children: [
                  Text("     RESULT    ",style: TextStyle(color: Colors.black,fontSize: 35,fontWeight: FontWeight.w100)),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text("${bmi.toInt()}", style: TextStyle(color: Colors.black45,fontSize: 50)),
                  ),
                ],
              ),
            ),

            ElevatedButton(
              child: const Text('       RE-CALCULATE      '),
                  onPressed: () {
                Navigator.pop(context);
                  },
              style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle:
                  const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            ),

          ],

        ),
      ),
    );
  }
}
