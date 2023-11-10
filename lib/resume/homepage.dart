import 'package:flutter/material.dart';
import 'package:resume_bilder/resume/my_pdf.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Resume Builder",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
        ),
        actions: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return My_pdf();
            },));
          },
              child: Icon(Icons.picture_as_pdf_rounded)),
        ),],
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            height: 70,
            width: double.infinity,
            color: Theme.of(context).highlightColor,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: Text(
                  "Resumes",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                      color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 68.0),
            child: Image.asset(
          "assets/images/open-cardboard-box.png",
          height: 100,
          width: 100,
            ),
          ),Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              "No Resume + create new resume",
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
          )

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "Resume_workspace");
        },
        child: Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }
}
