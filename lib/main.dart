import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(const myApp());
}

class myApp extends StatelessWidget{
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My App",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: DashBoardScreen(),
    );
  }
}

class DashBoardScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return DashBoardState();
  }

}
class DashBoardState extends State<DashBoardScreen>{
  var num1 = TextEditingController();
  var num2 = TextEditingController();
  var res = 0;
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text("Simple Calculator"),
        ),
        body:Container(
          color: Colors.pink.shade100,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                    controller: num1,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Num1",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 6,
                          )
                      ),
                      prefixIcon: Icon(Icons.numbers),
                    )
                ),
                SizedBox(height: 8,),
                TextField(
                    controller: num2,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Num2",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 6,
                          )
                      ),
                      prefixIcon: Icon(Icons.numbers),
                    )
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(onPressed: (){
                      int n1 = int.parse(num1.text.toString());
                      int n2 = int.parse(num2.text.toString());
                      res = n1+n2;
                      print('$res');
                      setState(() {

                      });
                    },
                      child: Text("+",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                    ),
                    ElevatedButton(onPressed: (){
                      int n1 = int.parse(num1.text.toString());
                      int n2 = int.parse(num2.text.toString());
                      res = n1-n2;
                      print('$res');
                      setState(() {

                      });
                    },
                      child: Text("-",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                    ),
                    ElevatedButton(onPressed: (){
                      int n1 = int.parse(num1.text.toString());
                      int n2 = int.parse(num2.text.toString());
                      res = n1*n2;
                      print('$res');
                      setState(() {

                      });
                    },
                      child: Text("*",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                    ),
                    ElevatedButton(onPressed: (){
                      int n1 = int.parse(num1.text.toString());
                      int n2 = int.parse(num2.text.toString());
                      res = (n1/n2).round();
                      print('$res');
                      setState(() {

                      });
                    },
                      child: Text("/",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('$res',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),),
                )
              ],
            ),
          ),
        )
    );
  }
}
