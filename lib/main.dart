//import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/appbody.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        endDrawer: Drawer(),
        drawer: Drawer(
          child: ListView(
            children: [
              SizedBox(
                height: 70,
                child: DrawerHeader(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.gif_outlined),
                      ElevatedButton(
                        onPressed: () {},
                        child: Icon(Icons.close),
                      )
                    ],
                  ),
                ),
              ),
              ListTile(
                focusColor: Colors.amber,
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.people),
                title: Text("User"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("Contact"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.edit),
                title: Text("Edit"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.balance),
                title: Text("Balance"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.wifi),
                title: Text("WiFi"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.share),
                title: Text("Share"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.dangerous_outlined),
                title: Text("Cross"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.alarm),
                title: Text("Clock"),
                trailing: TextButton(
                  onPressed: () {},
                  child: Text("GO"),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Advanced UI-LAB 06"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Appbody(),
      ),
    );
  }
}
