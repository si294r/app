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
            onPressed: (){
              print('buat edit');
            },
          ),
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: (){
              print('buat delete');
            },
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.people),
                title: Text('kucing'),
                subtitle: Text('nama bianatang'),
              )
            ],
          )
        )

      )
    );
  }
}