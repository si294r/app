import 'package:flutter/material.dart';
import 'package:futter_app_name/layout/screen/createContact.dart';
import 'package:futter_app_name/layout/screen/viewContact.dart';

class ContactList extends StatefulWidget {
  @override
  
  _ContactListState createState() => _ContactListState();
}


class _ContactListState extends State<ContactList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
      ),
      body: Center(
        child: ListView.builder(
          padding: EdgeInsets.all(8.0),
          itemCount: 10,
          itemBuilder: (BuildContext context, int i){
            return Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Jack Sparrow'),
                  onTap: () {
                    print('tapped!');
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ViewContact()));
                  }
                ),
              ],
            );
          }
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('click'),
        onPressed: () {
          // print('clicked!');
          Navigator.push(context, MaterialPageRoute(builder: (context) => CreateContact()));
        },),
    );
  }
}