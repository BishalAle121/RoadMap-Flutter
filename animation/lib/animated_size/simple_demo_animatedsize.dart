import 'package:flutter/material.dart';

class AnimatedSizeScreen extends StatefulWidget {
  const AnimatedSizeScreen({super.key});

  @override
  State<AnimatedSizeScreen> createState() => _AnimatedSizeScreenState();
}

class _AnimatedSizeScreenState extends State<AnimatedSizeScreen> with TickerProviderStateMixin {
  bool _isLarge = false;  // To toggle between small and large sizes
  double _size = 300;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AnimatedSize Widget")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SingleChildScrollView(  // Wrap with SingleChildScrollView
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                    _size = _size == 300 ? 100 : 300;
                    });
                  },
                  child: AnimatedSize(
                    duration: const Duration(seconds: 1), // Duration for the animation
                    curve: Curves.easeInOut,  // Smooth curve for animation
                    alignment: Alignment.center,
                    // reverseDuration: const Duration(seconds: 2),  // Smooth reverse duration
                    onEnd: () {
                      print("Animation Completed");
                    },
                    // child: Container(height: _size, width: _size, color: Colors.blueAccent,)
                    child: FlutterLogo(size: _size,),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
