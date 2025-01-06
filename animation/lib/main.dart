import 'package:animation/animated_opacity/simple_demo_opacity.dart';
import 'package:flutter/material.dart';

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
      },
    );
  }
}
