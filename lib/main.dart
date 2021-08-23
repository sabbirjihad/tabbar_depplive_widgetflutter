import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {

  // late TabController _tabController;

  @override
  void initState() {
    //_tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold (
          appBar: AppBar(
              backgroundColor: Colors.blue,
              title: Text('Appbar Widget Example'),
              centerTitle: true,
              elevation: 30.0,
              shadowColor: Colors.amberAccent,
              toolbarOpacity: .9,
              //toolbarHeight: 62.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              leading: Icon(Icons.menu),
              actions: [
                Icon(Icons.favorite),
                IconButton(icon: Icon(Icons.search), onPressed: (){print('search');}),
                Icon(Icons.more_vert)
              ],
              bottom: TabBar(
                //controller: _tabController,
                tabs: [
                  Tab(
                    icon: Icon(Icons.person),
                    text: 'Person',
                  ),
                  Tab(
                    icon: Icon(Icons.card_travel),
                    text: 'Travel',
                  ),
                  Tab(
                    icon: Icon(Icons.shopping_cart),
                    text: 'Shopping',
                  )
                ],
              )
          ),
          body: TabBarView(
            //controller: _tabController,
            children: [
              Center(child: Text("Person")),
              Center(child: Text("Travel")),
              Center(child: Text("Shopping")),
            ],
          ),
          bottomNavigationBar: Material(
            color: Colors.green,
            shape:  RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10))
            ),
            child: TabBar(
              labelColor: Colors.deepOrange,
              unselectedLabelColor: Colors.grey,
              //controller: _tabController,
              tabs: [
                Tab(
                  icon: Icon(Icons.person),
                  text: 'Person',
                ),
                Tab(
                  icon: Icon(Icons.card_travel),
                  text: 'Travel',
                ),
                Tab(
                  icon: Icon(Icons.shopping_cart),
                  text: 'Shopping',
                )
              ],
            ),
          ),

        ),
      ),
    );
  }
}