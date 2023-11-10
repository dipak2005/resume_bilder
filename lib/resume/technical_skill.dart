import 'package:flutter/material.dart';
import 'package:resume_bilder/resume/util.dart';

class Technical_skill extends StatefulWidget {
  const Technical_skill({super.key});

  @override
  State<Technical_skill> createState() => _Technical_skillState();
}

class _Technical_skillState extends State<Technical_skill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Technical_skill",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(child: skill()),
        ],
      ),
    );
  }
}

class skill extends StatefulWidget {
  const skill({super.key});

  @override
  State<skill> createState() => _skillState();
}

List<TextEditingController> skilllist = [];

class _skillState extends State<skill> {
  TextEditingController namecontroller10=TextEditingController();
  GlobalKey<FormState> gkey=GlobalKey<FormState>();
  bool isvalied=false;
  String technicalskill="";
  @override
  void initState() {
    // TODO: implement initState
    namecontroller10.text=resume.technicalskill??"";

  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(color: Colors.grey, offset: Offset(0.9, 0.9), blurRadius: 10),
          ]),
          child: Column(
            children: [
              Text(
                "Enter your skills",
                style: TextStyle(
                    color: Colors.black, fontSize: 25, fontWeight: FontWeight.w700),
              ),
              Form(
                key: gkey,
                child: Column(
                  children: skilllist.map(
                    (e) {
                      return Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 18.0),
                              child: TextFormField(

                                validator: (value) {
                                  if(isvalied){
                                    return "please Enter your Skills";
                                  }else {
                                    return null;
                                  }
                                },
                                decoration:
                                    InputDecoration(hintText: "Enter your skills"),
                                controller: e,
                              ),
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                skilllist.remove(e);
                                setState(() {});
                              },
                              icon: Icon(Icons.delete))
                        ],
                      );
                    },
                  ).toList(),
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(10),
                child: OutlinedButton(
                  onPressed: () {
                    skilllist.add(TextEditingController());
                    setState(() {});
                  },
                  child: Icon(Icons.add),
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    skilllist.forEach((element) {
                      print(element.text);
                      gkey.currentState?.save();
                      FocusScope.of(context).unfocus();
                      resume.technicalskill=namecontroller10.text;
                    });
                  },
                  child: Text("Save"),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
