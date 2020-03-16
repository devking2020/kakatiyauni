
import 'package:flutter/material.dart';
import 'package:kakatiyauni/views/mainmenu.dart';

class BasePage extends StatefulWidget {
  final Widget widget1;
  BasePage({this.widget1});

  @override
  _BasePageState createState() => _BasePageState(widget1);
}

//ListTile.divideTiles(
class _BasePageState extends State<BasePage> {
   Widget widget1;
  _BasePageState(Widget widget)
  {
    this.widget1 = widget;
  }
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: AppBar(actions: <Widget>[], title: const Text("title1"),),
      drawer: MainMenu(),
      body: widget1,
    );

  }
}