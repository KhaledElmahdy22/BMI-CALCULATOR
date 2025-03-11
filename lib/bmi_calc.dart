


import 'dart:math';

import 'package:bootcamp_gonuer/result_screen.dart';
import 'package:flutter/material.dart';

class bmi_calc extends StatefulWidget {
const bmi_calc({super.key});

  @override
  State<bmi_calc> createState() => bmi_calcState();
}

class bmi_calcState extends State<bmi_calc> {

  bool ismale =true;
  Color color1 = Color(0xFF1D1E33);
  Color color2 =Color(0xFF4C4F5E);
  double height =120;
  double weight =40;
  int    age=10;
  //var result = weight / pow(height/100, 2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
       color:  Color(0xFF0A0B21),

        child: Column(

          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: ()
                        {
                        setState(() {
                          ismale=true;

                        });
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage('assets/images/male.png'),
                                height: 90,
                                width: 110,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'MALE',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:ismale? Colors.blue:color1,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            ismale=false;
                          });
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage('assets/images/female.png'),
                                height: 90,
                                width: 90,
                                color: Colors.white,

                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'FEMALE',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:!ismale? Colors.pink:color1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF1D1E33),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '${height.round()}',
                            style: TextStyle(
                              fontSize: 45,
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Text(
                            'cm',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SliderTheme(
                        data: SliderThemeData(
                          activeTrackColor: !ismale? Colors.pink:Colors.blue,
                          inactiveTrackColor: Colors.grey,
                          thumbColor: !ismale? Colors.pink:Colors.blue,
                        ),
                        child: Slider(
                            value: height,
                            max: 220,
                            min: 100,

                            onChanged: (value) {
                              setState(() {
                                height=value;
                              });

                            }),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF1D1E33),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WEIGHT',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '${weight.round()}',
                              style: TextStyle(
                                fontSize: 45,
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: ()
                                  {
                                    setState(() {
                                      weight--;

                                    });
                                  },
                                  //mini: true,
                                  heroTag: 'w-',
                                  backgroundColor: ismale? Colors.blue:Colors.pink,
                                  foregroundColor: Colors.white,
                                  shape: CircleBorder(),
                                  child: Icon(Icons.remove),
                                ),
                                SizedBox(width: 10,),
                                FloatingActionButton(
                                  onPressed: ()
                                  {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  //mini: true,
                                  heroTag: 'w+',

                                  backgroundColor: ismale? Colors.blue:Colors.pink,
                                  foregroundColor: Colors.white,

                                  shape: CircleBorder(),
                                  child: Icon(Icons.add),
                                ),
                              ],
                            ),
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
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF1D1E33),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'AGE',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '$age',
                              style: TextStyle(
                                fontSize: 45,
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: ()
                                  {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  heroTag: 'a-',
                                  backgroundColor: !ismale? Colors.pink:Colors.blue,
                                  foregroundColor: Colors.white,
                                  //  mini: true,
                                  shape: CircleBorder(),
                                  child: Icon(Icons.remove),
                                ),
                                SizedBox(width: 10,),
                                FloatingActionButton(
                                  onPressed: ()
                                  {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  // mini: true,
                                  heroTag: 'a+',
                                  backgroundColor: !ismale? Colors.pink:Colors.blue,
                                  foregroundColor: Colors.white,
                                  shape: CircleBorder(),
                                  child: Icon(Icons.add),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: !ismale? Colors.pink:Colors.blue,

              child: MaterialButton(
                onPressed: ()
                {
                  double result = weight / pow(height/100, 2);
                  print(result.round());
                  Navigator.push(context, MaterialPageRoute(builder: (context) => result_screen(resullt: result,ismale: ismale,age: age,),));
                },
                height: 60,
                child: Text(
                  'CALCULATE',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
