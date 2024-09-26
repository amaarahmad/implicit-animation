import 'package:flutter/material.dart';
import 'package:implicitanimation/animated-align.dart';
import 'package:implicitanimation/animated-container.dart';
import 'package:implicitanimation/animated-opacity.dart';
import 'package:implicitanimation/animated-padding.dart';

import 'package:implicitanimation/animated-positioned.dart';
import 'package:implicitanimation/home-view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(

            backgroundColor: WidgetStatePropertyAll(Colors.cyan),
          )
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}

