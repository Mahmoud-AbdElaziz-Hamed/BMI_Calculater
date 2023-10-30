// ignore_for_file: prefer_const_constructors

import 'package:bmi/screens/result_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const routename = "HomePage";
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

double height = 120;
double age = 18;
double weight = 80;
String gender = "";

Color color1 = Colors.grey.withOpacity(0.2);
Color color2 = Colors.grey.withOpacity(0.2);

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      gender = "male";
                      color1 = Colors.blue;
                      color2 = Colors.grey.withOpacity(0.2);
                      setState(() {});
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: color1),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                            size: 50,
                            color: Colors.white,
                          ),
                          Text(
                            "Male",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      gender = "female";
                      color2 = Colors.blue;
                      color1 = Colors.grey.withOpacity(0.2);
                      setState(() {});
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: color2),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female,
                            size: 50,
                            color: Colors.white,
                          ),
                          Text(
                            "Female",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Expanded(
                child: Container(
              // margin: EdgeInsetsDirectional.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.2)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Height",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height.round().toString(),
                            style: const TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                          ),
                          const Text(
                            "cm",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w200,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Slider(
                          thumbColor: const Color.fromARGB(255, 255, 17, 0),
                          inactiveColor: Colors.grey.shade700,
                          activeColor: Colors.white,
                          value: height,
                          max: 220,
                          min: 80,
                          onChanged: (value) {
                            height = value;
                            setState(() {});
                          })
                    ],
                  )
                ],
              ),
            )),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.withOpacity(0.2)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Age",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                        Text(
                          age.round().toString(),
                          style: const TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                age--;
                                setState(() {});
                              },
                              mini: true,
                              backgroundColor: Colors.grey,
                              child: const Text(
                                "-",
                                style: TextStyle(
                                  fontSize: 30,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                age++;
                                setState(() {});
                              },
                              mini: true,
                              backgroundColor: Colors.grey,
                              child: const Text(
                                "+",
                                style: TextStyle(
                                  fontSize: 30,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.withOpacity(0.2)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Weight",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              weight.round().toString(),
                              style: const TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white),
                            ),
                            const Text(
                              "Kg",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                weight--;
                                setState(() {});
                              },
                              mini: true,
                              backgroundColor: Colors.grey,
                              child: const Text(
                                "-",
                                style: TextStyle(
                                  fontSize: 30,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                weight++;
                                setState(() {});
                              },
                              mini: true,
                              backgroundColor: Colors.grey,
                              child: const Text(
                                "+",
                                style: TextStyle(
                                  fontSize: 30,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: MaterialButton(
              onPressed: () {
                var bmi = weight / ((height / 100) * (height / 100));
                Navigator.pushNamed(context, ResultScreen.routename,
                    arguments: {
                      "bmi": bmi.round(),
                      "age": age,
                      "gender": gender
                    });
              },
              color: const Color.fromARGB(255, 238, 16, 0),
              child: const Text(
                "Calculator",
                style: TextStyle(fontSize: 26, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
