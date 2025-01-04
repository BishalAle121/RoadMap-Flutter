import 'package:flutter/material.dart';

import '../main.dart';

class HomeScreenAnimation extends StatefulWidget {
  const HomeScreenAnimation({super.key});

  @override
  State<HomeScreenAnimation> createState() => _HomeScreenAnimationState();
}

class _HomeScreenAnimationState extends State<HomeScreenAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
             Container(
               width: double.infinity,
               height: 80,
               child: ElevatedButton(
                   onPressed: (){
                       Navigator.pushNamed(context, AnimationHome.implicitAnimation);
                   },
                   style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent,
                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                   ),
                   child:const Text("ImplicitAnimation",style: TextStyle(color: Colors.white, fontSize: 40))
               ),
             ),
           SizedBox(height: 30,),
           Container(
            width: double.infinity,
            height: 80,
            child: ElevatedButton(
                onPressed: (){
                   Navigator.pushNamed(context, AnimationHome.explicitAnimation);
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                ),
                child:const Text("ExplicitAnimation",style: TextStyle(color: Colors.white, fontSize: 40),)
            ),
          )
        ],),
    ),
    );
  }
}
