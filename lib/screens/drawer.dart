import 'package:flutter/material.dart';  

class MyHomePage extends StatelessWidget {  
  final String title;  
  
  MyHomePage({Key key, this.title}) : super(key: key);  
  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(title: Text(title)),  
      body: Center(child: Text(  
          '',  
          style: TextStyle(fontSize: 20.0),  
          )  
      ),  
      drawer: Drawer(  
        child: ListView(  
          // Important: Remove any padding from the ListView.  
          padding: EdgeInsets.zero,  
          children: <Widget>[  
            UserAccountsDrawerHeader(  
              accountName: Text("Abhishek Mishra"),  
              accountEmail: Text("abhishekm977@gmail.com"),  
              currentAccountPicture: CircleAvatar(  
                backgroundColor: Colors.orange,  
                child: Text(  
                  "A",  
                  style: TextStyle(fontSize: 40.0),  
                ),  
              ),  
            ),  
            ListTile(  
              leading: Icon(Icons.home), title: Text("Page d'accueil"),  
              onTap: () {  
                Navigator.pop(context);  
              },  
            ),  
         
            ListTile(  
              leading: Icon(Icons.contacts), title: Text("Mes souvenirs"),  
              onTap: () {  
                Navigator.pop(context);  
              },  
            ),  
          ],  
        ),  
      ),  
    );  
  }  
}  