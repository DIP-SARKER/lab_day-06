import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

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
              Container(
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
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text("Contact"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.edit),
                title: Text("Edit"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.balance),
                title: Text("Balance"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.wifi),
                title: Text("WiFi"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.share),
                title: Text("Share"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.dangerous_outlined),
                title: Text("Cross"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.alarm),
                title: Text("Clock"),
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
        body: Column(
          children: [
            Text("Hello World"),
            CachedNetworkImage(
              imageUrl:
                  "https://cdn.pixabay.com/photo/2023/09/06/02/21/ice-8236115_960_720.jpg",
              placeholder: (context, url) =>
                  Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ],
        ),
      ),
    );
  }
}
