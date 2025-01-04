import 'package:flutter/material.dart';

class ImplicitAnimationScreen extends StatefulWidget {
  const ImplicitAnimationScreen({super.key});

  @override
  State<ImplicitAnimationScreen> createState() => _ImplicitAnimationScreenState();
}

class _ImplicitAnimationScreenState extends State<ImplicitAnimationScreen> {
  bool _isRed = false;
  bool _isLarge = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Implicit Animation"),centerTitle: true,),
        body: Center(
          child: GestureDetector(
          onTap: () {
            setState(() {
              _isRed = !_isRed;
              _isLarge = !_isLarge;
            });
          },
          child: AnimatedContainer(
            duration: Duration(seconds: 2), // Duration of the animation
            width: _isLarge ? 200 : 100,   // Width changes based on state
            height: _isLarge? 200 : 100,                    // Constant height
            color: _isRed ? Colors.red : Colors.blue,  // Color changes based on state
            child: Center(
              child: Text('Tap me'),
            ),
          ),
        ),
      ),
    );
  }
}
