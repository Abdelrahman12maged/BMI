// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:bmi/bmires.dart';
import 'package:flutter/material.dart';

class bmi extends StatefulWidget {
  const bmi({super.key});

  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {
  Color maincolor = Color.fromARGB(255, 15, 3, 37);

  bool ismale = true;
  double height = 80;
  int Weight = 50;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: maincolor,
      appBar: AppBar(
          backgroundColor: maincolor,
          title: Center(child: Text("BMI Calculator"))),
      body: Column(children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        ismale = true;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: ismale
                              ? Colors.blue
                              : Color.fromARGB(255, 41, 21, 100)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.male,
                            size: 80,
                            color: Colors.white,
                          ),
                          Text(
                            "male",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        ismale = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: !ismale
                              ? Colors.pink[600]
                              : Color.fromARGB(255, 41, 21, 100)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.female,
                            size: 80,
                            color: Colors.white,
                          ),
                          Text(
                            "female",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 41, 21, 100)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("HEIGHT",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500)),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text("${height.round()}",
                          style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.w900)),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Cm",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ],
                  ),
                  Slider(
                    activeColor: Color.fromARGB(255, 255, 7, 90),
                    value: height,
                    min: 80.0,
                    max: 220.0,
                    onChanged: (value) {
                      setState(() {
                        height = value;
                      });
                      print(value.round());
                    },
                  )
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 41, 21, 100)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Weight",
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                        Text(
                          "${Weight}",
                          style: TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                              fontWeight: FontWeight.w900),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              heroTag: "--",
                              mini: true,
                              backgroundColor: Colors.grey[500],
                              child: Icon(
                                Icons.remove,
                                size: 30,
                              ),
                              onPressed: () {
                                setState(() {
                                  Weight--;
                                });
                              },
                            ),
                            FloatingActionButton(
                              heroTag: "w++",
                              mini: true,
                              backgroundColor: Colors.grey[500],
                              child: Icon(
                                Icons.add,
                                size: 30,
                              ),
                              onPressed: () {
                                setState(() {
                                  Weight++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 41, 21, 100)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          "${age}",
                          style: TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                              fontWeight: FontWeight.w900),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              heroTag: "age--",
                              mini: true,
                              backgroundColor: Colors.grey[500],
                              child: Icon(
                                Icons.remove,
                                size: 30,
                              ),
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            FloatingActionButton(
                              heroTag: "age++",
                              mini: true,
                              backgroundColor: Colors.grey[500],
                              child: Icon(
                                Icons.add,
                                size: 30,
                              ),
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          color: Color.fromARGB(255, 235, 14, 88),
          child: MaterialButton(
            onPressed: () {
              double bmi = Weight / pow(height / 100, 2);
            
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => bmires(
                      BMI: bmi,
                      age: age,
                      ismale: ismale,
                    ),
                  ));
            },
            child: Text(
              "calculate",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        )
      ]),
    );
  }
}
