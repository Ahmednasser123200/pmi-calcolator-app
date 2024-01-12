import 'package:flutter/material.dart';

class finalScreen extends StatelessWidget {
  const finalScreen({super.key, required this.result, required this.age, required this.ismale});
  final int result;
  final int age;
  final  bool ismale;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Final BMI"),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 300,
          decoration: (BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [BoxShadow(
                blurRadius: 6,color: Colors.black45,
              )])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "gender :${ismale?"Male":"Female"} ",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text("Result :$result ",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              Text("Age : $age ",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold))
            ],
          ),
        ),
      ),
    );
  }
}
