import 'package:flutter/material.dart';
import 'package:implicitanimation/animated-align.dart';
import 'package:implicitanimation/animated-container.dart';
import 'package:implicitanimation/animated-opacity.dart';
import 'package:implicitanimation/animated-padding.dart';
import 'package:implicitanimation/animated-positioned.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Implicit animations",style: TextStyle(
          fontWeight: FontWeight.w600
        ),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const AnimatedAlignExample()));
            }, child: const Text("Animated Align",style: TextStyle(color: Colors.white),)),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const AnimatedContainerExample()));

            }, child: const Text("Animated Container",style: TextStyle(color: Colors.white),)),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const AnimatedOpacityExample()));

            }, child: const Text("Animated Opacity",style: TextStyle(color: Colors.white),)),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const AnimatedPositionedExample()));

            }, child: const Text("Animated Positioned",style: TextStyle(color: Colors.white),)),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const AnimatedPaddingExample()));

            }, child: const Text("Animated Padding",style: TextStyle(color: Colors.white),)),
          ],
        ),
      ),
    );
  }
}
