import 'package:flutter/material.dart';
import 'package:resume_bilder/resume/util.dart';

class Resume_workspace extends StatefulWidget {
  const Resume_workspace({super.key});

  @override
  State<Resume_workspace> createState() => _Resume_workspaceState();
}

class _Resume_workspaceState extends State<Resume_workspace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Resume workspace",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            height: 70,
            width: double.infinity,
            decoration: BoxDecoration(color: Theme.of(context).highlightColor),
            child: Center(
              child: Text(
                "Build options",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 20),
              ),
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: resumelist.map(
                (e) {
                  String? menu = e["menu_name"];
                  dynamic icon = e["icon"];
                  String route = e["route_name"];
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, route);
                    },
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Colors.black12))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 08.0),
                            child: Icon(
                              icon,
                              size: 35,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 38.0),
                            child: Text(
                              menu ?? "",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 23,
                                  letterSpacing: 1,
                                  wordSpacing: 1,
                                  leadingDistribution:
                                      TextLeadingDistribution.even,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 28.0),
                            child: Icon(Icons.arrow_forward_ios),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ).toList(),
            ),
          )),
        ],
      ),
    );
  }
}
