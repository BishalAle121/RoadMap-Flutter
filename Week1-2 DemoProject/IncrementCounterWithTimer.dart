import 'dart:async';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: MyHomePage(),debugShowCheckedModeBanner: false,);
  }
}
class  MyHomePage extends StatefulWidget
{
  State<MyHomePage>  createState()=> _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage>
{
  int _counter = 0;
  @override
  void initState() {
    // TODO: implement initState

     Timer.periodic(Duration(seconds: 1), (timer){
       setState(() {
           _counter ++;
       });
        print(_counter);
     });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar: AppBar(title: Center(child: Text('Counter With Timer',style: TextStyle(fontSize: 39),),),),
      body: SafeArea(child: Center(
        child:Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('$_counter',style: TextStyle(fontSize: 60),),
                Text(DateTime.now().hour.toString()+":"+DateTime.now().minute.toString()+":"+DateTime.now().second.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),)
              ],
            ),
          ),
        ),
      ),
      ),
      );
  }
}
