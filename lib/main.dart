
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todolist/add_list.dart';
import 'package:todolist/list_item.dart';
import 'package:todolist/login_screen.dart';
import 'package:todolist/to_dolist.dart';
void main(){
  runApp( MaterialApp(
    title: 'ToDo list App',
    theme: ThemeData(useMaterial3: true),
    home: const LoginScreen(),
      ),
  );
}