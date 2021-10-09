import 'dart:ffi';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('News Portal'),
      ),
      // Drawer starts
      drawer:Drawer(
        child: Container( color: Colors.purpleAccent,
          child: ListView( children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
                accountName: null,
                accountEmail: null,
            ),
            ListTile(
              leading: Icon(Icons.public),
              title: Text('International',style: TextStyle(color: Colors.white),),
            )
          ],),
        ),
      ) ,
      // Drawer ends
      body: Container(),
    );
  }
}
