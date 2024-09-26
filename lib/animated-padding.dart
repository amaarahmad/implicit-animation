import 'package:flutter/material.dart';

class AnimatedPaddingExample extends StatefulWidget {
  const AnimatedPaddingExample({super.key});

  @override
  State<AnimatedPaddingExample> createState() => _AnimatedPaddingExampleState();
}

class _AnimatedPaddingExampleState extends State<AnimatedPaddingExample> {
  double _paddingValue = 10.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedPadding')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _paddingValue = _paddingValue == 10.0 ? 200.0 : 10.0;
            });

          },
          child: AnimatedPadding(
            padding: EdgeInsets.all(_paddingValue),
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
            child: Container(
              color: Colors.green,
              child: const Text('Tap to Change Padding'),
            ),
          ),
        ),
      ),
    );
  }
}
