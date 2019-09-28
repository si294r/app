import 'package:flutter/material.dart';

class ViewContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text('View Contact'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              print('buat edit');
            },
          ),
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              print('buat delete');
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Jack Sparrow'),
              subtitle: Text('name'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('12345678'),
              subtitle: Text('phone'),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('jack@email.com'),
              subtitle: Text('email'),
            ),
          ],
        ),
      ),
    );
  }
}
