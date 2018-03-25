import 'package:flutter/material.dart' ;
import './CenterPage.dart' as center;
import './LeftPage.dart' as left;
import './RightPage.dart' as right;

    
void main() {
  runApp(new MaterialApp(
  home: new MyTabs()
  ));
}

class MyTabs extends StatefulWidget {
  @override
  MyTabsState createState() => new MyTabsState();
}

class MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {

  TabController controller;

 @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Pages"),
          backgroundColor: Colors.green,
          /*bottom: new TabBar(
            controller: controller,
            tabs: <Tab>[
              new Tab(icon: new Icon(Icons.arrow_back)),
              new Tab(icon: new Icon(Icons.arrow_drop_down_circle)),
              new Tab(icon: new Icon(Icons.arrow_forward)),
            ]),*/
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new left.LeftPage(),
          new center.CenterPage(),
          new right.RightPage(),
        ],
      ),
    );
  }
}