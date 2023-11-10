import 'package:flutter/material.dart';

List<Map<String,dynamic>> resumelist=[
  {
    "menu_name":"Contact Info",
    "icon":Icons.quick_contacts_mail_outlined,
    "route_name":"Contact_info",
  },
  {
    "menu_name":"Carrier obj",
    "icon":Icons.business_center,
    "route_name":"Carrier_obj",
  },
  {
    "menu_name":" Personal Detail",
    "icon":Icons.person_outline,
    "route_name":"Personal_detail",
  },
  {
    "menu_name":"Education",
    "icon":Icons.school,
    "route_name":"Education",

  },
  {
    "menu_name":"Experience",
    "icon":Icons.manage_accounts,
    "route_name":"Experience",
  },
  {
    "menu_name":"Technical_Skill",
    "icon":Icons.workspace_premium,
    "route_name":"Technical_skill",
  },
  {
    "menu_name":"Project",
    "icon":Icons.plagiarism_rounded,
    "route_name":"Project",
  },
  {
    "menu_name":"Interest/Hobbies",
    "icon":Icons.library_books,
    "route_name":"Hobbies",
  },
  {
    "menu_name":"Achievement",
    "icon":Icons.redeem,
    "route_name":"Achievement",
  },
  {
    "menu_name":"Refrences",
    "icon":Icons.handshake,
    "route_name":"Refrences",
  },
  {
    "menu_name":"Declaration",
    "icon":Icons.description,
    "route_name":"Declaration",
  },

];

Resume resume=Resume();

class Resume {
  String? fname;
  String? email;
  String? phone;
  String? address;
  String? address1;
  String? address2;
  String? coureses;
  String? university;
  String?  marks;
  String? technicalskill;
  String? experience;
  String? year;
  String? imgfile;
  String? company;
  String? roles;



}
