import 'package:flutter/material.dart';

class Hobbies extends StatefulWidget {
  const Hobbies({super.key});

  @override
  State<Hobbies> createState() => _HobbiesState();
}

class _HobbiesState extends State<Hobbies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hobbies",
          style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 25),
        ),centerTitle: true,elevation: 0,
      ),body: Column(
      children: [
        Expanded(child: pwidget(),),
      ],
    ),
    );
  }
}
class pwidget extends StatefulWidget {
  const pwidget({super.key});

  @override
  State<pwidget> createState() => _pwidgetState();
}

class _pwidgetState extends State<pwidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [

        ],
    );
  }
}

