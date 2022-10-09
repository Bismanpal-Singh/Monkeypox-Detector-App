
import 'package:flutter/material.dart';
import 'package:monkeypoxnew/Account_created.dart';
import 'package:monkeypoxnew/FrontPg.dart';
import 'package:monkeypoxnew/camera_page.dart';
import 'package:monkeypoxnew/forgot_pass.dart';
import 'package:monkeypoxnew/login.dart';
import 'package:monkeypoxnew/register.dart';
import 'package:monkeypoxnew/Result.dart';
import 'package:monkeypoxnew/instructionSlider.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'FrontPg',
    routes:{
      'FrontPg' : (context) => FrontPg(),
      'login' : (context)=>LoginPg(),
      'register' : (context) =>MyRegister(),
      'camera_page' : (context) => CameraPg(),
      'Account_created' : (context) => AccCreated(),
      'forgot_pass' : (context) => ForgotPass(),
      'Result' : (context) => Result(),
      'instructionSlider' : (context) => slider(),
    },
  ));
}

