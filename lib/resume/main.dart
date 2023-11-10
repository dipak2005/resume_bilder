import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_bilder/resume/Achievement.dart';
import 'package:resume_bilder/resume/Carrier_obj.dart';
import 'package:resume_bilder/resume/Contact_info.dart';
import 'package:resume_bilder/resume/Declaration.dart';
import 'package:resume_bilder/resume/Education.dart';
import 'package:resume_bilder/resume/Experience.dart';
import 'package:resume_bilder/resume/Project.dart';
import 'package:resume_bilder/resume/Homepage.dart';
import 'package:resume_bilder/resume/Personal_detail.dart';
import 'package:resume_bilder/resume/Hobbies.dart';
import 'package:resume_bilder/resume/Refrences.dart';
import 'package:resume_bilder/resume/Resume_workspace.dart';
import 'package:resume_bilder/resume/Splash_screen.dart';
import 'package:resume_bilder/resume/Technical_skill.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.fallback(useMaterial3: true),
      initialRoute: "Splash_screen",
      routes: {
        "Splash_screen": (context) => Splash_screen(),
        "Homepage": (context) => Homepage(),
        "Resume_workspace": (context) =>  Resume_workspace(),
        "Contact_info": (context) =>  Contact_info(),
        "Carrier_obj": (context) => Carrier_obj(),
        "Achievement": (context) => Achievement(),
        "Personal_detail": (context) => Personal_detail(),
        "Declaration": (context) => Declaration(),
        "Education": (context) => Education(),
        "Experience": (context) => Experience(),
        "Technical_skill": (context) => Technical_skill(),
        "Hobbies": (context) => Hobbies(),
        "Project": (context) => Project(),
        "Refrences": (context) => Refrences(),
      },
    );
  }
}
