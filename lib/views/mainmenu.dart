import 'package:flutter/material.dart';
import 'package:kakatiyauni/viewmodels/appdatamodel.dart';
import 'package:kakatiyauni/views/courses.dart';

class MainMenu extends StatefulWidget {
  MainMenu();

  @override
  _MainMenuState createState() => _MainMenuState();
}

//ListTile.divideTiles(
class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    var model = AppDataModel();

    return new Drawer(
        child: new ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        new Container(
            height: 150,
            child: new DrawerHeader(
                child: InkWell(
              onTap: () {
                setState(() {});
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.center,
                child: const Text("Title"),
                decoration:
                    new BoxDecoration(color: Theme.of(context).accentColor),
                // margin: EdgeInsets.all(0.0),
                //padding: EdgeInsets.all(0.0),
              ),
            ))),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Home'),
        ),
        new Divider(height: 1),
        ExpansionTile(
          initiallyExpanded: true,
          leading: Icon(Icons.trending_up),
          title: Text("Administration"),
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Vice-chancellor'),
            ),
            new Divider(height: 1),
            ListTile(
              leading: Icon(Icons.trending_up),
              title: Text('Registrar'),
            ),
            new Divider(height: 1),
          ],
        ),
     
        new Divider(height: 1),
        ExpansionTile(
          initiallyExpanded: true,
          leading: Icon(Icons.account_balance),
          title: Text("Academics"),
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.attach_money),
              title: Text('Faculty'),
            ),
            new Divider(height: 1),
            ListTile(
              leading: Icon(Icons.format_list_bulleted),
              title: Text('Courses'),
              onTap: ()=> Navigator.pushReplacement(context, new MaterialPageRoute(builder: (BuildContext context)=> CoursesPage())),
            ),
            new Divider(height: 1),
            ListTile(
              leading: Icon(Icons.view_list),
              title: Text('Departments'),
            ),
            new Divider(height: 1),
            ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text('Colleges'),
            ),
            new Divider(height: 1),
          ],
        ),
        ListTile(
          leading: Icon(Icons.view_list),
          title: Text('News'),
        ),
        new Divider(height: 1),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
        ),
        new Divider(height: 1),
        ListTile(
          leading: Icon(Icons.info),
          title: Text('About'),
        ),
        new Divider(height: 1),
      ],
    ) //end listview
        ); //end Drawar
  }
}
