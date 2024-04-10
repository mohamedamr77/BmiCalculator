import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultBmi extends StatelessWidget {
  const ResultBmi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffce93d8),
      appBar: AppBar(
        backgroundColor: Color(0xff0655BBA),
        title: Text("Result",
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Gender : Female",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff655BBA),
              fontSize: 25,
            ),
            ),
            Text("Result : 8",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff655BBA),
              fontSize: 25,
            ),
            ),
            Text("Age : 21",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff655BBA),
              fontSize: 25,
            ),
            ),
          ],
        ),
      ),
    );
  }
}
