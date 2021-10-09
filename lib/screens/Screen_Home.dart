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
        child: Container( color: Color(0xff004d37),
          child: ListView( children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Color(0xff004d37)),
                accountName: null,
                accountEmail: null,
            ),
            ListTile(
              leading: Icon(Icons.public, color: Colors.white,),
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
