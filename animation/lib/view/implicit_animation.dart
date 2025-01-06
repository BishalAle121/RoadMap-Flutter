import 'package:flutter/material.dart';

import '../main.dart';

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
        body: Column(
          children: [
            GestureDetector(
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
            SizedBox(height: 30,),
            Container(
              width: double.infinity,
              height: 80,
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, AnimationHome.animatedOpacity);
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                  ),
                  child:const Text("AnimationOpacity",style: TextStyle(color: Colors.white, fontSize: 40),)
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width: double.infinity,
              height: 80,
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, AnimationHome.animatedSize);
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                  ),
                  child:const Text("AnimationSize",style: TextStyle(color: Colors.white, fontSize: 40),)
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width: double.infinity,
              height: 80,
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, AnimationHome.animatedPositioned);
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                  ),
                  child:const Text("AnimationPositioned",style: TextStyle(color: Colors.white, fontSize: 30),)
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width: double.infinity,
              height: 80,
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, AnimationHome.animatedPositionedTimer);
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                  ),
                  child:const Text("AnimationPositionedTimer",style: TextStyle(color: Colors.white, fontSize: 30),)
              ),
            ),
          ],
        ),
    );
  }
}
