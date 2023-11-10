import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_bilder/resume/util.dart';

class Contact_info extends StatefulWidget {
  const Contact_info({super.key});

  @override
  State<Contact_info> createState() => _Contact_infoState();
}

int page = 0;

class _Contact_infoState extends State<Contact_info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Contact_info",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w700, fontSize: 25),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextButton(
                    onPressed: () {
                      page = 0;
                      setState(() {});
                    },
                    child: Text(
                      "contacts",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    )),
              ),
              Expanded(
                child: TextButton(
                    onPressed: () {
                      page = 1;
                      setState(() {});
                    },
                    child: Text(
                      "photos",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          textBaseline: TextBaseline.alphabetic),
                    )),
              ),
              Divider(
                thickness: 3,
                color: Colors.blueAccent,
              )
            ],
          ),
          Expanded(
            child: IndexedStack(
              index: page,
              children: [
                contact(),
                photos(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class contact extends StatefulWidget {
  const contact({super.key});

  @override
  State<contact> createState() => _contactState();
}

class _contactState extends State<contact> {
  GlobalKey<FormState> gkey = GlobalKey<FormState>();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController namecontroller1 = TextEditingController();
  TextEditingController namecontroller2 = TextEditingController();
  TextEditingController namecontroller3 = TextEditingController();
  TextEditingController namecontroller4 = TextEditingController();
  TextEditingController namecontroller5 = TextEditingController();
  TextEditingController namecontroller6 = TextEditingController();
  TextEditingController namecontroller7 = TextEditingController();
  TextEditingController namecontroller8 = TextEditingController();
  TextEditingController namecontroller9 = TextEditingController();
  TextEditingController namecontroller10 = TextEditingController();

  bool isvalied = false;
  String name = "";
  String email = "";
  String phone = "";
  String address = "";
  String university = "";
  String marks = "";
  String year = "";

  String experience = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    namecontroller.text = resume.fname ?? "";
    namecontroller1.text = resume.email ?? "";
    namecontroller2.text = resume.phone ?? "";
    namecontroller3.text = resume.address ?? "";
    namecontroller4.text = resume.address1 ?? "";
    namecontroller5.text = resume.address2 ?? "";
    namecontroller6.text = resume.university ?? "";
    namecontroller7.text = resume.coureses ?? "";
    namecontroller8.text = resume.marks ?? "";
    namecontroller9.text = resume.year ?? "";
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0, right: 18),
      child: Container(
        margin: EdgeInsets.only(top: 40),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey, blurRadius: 10, offset: Offset(0.5, 0.5))
          ],
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: SingleChildScrollView(
          child: Form(
            key: gkey,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Icon(
                          Icons.person,
                          size: 30,
                        )),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextFormField(
                        controller: namecontroller,
                        clipBehavior: Clip.antiAlias,
                        selectionHeightStyle:
                            BoxHeightStyle.includeLineSpacingBottom,
                        selectionWidthStyle: BoxWidthStyle.tight,
                        onChanged: (value) {
                          print("$value");
                        },
                        validator: (value) {
                          if (value?.isEmpty ?? true) {
                            return " * please Enter user name";
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          fillColor: Colors.black12,
                          enabled: true,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 2)),
                          hintText: "Enter user Name",
                          label: Text(
                            "Please Enter User Name",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Icon(
                          Icons.mail,
                          size: 30,
                        )),
                    SizedBox(width: 10),
                    Expanded(
                        child: TextFormField(
                      controller: namecontroller1,
                      onFieldSubmitted: (value) {
                        print("$value");
                      },
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return " * please Enter user email";
                        } else if (value?.contains("@") ?? false) {
                          return null;
                        } else {
                          return "Invalied Email";
                        }
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          prefix: Text(
                            "@",
                            style: TextStyle(color: Colors.black),
                          ),
                          fillColor: Colors.black12,
                          enabled: true,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 2)),
                          hintText: " Email",
                          label: Text(
                            "  Enter user email..",
                            style: TextStyle(color: Colors.black),
                          )),
                    )),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Icon(
                          Icons.phone_android,
                          size: 30,
                        )),
                    SizedBox(width: 10),
                    Expanded(
                        child: TextFormField(
                      controller: namecontroller2,
                      clipBehavior: Clip.antiAlias,
                      validator: (value) {
                        var intval = int.tryParse(value!);
                        if (value?.isEmpty ?? true) {
                          return "*  please Enter user phone number";
                        } else if (intval == null) {
                          return "* Invalied phone number";
                        } else if ((value?.length) != 10) {
                          return "Enter 10 digits";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.phone,
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Colors.black12,
                        enabled: true,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2)),
                        label: Text(
                          "Enter user phone",
                          style: TextStyle(color: Colors.black),
                        ),
                        hintText: "Phone",
                        prefix: Text(
                          "+91",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    )),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Icon(
                          Icons.location_on_sharp,
                          size: 30,
                        )),
                    SizedBox(width: 10),
                    Expanded(
                        child: TextFormField(
                      controller: namecontroller3,
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return "*  please Enter user Address";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.streetAddress,
                      decoration: InputDecoration(
                        fillColor: Colors.black12,
                        enabled: true,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2)),
                        label: Text(
                          "Address",
                          style: TextStyle(color: Colors.black),
                        ),
                        hintText: "user Address line:1",
                      ),
                    )),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 70.0, top: 10, right: 20),
                  child: TextFormField(
                    controller: namecontroller4,
                    decoration: InputDecoration(
                        fillColor: Colors.black12,
                        enabled: true,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2)),
                        hintText: "user Address line:2",
                        suffix: Text("<-"),
                        label: Text(
                          "Address",
                          style: TextStyle(color: Colors.black),
                        )),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 70.0, right: 20, top: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.black12,
                        enabled: true,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2)),
                        hintText: "user Address line:3",
                        label: Text(
                          'Address',
                          style: TextStyle(color: Colors.black),
                        )),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.black)),
                        onPressed: () {
                          bool isvalide = gkey.currentState?.validate() ?? true;
                          if (isvalide) {
                            gkey.currentState?.save();
                            FocusScope.of(context).unfocus();
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              backgroundColor: Colors.black12,
                              content: Column(
                                children: [
                                  Text(
                                    "You log successfully",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  )
                                ],
                              ),
                            ));
                            resume.fname = namecontroller.text;
                            resume.email = namecontroller1.text;
                            resume.phone = namecontroller2.text;
                            resume.address = namecontroller3.text;
                            resume.address1 = namecontroller4.text;
                            resume.address2 = namecontroller5.text;

                            print(resume.fname);
                            gkey.currentState?.save();
                          }
                        },
                        child: Text(
                          "Save",
                          style: TextStyle(color: Colors.white),
                        )),
                    SizedBox(
                      width: 30,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          gkey.currentState?.reset();
                          resume.fname = namecontroller.text;
                          resume.email = namecontroller1.text;
                          resume.phone = namecontroller2.text;
                          resume.address = namecontroller3.text;
                          resume.address1 = namecontroller4.text;
                          resume.address2 = namecontroller5.text;
                        },
                        child: Text("Clear"))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class photos extends StatefulWidget {
  const photos({super.key});

  @override
  State<photos> createState() => _photosState();
}

class _photosState extends State<photos> {
  // GlobalKey<FormState> gkey = GlobalKey<FormState>();
  String? filepath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: 300,
          width: 380,
          alignment: Alignment.topCenter,
          margin: EdgeInsets.only(top: 30),
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.5, 0.5),
                    blurRadius: 10)
              ],
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Center(
              child: Stack(
            children: [
              CircleAvatar(
                radius: 80,
                backgroundColor: Colors.grey,
                backgroundImage:
                    filepath != null ? FileImage(File(filepath ?? "")) : null,
                child: Text(
                  "ADD",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Positioned(
                bottom: 1,
                width: 260,
                child: IconButton(
                  onPressed: () {
                    pickimage(true);
                  },
                  icon: Icon(
                    Icons.camera_alt_rounded,
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }

  void pickimage(bool isCamara) async {
    XFile? file = await ImagePicker()
        .pickImage(source: isCamara ? ImageSource.camera : ImageSource.gallery);
    filepath = file?.path;
    setState(() {});
  }
}
