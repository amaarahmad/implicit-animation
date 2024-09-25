import 'package:flutter/material.dart';

class AnimatedAlignExample extends StatefulWidget {
  const AnimatedAlignExample({super.key});

  @override
  State<AnimatedAlignExample> createState() => _AnimatedAlignExampleState();
}

class _AnimatedAlignExampleState extends State<AnimatedAlignExample> {
  bool _aligned = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedAlign')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _aligned = !_aligned;
            });
          },
          child: Container(
            height: 200,
            width: 200,
            color: Colors.blue[50],
            child: AnimatedAlign(
              duration: const Duration(seconds: 1),
              alignment: _aligned ? Alignment.bottomRight : Alignment.topLeft,
              curve: Curves.easeInOut,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
