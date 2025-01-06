import 'package:flutter/material.dart';

class TweenSimpleExample extends StatefulWidget {
  @override
  _TweenSimpleExampleState createState() => _TweenSimpleExampleState();
}

class _TweenSimpleExampleState extends State<TweenSimpleExample> with SingleTickerProviderStateMixin {
  bool _onTap = false;
  AnimationController? _controller;
  Animation<double>? _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _UpdateAnimation();
  }
  void _UpdateAnimation()
  {
    _animation = Tween<double>(
        begin: _onTap? 100.0 : 400.0,
        end: _onTap? 400.0 : 100.0
    ).animate(_controller!);

    _controller!.reset();
    _controller!.forward();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Generic Tween Types'), centerTitle: true,),
      body: Center(
        child: GestureDetector(
          onTap: (){
              setState(() {
                  _onTap = !_onTap;
                  _UpdateAnimation();
              });
          },
          child: AnimatedBuilder(
            animation: _animation!,
            builder: (context, child) {
              return Container(
                width: _animation!.value,
                height: _animation!.value,
                color: Colors.blue,
              );
            },
          ),
        ),
      ),
    );
  }
}