import 'package:flutter/material.dart';

class Declaration extends StatefulWidget {
  const Declaration({super.key});

  @override
  State<Declaration> createState() => _DeclarationState();
}

class _DeclarationState extends State<Declaration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Declaration",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w700, fontSize: 25),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            dwidget(),
          ],
        ),
      ),
    );
  }
}

class dwidget extends StatefulWidget {
  const dwidget({super.key});

  @override
  State<dwidget> createState() => _dwidgetState();
}

class _dwidgetState extends State<dwidget> {
  GlobalKey<FormState> gkey = GlobalKey<FormState>();
  bool isvalied = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(

        width: double.infinity,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey, offset: Offset(0.5, 0.5), blurRadius: 10)
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Declaration",
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 20),
                    ),
                    Switch(
                      value: isvalied,
                      onChanged: (value) {
                        isvalied = value;
                        setState(() {});
                      },
                      activeColor: Colors.black,
                      autofocus: true,
                      hoverColor: Colors.white,
                      inactiveThumbColor
                          : Colors.black,
                      trackOutlineColor: MaterialStatePropertyAll(Colors.black),
                      thumbIcon
                      :MaterialStatePropertyAll(Icon(Icons.add)),
                    )
                  ],
                ),
              ),
              if (isvalied)
                Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0, right: 230),
                        child: Image.asset(
                          "assets/images/focus-icon-png-19.jpg",
                          height: 100,
                          width: 100,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(top: 8.0, left: 20, right: 20),
                      child: TextFormField(
                        validator: (value) {
                          var intval = int.tryParse(value ?? "");
                          if (value?.isEmpty ?? true) {
                            return "Enter valied Date";
                          } else if (intval == null) {
                            return "please Enter Date";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            fillColor: Colors.black12,
                            enabled: true,
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.black, width: 2)),
                            hintText: "Description",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    // SizedBox(
                    //   height: 10,

                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40.0, left: 30),
                          child: Text(
                            "Date",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w700,
                                fontSize: 18),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 128.0, top: 40),
                          child: Text(
                            "Place(interview\n/venue/city)",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w700,
                                fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 18.0),
                              child: TextField(
                                keyboardType: TextInputType.datetime,
                                decoration: InputDecoration(
                                    fillColor: Colors.black12,
                                    enabled: true,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black, width: 2)),
                                    hintText: "DD/MM/YYYY",
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(
                                            10))),
                              ),
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 18.0),
                              child: TextField(
                                keyboardType: TextInputType.datetime,
                                decoration: InputDecoration(
                                    fillColor: Colors.black12,
                                    enabled: true,
                                    filled: true,
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black, width: 2)),
                                    hintText: "DD/MM/YYYY",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                              ),
                            )),
                        SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStatePropertyAll(Colors.black)),
                        onPressed: () {
                          bool isvalied =
                              gkey.currentState?.validate() ?? false;
                          if (isvalied) {
                            gkey.currentState?.save();
                            FocusScope.of(context).unfocus();
                          }
                        },
                        child: Text(
                          "Save",
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
