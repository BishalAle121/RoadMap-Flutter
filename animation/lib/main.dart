import 'package:animation/animated_opacity/simple_demo_opacity.dart';
import 'package:flutter/material.dart';

// import 'animated_positioned_widget/simple_demo_animated_positioned.dart';
import 'Tween_Class/generic_tween.dart';
import 'animated_class/simple_animated_class.dart';
import 'animated_positioned_widget/simple_demo_animated_positioned.dart';
import 'animated_positioned_widget/simple_method2.dart';
import 'animated_size/simple_demo_animatedsize.dart';
import 'view/explicitAnimation.dart';
import 'view/home.dart';
import 'view/implicit_animation.dart';

void main()
{
    runApp(AnimationHome());
}
class AnimationHome extends StatelessWidget {

  static const String home = '/home';
  static const String implicitAnimation = '/implicit_animation';
  static const String explicitAnimation = '/explicit_animation';
  static const String animatedOpacity = '/animated_opacity';
  static const String animatedSize = '/animated_size';
  static const String animatedPositioned = '/animated_positioned';
  static const String animatedPositionedTimer = '/animated_positioned_timer';
  static const String animatedTweenGeneric = '/tween_generic';
  static const String animatedClass = '/animated_class';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       initialRoute: home,
      routes: {
           home: (context) => HomeScreenAnimation(),
           implicitAnimation: (context) => ImplicitAnimationScreen(),
           explicitAnimation: (context) => ExplicitAnimationScreen(),
           animatedOpacity: (context) => AnimatedOpacitySecreen(),
           animatedSize: (context) => AnimatedSizeScreen(),
           animatedPositioned: (context) => AnimatedPositionedScreen(),
           animatedPositionedTimer: (context) =>  AnimatedPositionedScreenMethod2(),
           animatedTweenGeneric: (context) => TweenSimpleExample(),
           animatedClass: (context) => TweenAnimationScreen()

      },
    );
  }
}
