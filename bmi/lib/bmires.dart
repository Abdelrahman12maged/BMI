// ignore_for_file: prefer_const_constructors

import 'package:bmi/bmi.dart';
import 'package:flutter/material.dart';

class bmires extends StatefulWidget {
  final double BMI;
  final int age;
  final bool ismale;

  bmires({required this.BMI, required this.age, required this.ismale});
  check() {
    if (BMI >= 18.5 && BMI <= 24.9) {
      return "وزنك صحي حافظ عليه";
    } else if (BMI < 18.5) {
      return "تعاني من نقص في الوزن";
    } else if (BMI >= 25 && BMI <= 29.9) {
      return "لديك زيادة في الوزن قم بالتمارين الرياضية";
    } else if (BMI > 30) {
      return "زيادة مُفرطة في الوزن، وقد تكون الصحّة مُعرّضة للخطر في حال عدم إنقاص الوزن،";
    }
  }

  @override
  State<bmires> createState() => _bmiresState();
}

class _bmiresState extends State<bmires> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 15, 3, 37),
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 15, 3, 37),
          title: Center(child: Text("BMI RESULT"))),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(
            //  "gender:${widget.ismale ? "male" : "female"}",
            //      style: TextStyle(fontSize: 50, fontWeight: FontWeight.w500),
            //   ),
            Container(
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 41, 21, 100)),
              child: Text(
                "BMI: ${widget.BMI.toStringAsFixed(1)}",
                style: const TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                textDirection: TextDirection.rtl,
                " ${widget.check()}",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
