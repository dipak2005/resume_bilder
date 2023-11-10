import 'package:flutter/material.dart';

class Refrences extends StatefulWidget {
  const Refrences({super.key});

  @override
  State<Refrences> createState() => _RefrencesState();
}

class _RefrencesState extends State<Refrences> {
  bool isvalied = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Refrences",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w700, fontSize: 25),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(child: rfwidget()),
        ],
      ),
    );
  }
}

class rfwidget extends StatefulWidget {
  const rfwidget({super.key});

  @override
  State<rfwidget> createState() => _rfwidgetState();
}

class _rfwidgetState extends State<rfwidget> {
  GlobalKey<FormState> gkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18),
              child: Container(
                height: 450,
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
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: SingleChildScrollView(scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 168.0, top: 20),
                          child: Text(
                            "Refrence Name",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 28.0, vertical: 10),
                          child: TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.black12,
                                enabled: true,
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 2)),
                                hintText: "Dipak Thakur",
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(5))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 208.0),
                          child: Text(
                            "Designation",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 28.0, vertical: 10),
                          child: TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.black12,
                                enabled: true,
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 2)),
                                hintText: "Marketing Manager,ID-342332",
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(5))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 123.0),
                          child: Text(
                            "Organization/institute",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 28.0, vertical: 10),
                          child: TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.black12,
                                enabled: true,
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 2)),
                                hintText: "Green Energy Pvt.Ltd",
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(5))),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.black)),
                            onPressed: () {
                              bool isvalied =
                                  gkey.currentState?.validate() ?? true;
                              gkey.currentState?.save();
                            },
                            child: Text(
                              "Save",
                              style: TextStyle(color: Colors.white),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
