import 'package:flutter/material.dart';

class result_screen extends StatelessWidget {
  result_screen({
    required this.resullt,
    required this.ismale,
    required this.age});
  final double resullt;
 final bool ismale;
 final int age;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: !ismale? Colors.pink:Colors.blue,
      appBar: AppBar(
        title: Text(
          'BMI RESULT',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text('Gender:${ismale?'male':'female'}',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text('Result:${resullt.round()}',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('Age:$age',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

          ],
        ),
      ),
    );
  }
}

