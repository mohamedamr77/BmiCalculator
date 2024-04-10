import 'package:bmiapp/ui/result.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
double paddingValue=18;
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffA184DE),
      appBar: AppBar(
        backgroundColor: Color(0xff655BBA),
        title: const Center(
          child: Text("BMI CALCULATOR",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
          ),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.all(paddingValue),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 200,
                   width: (MediaQuery.of(context).size.width/2)-23,
                  decoration: BoxDecoration(
                    color: Color(0xffE040FC),
                    border: Border.all(
                      color: Color(0xffC0ABE2), // You can choose the color of the border
                      width: 6,
                      style:BorderStyle.solid ,// You can adjust the width of the border
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image(
                    width: 120,
                    image: AssetImage("assets/images/femaleicon.png",),
                  ),
                  ),
                SizedBox(width: 10,),
                Container(
                  height: 200,
                  width: (MediaQuery.of(context).size.width/2)-23,
                  decoration: BoxDecoration(
                    color: Color(0xffE040FC),
                    border: Border.all(
                      color: Color(0xffC0ABE2), // You can choose the color of the border
                      width: 6,
                      style:BorderStyle.solid ,// You can adjust the width of the border
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image(
                    width: 120,
                    image: AssetImage("assets/images/menicon.png",),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width-paddingValue,
              decoration: BoxDecoration(
                color: Color(0xffECC7E6),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Text("HEGIHT",
                    style: TextStyle(
                      color: Color(0xff675AAE),
                      fontSize: 26,
                    ),
                    ),
                    SizedBox(height: 4,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("100",
                        style: TextStyle(
                          fontSize: 32,
                          color: Color(0xff675AAE),
                        ),
                        ),
                        Text("cm",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff675AAE),
                        ),
                        ),
                      ],
                    ),
                    Slider(value: 100,
                        max: 200,
                        min: 1,
                        onChanged: (value){})
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 130,
                    decoration: BoxDecoration(
                      color: Color(0xffECC7E6),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text("Weight",
                          style: TextStyle(
                            color: Color(0xff675AAE),
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                          Text("30",
                          style: TextStyle(
                            color: Color(0xff675AAE),
                            fontSize: 25,
                          ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(onPressed: (){},
                                 elevation: 0,
                                 mini: true,
                              child: Icon(
                                Icons.remove
                              )
                              ),
                              SizedBox(width: 5,),
                              FloatingActionButton(onPressed: (){},
                                  elevation: 0,
                                  mini: true,
                                  child: Icon(
                                      Icons.add,
                                  )
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                Expanded(
                  child: Container(
                    height: 130,
                    decoration: BoxDecoration(
                      color: Color(0xffECC7E6),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text("Height",
                            style: TextStyle(
                                color: Color(0xff675AAE),
                                fontSize: 25,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text("30",
                            style: TextStyle(
                              color: Color(0xff675AAE),
                              fontSize: 25,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(onPressed: (){},
                                  elevation: 0,
                                  mini: true,
                                  child: Icon(
                                      Icons.remove
                                  )
                              ),
                              SizedBox(width: 5,),
                              FloatingActionButton(onPressed: (){},
                                  elevation: 0,
                                  mini: true,
                                  child: Icon(
                                    Icons.add,
                                  )
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25,),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ResultBmi(),));
                },
              child: Text("Caculate",
              style: TextStyle(
                fontSize: 25,
              ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor:Color(0xff655BBA) ,
                minimumSize: Size(double.infinity, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20), // Adjust the border radius as needed
                ),

              ),
            ),

          ],
        ),
      ),
    );
  }
}
