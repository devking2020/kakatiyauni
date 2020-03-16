
import 'package:flutter/material.dart';
import 'package:kakatiyauni/views/base.dart';

class CoursesPage extends StatefulWidget {
  CoursesPage();

  @override
  _CoursesPageState createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  @override
  Widget build(BuildContext context) {

    var widget = new Container(child: const Text("Courses"),);
    return BasePage(widget1: widget);
  }
}