import 'package:flutter/material.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Project",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w700, fontSize: 25),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(child: Projectwidget()),
        ],
      ),
    );
  }
}

class Projectwidget extends StatefulWidget {
  const Projectwidget({super.key});

  @override
  State<Projectwidget> createState() => _ProjectwidgetState();
}

class _ProjectwidgetState extends State<Projectwidget> {
  GlobalKey<FormState> gkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            height: 800,
            width: double.infinity,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.5, 0.5),
                      blurRadius: 10)
                ]),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 208.0, top: 30),
                  child: Text(
                    "Project Title",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.black12,
                        enabled: true,
                        filled: true,

                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,width: 2)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Resume builder App"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 208.0, top: 20),
                  child: Text(
                    "Technologies",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 280.0, top: 20),
                  child: Text(
                    "Roles",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 28, right: 28),
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.black12,
                        enabled: true,
                        filled: true,

                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,width: 2)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Resume builder App"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 208.0, top: 20),
                  child: Text(
                    "Technologies",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 28, right: 28),
                  child: TextField(

                    decoration: InputDecoration(
                        fillColor: Colors.black12,
                        enabled: true,
                        filled: true,

                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,width: 2)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Organize team members,code analysis"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 158.0, top: 20),
                  child: Text(
                    "Project Description",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 28, right: 28),
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.black12,
                        enabled: true,
                        filled: true,

                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,width: 2)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Enter your Project Description"),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.black)),
                    onPressed: () {},
                    child: Text(
                      "Save",
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
