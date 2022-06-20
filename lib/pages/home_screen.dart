import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String result = "";

  @override
  Widget build(BuildContext context) {
    var grade = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Grade Calculator"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: Container(
              width: 250,
              child: TextField(
                  controller: grade,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.percent,
                        color: Colors.blue,
                        size: 29.0,
                      ),
                      hintText: "Type your score",
                      hintStyle: TextStyle(
                          fontSize: 21.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(90)))),
            ),
          ),
          Container(
            width: 140,
            height: 60,
            child: ElevatedButton(
                onPressed: () {
                  double totalGrade = double.parse(grade.text);
                  if (totalGrade >= 90) {
                    setState(() {
                      result = "A";
                    });
                  } else if (totalGrade >= 80) {
                    setState(() {
                      result = "B";
                    });
                  } else if (totalGrade >= 90) {
                    setState(() {
                      result = "c";
                    });
                  } else if (totalGrade >= 90) {
                    setState(() {
                      result = "D";
                    });
                  } else {
                    setState(() {
                      result = "F";
                    });
                  }
                },
                child: Text(
                  'Calculate',
                  style: TextStyle(fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    primary: Color.fromARGB(255, 82, 161, 225))),
          ),
          Center(
            child: Container(
              child: Text(result,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 150,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
