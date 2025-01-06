import 'package:flutter/material.dart';

class AnimatedOpacitySecreen extends StatefulWidget {

  @override
  State<AnimatedOpacitySecreen> createState() => _AnimatedOpacityState();
}

class _AnimatedOpacityState extends State<AnimatedOpacitySecreen> {

  bool _isPress = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Simple Demo Animated Opacity"),centerTitle: true,),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               AnimatedOpacity(
                   opacity: _isPress? 1.0: 0.0,
                   duration: const Duration(seconds: 2),
                   child: const FlutterLogo(size: 400),
                   curve: Curves.easeInOut,
                   onEnd: (){print("Animated Completed");},
               ),
          Container(
            height: 80, width: double.infinity,
            color: Colors.blueAccent,
            child: ElevatedButton(
                onPressed: (){
                    setState(() {
                    _isPress = !_isPress;
                    });
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                child: Text("Opacity Button",style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),)
            ),
          )
          ],),),
        ),
    );
  }
}
