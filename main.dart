import 'package:flutter/material.dart';
import 'package:navigater/result.dart';

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
      home: HomePage(),
    );
  }
}

double height=150;
double weight=50;
double bmi=(weight*10000)/(height*height);
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,title: Text("BMI CALCULATOR", style: TextStyle(color: Colors.white,fontSize: 40,fontWeight:FontWeight.bold)),
        backgroundColor: Colors.purple,
      ),
      body:
      Center(
        child:Column (


          children:[

            Wrap(
              spacing: 40,
              children: [

                Container(
                  margin: const EdgeInsets.all(50.0),
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),color: Colors.deepPurpleAccent
                  ),
                  height: 190,
                  width: 250,

                  child: Column(
                    children: [
                      Text("Height" ,textAlign: TextAlign.values[3], style: TextStyle(color: Colors.black,fontSize: 35)),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("${height}", style: TextStyle(color: Colors.black45,fontSize: 25)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Slider(
                          activeColor: Colors.white,
                          inactiveColor: Colors.black,
                          value: height,
                          max: 200,
                          min: 100,
                          divisions: 200,
                          onChanged: (newValue) {
                            setState(() {
                              height = newValue;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(50.0),
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),color: Colors.deepPurpleAccent
                  ),
                  height: 190,
                  width: 250,
                  child: Column(
                    children: [
                      Text("Weight" ,textAlign: TextAlign.values[3], style: TextStyle(color:Colors.black,fontSize: 35)),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text("${weight}", style: TextStyle(color: Colors.black45,fontSize: 25)),
                      ),



                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Wrap(
                          spacing: 10,
                          children: [

                            FloatingActionButton(
                                child:Center(child: Icon(Icons.add),),

                                onPressed: (){
                                  setState((){

                                  });
                                  weight++;
                                }
                            ),

                            FloatingActionButton(
                              child: Center(child : Icon(Icons.remove)),
                              onPressed: (){
                                setState((){
                                });
                                weight--;
                              },
                            )

                          ],
                        ),
                      ),

                    ],),),

              ],
            ),
            Container(
              margin: const EdgeInsets.all(20.0),
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),color: Colors.deepPurpleAccent

              ),
              height: 180,
              width: 250,
              child: Column(
                children: [
                  Text("BMI" ,textAlign: TextAlign.values[3], style: TextStyle(color: Colors.black,fontSize: 35)),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: FloatingActionButton(
                      child: Center(child : Icon(Icons.equalizer)),
                      onPressed: (){
                        setState((){
                        });
                        bmi=(weight*10000)/(height*height);
                        bmi.toInt();
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context)=> Result(bmi:0,)) );

                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),

                  ),
                ],
              ),
            ),

          ],

        ),

      ),
    );
  }
}
