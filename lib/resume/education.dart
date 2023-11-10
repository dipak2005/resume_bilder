import 'package:flutter/material.dart';
import 'package:resume_bilder/resume/util.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Education",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w700, fontSize: 25),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Educationwidget(),
          ),
        ],
      ),
    );
  }
}

class Educationwidget extends StatefulWidget {
  const Educationwidget({super.key});

  @override
  State<Educationwidget> createState() => _EducationwidgetState();
}

class _EducationwidgetState extends State<Educationwidget> {
  TextEditingController namecontroller6 = TextEditingController();
  TextEditingController namecontroller7 = TextEditingController();
  TextEditingController namecontroller8 = TextEditingController();
  TextEditingController namecontroller9 = TextEditingController();

  GlobalKey<FormState> gkey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    namecontroller6.text = resume.university ?? "";
    namecontroller7.text = resume.coureses ?? "";
    namecontroller8.text = resume.marks ?? "";
    namecontroller9.text = resume.year ?? "";
  }

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Form(
        key: gkey,
        child: Column(
          children: [
            Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18),
                child: Container(
                  height: 600,
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.5, 0.5),
                            blurRadius: 10),
                      ],
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 178.0, top: 20),
                        child: Text(
                          "Course/Degree",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 28.0, vertical: 10),
                        child: TextFormField(
                          controller: namecontroller7,
                          validator: (value) {
                            if (value?.isEmpty ?? true) {
                              return " * please Enter Course";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                              fillColor: Colors.black12,
                              enabled: true,
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 2)),
                              hintText: "B.tech information Technology",
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 88.0),
                        child: Text(
                          "School/College/institute",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 28.0, vertical: 10),
                        child: TextField(
                          controller: namecontroller6,
                          decoration: InputDecoration(
                              fillColor: Colors.black12,
                              enabled: true,
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 2)),
                              hintText: "Bhagavan Mahavir university",
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 88.0),
                        child: Text(
                          "School/College/institute",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 28.0, vertical: 10),
                        child: TextField(
                          controller: namecontroller8,
                          decoration: InputDecoration(
                              fillColor: Colors.black12,
                              enabled: true,
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 2)),
                              hintText: "70% (or) 7.0 CGPA",
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 205.0),
                        child: Text(
                          "year of pass",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 28.0, vertical: 10),
                        child: TextField(
                          controller: namecontroller9,
                          keyboardType: TextInputType.datetime,
                          decoration: InputDecoration(
                              fillColor: Colors.black12,
                              enabled: true,
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 2)),
                              hintText: "2019",
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),
                      ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.black)),
                          onPressed: () {
                            bool isvalied =
                                gkey.currentState?.validate() ?? true;
                            if (isvalied) {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                      content: Column(
                                children: [
                                  Text(
                                    "Saved Successfully",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  )
                                ],
                              )));
                              resume.university=namecontroller6.text;
                              resume.coureses=namecontroller7.text;
                              resume.marks=namecontroller8.text;
                              resume.year=namecontroller9.text;
                              gkey.currentState?.save();
                            }
                          },
                          child: Text(
                            "Save",
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
