import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/example.dart';
import 'package:flutter_application_1/screen/form_screen.dart';
import 'package:flutter_application_1/screen/list_view_screen.dart';

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
        //โครงสร้างของบ้าน
        drawer: Drawer(
          //ลิ้นชักด่านข้าง
          child: Text("Hello Drawer"),
        ),
        appBar: AppBar(
          //แถบด่านบน
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
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListViewScreen(),
                    ),
                  );
                },
                child: Text("กดปุ่มนี้"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FormScreen(),
                    ),
                  );
                },
                child: Text("FormScreen"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Example(),
                    ),
                  );
                },
                child: Text("Example"),
              ),
              DropdownButton(
                hint: Text("please check"),
                items: [
                  DropdownMenuItem(
                    onTap: () {},
                    value: 1,
                    child: Text("Button"),
                  ),
                  DropdownMenuItem(
                    onTap: () {},
                    value: 1,
                    child: Text("Button"),
                  )
                ],
                onChanged: (int value) {},
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
