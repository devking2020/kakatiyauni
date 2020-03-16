import 'package:flutter/material.dart';

class KakatiyaUniApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        body: CustomScrollView(
          
          slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 120.0,
            floating: true,
            pinned: true,
            snap: true,
            backgroundColor: Colors.amberAccent,
            flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text('Title',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    )),
                background: Opacity(
                  child: Image.asset(
                    'assets/images/uni.png',
                    fit: BoxFit.contain,
                  ),
                  opacity: 0.4,
                )),
                
          ),
           
           new SliverList(
                
                  delegate: new SliverChildListDelegate(_buildList(50))
              ),
        ]));
    
  }
   List _buildList(int count) {
      List<Widget> listItems = List();
  
      for (int i = 0; i < count; i++) {
        listItems.add(new Padding(padding: new EdgeInsets.all(20.0),
            child: new Text(
                'Item ${i.toString()}',
                style: new TextStyle(fontSize: 25.0)
            )
        ));
      }
  
      return listItems;
    }
}
