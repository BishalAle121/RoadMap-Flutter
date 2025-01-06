import 'dart:async';

import 'package:flutter/material.dart';

class AnimatedPositionedScreenMethod2 extends StatefulWidget {
  const AnimatedPositionedScreenMethod2({super.key});

  @override
  State<AnimatedPositionedScreenMethod2> createState() => _AnimatedPositionedScreenMethod2State();
}

class _AnimatedPositionedScreenMethod2State extends State<AnimatedPositionedScreenMethod2> {
  bool selected = false;
  double _top = 0;
  double _buttom = 600;

  Timer? _timer;

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 2), (_timer){
      setState(() {
        selected = !selected;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text("Animated Positioned Widget"),centerTitle: true,),
       body: Stack(
         alignment: Alignment.topCenter,
         children: [
            AnimatedPositioned(
                top: selected? _top: _buttom,
                child: GestureDetector(
                    child: FlutterLogo(size: 200,)
                ),
                duration: Duration(seconds: 2),
              onEnd: (){
                  print("Sifting Completed");
              },
            )
       ],),
    );
  }
}
