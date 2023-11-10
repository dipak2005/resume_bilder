import 'dart:async';

import 'package:flutter/material.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({super.key});

  @override
  State<Splash_screen> createState() => Splash_screenState();
}

class Splash_screenState extends State<Splash_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, "Homepage");
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xfff0f7fa), Color(0xffE4E2E3)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        "assets/images/declaration.png",
                        color: Colors.black,
                        height: 200,
                        width: 200,
                      ),
                      Text(
                        "Welcome to resume builder...",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 25),
                      ),
                      CircularProgressIndicator(color: Colors.black,),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
