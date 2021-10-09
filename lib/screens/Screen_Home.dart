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
              onTap: (){
                Navigator.of(context).pop();
              },
              leading: Icon(Icons.public, color: Colors.white,),
              title: Text('International',style: TextStyle(color: Colors.white),),
            ),
            _newsCategory(context, Icons.image, 'Local News'),
            _newsCategory(context, Icons.people, 'Politics News'),
            _newsCategory(context, Icons.sports_baseball, 'Sports News'),
          ],),
        ),
      ) ,
      // Drawer ends
      body: Container(),
    );
  }

  Widget _newsCategory(ctx, IconData iconCat, String titleCat ){
    return ListTile(
      onTap: () {Navigator.of(ctx).pop();},
      leading: Icon(
        iconCat, color: Colors.white,
      ),
      title: Text(titleCat, style: TextStyle(color: Colors.white),),
    );
  }

}
