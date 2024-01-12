import 'dart:math';

import 'package:bmi_calcolator/Screens/FinalScreen.dart';
import 'package:flutter/material.dart';

class pmiScreen extends StatefulWidget {
  const pmiScreen({super.key});

  @override
  State<pmiScreen> createState() => _pmiScreenState();
}

class _pmiScreenState extends State<pmiScreen> {
  double hight = 100;
  bool ismal = true;
  int weight = 40;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Center(
              child: Text(
            "BMI CALCOLATOR",
            style: TextStyle(color: Colors.black),
          )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.dark_mode_outlined,
                  color: Colors.black38,
                ))
          ]),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    ismal = true;
                  });
                },
                child: Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(20),
                  width: 140,
                  height: 150,
                  decoration: BoxDecoration(
                    color: ismal ? Colors.blue : Colors.grey,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image(
                        image: AssetImage(
                          "images/male.png",
                        ),
                        height: 50,
                      ),
                      Text(
                        "Male",
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    ismal = false;
                  });
                },
                child: Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(20),
                  width: 140,
                  height: 150,
                  decoration: BoxDecoration(
                    color: !ismal ? Colors.blue : Colors.grey,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image(
                        image: AssetImage(
                          "images/female.png",
                        ),
                        height: 50,
                      ),
                      Text(
                        "Male",
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
          Container(
            height: 130,
            width: 320,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(15)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "HEIGHT",
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  "${hight.toInt()} cm",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                Slider(
                  min: 70,
                  max: 210,
                  value: hight,
                  onChanged: (val) {
                    setState(() {
                      hight = val;
                    });
                  },
                )
              ],
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                width: 140,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("WEIGHT"),
                    Text(
                      "$weight",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 45),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              weight++;
                            });
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.black45,
                            child: Icon(Icons.add),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              weight--;
                            });
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.black45,
                            child: Icon(Icons.minimize_rounded),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                width: 140,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("AGE"),
                    Text(
                      "$age",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 45),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              age++;
                            });
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.black45,
                            child: Icon(Icons.add),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              age--;
                            });
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.black45,
                            child: Icon(Icons.minimize_rounded),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )),
          ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
              onPressed: () {
                double result = weight / pow(hight / 100, 2);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => finalScreen(
                            result: result.round(), age: age, ismale: ismal)));
              },
              child: Text("CALCOLATE"))
        ],
      ),
    );
  }
}
