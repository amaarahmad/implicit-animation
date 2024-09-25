import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({super.key});

  @override
  State<AnimatedContainerExample> createState() => _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  bool _isBig = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedContainer')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _isBig = !_isBig;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            width: _isBig ? 200 : 100,
            height: _isBig ? 200 : 100,
            color: _isBig ? Colors.blue : Colors.red,
            alignment: _isBig ? Alignment.center : Alignment.bottomCenter,
            curve: Curves.easeInOut,
            child: const Text('Tap Me', style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
