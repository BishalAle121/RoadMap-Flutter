import 'package:flutter/material.dart';

class TweenAnimationScreen extends StatefulWidget {
  const TweenAnimationScreen({super.key});

  @override
  State<TweenAnimationScreen> createState() => _TweenAnimationScreenState();
}

class _TweenAnimationScreenState extends State<TweenAnimationScreen> with SingleTickerProviderStateMixin{
  bool _onTapStatus = true;

  late Animation _animation;
  late Animation _colorAnimation;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this, duration: Duration(seconds: 2));
    _UpdateOnClick();
    _animationController.forward();//start the animation
    // _animationController.reverse();
  }
  void _UpdateOnClick()
  {
    _animation = Tween(begin: _onTapStatus? 100.0: 400.0, end:  _onTapStatus? 400.0: 100.0).animate(_animationController);
    _colorAnimation = ColorTween(begin: Colors.red, end:  Colors.orange).animate(_animationController);
    _animationController.addListener((){
      print(_animation.value);
      setState(() {

      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Demo Tween Animation"),centerTitle: true,),
      body: Center(child:
      GestureDetector(
        onTap: (){
          setState(() {
              _onTapStatus = !_onTapStatus;
              _UpdateOnClick();
              _animationController.reset();
              _animationController.forward();
          });
        },
        child: Container(
          height: _animation.value,
          width: _animation.value,
          color: _colorAnimation.value,
        ),
      ),),
    );
  }
}
