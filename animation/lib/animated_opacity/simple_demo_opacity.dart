import 'package:flutter/material.dart';

class AnimatedOpacitySecreen extends StatefulWidget {

  @override
  State<AnimatedOpacitySecreen> createState() => _AnimatedOpacityState();
}

class _AnimatedOpacityState extends State<AnimatedOpacitySecreen> {

  bool _isPress = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Simple Demo Animated Opacity"),centerTitle: true,),
        body: Center(child: Column(children: [
             AnimatedOpacity(
                 opacity: _isPress? 1.0: 0.0,
                 duration: const Duration(seconds: 2),
                 child: const FlutterLogo(size: 200),
                 curve: Curves.linear,
             ),
        ElevatedButton(
            onPressed: (){
                _isPress = !_isPress;
            },
            child: Text("Opacity")
        )
        ],),),
    );
  }
}
