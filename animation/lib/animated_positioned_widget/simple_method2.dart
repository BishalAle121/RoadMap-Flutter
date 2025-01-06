import 'dart:async';
import 'package:flutter/material.dart';

class AnimatedPositionedScreen extends StatefulWidget {
  const AnimatedPositionedScreen({super.key});

  @override
  State<AnimatedPositionedScreen> createState() =>
      _AnimatedPositionedScreenState();
}

class _AnimatedPositionedScreenState
    extends State<AnimatedPositionedScreen> with TickerProviderStateMixin {
  late AnimationController _controller;
  bool selected = false;
  double _top = 0;
  double _buttom = 600;

  @override
  void initState() {
    super.initState();
    // Initialize the AnimationController
    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );

    // Set the AnimationController to alternate the position every 2 seconds
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        print("Sifting Completed");
        _controller.reverse(); // Reverse animation when completed
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward(); // Forward the animation again
      }
    });

    // Start the animation initially
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animated Positioned Widget"), centerTitle: true),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          AnimatedPositioned(
            top: selected ? _top : _buttom,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: FlutterLogo(size: 200),
            ),
            duration: Duration(seconds: 2),
            onEnd: () {
              print("Sifting Completed");
            },
          ),
        ],
      ),
    );
  }
}
