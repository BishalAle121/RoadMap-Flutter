import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       initialRoute: home,
      routes: {
           home: (context) => HomeScreenAnimation(),
           implicitAnimation: (context) => ImplicitAnimationScreen(),
           explicitAnimation: (context) => ExplicitAnimationScreen()
      },
    );
  }
}
