import 'dart:async';

import 'package:flutter/material.dart';

import 'Onbonding_page1.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {

  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => Onbonding_Screen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF080808),
      body: Center(
        child: Image(image: AssetImage("Assets/image/to_do.png")),
      ),


    );
  }
}
