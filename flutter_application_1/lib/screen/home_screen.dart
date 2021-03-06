import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        drawer: Drawer(
          child: Text("Hello Drawer"),
        ),
        appBar: AppBar(
          title: Text(
            "HomePage",
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Container(color: Colors.red, child: Text("AB")),
              Text("AB"),
              Container(
                width: 150,
                height: 150,
                color: Colors.cyan[600],
                child: Image.asset(
                  'assets/images/dog.jpg',
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.phone),
              label: "Phone",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.date_range),
              label: "Date",
            ),
          ],
        ),
      ),
    );
  }
}
