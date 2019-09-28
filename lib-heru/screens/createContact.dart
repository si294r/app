import 'package:flutter/material.dart';

class CreateContact extends StatefulWidget {
  @override
  _CreateContactState createState() => _CreateContactState();
}

class _CreateContactState extends State<CreateContact> {
  final _formKey = GlobalKey<FormState>();
  String _name, _phone, _email;

  clear() {
    _formKey.currentState?.reset();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            print('back');
            Navigator.pop(context);
          },
        ),
        title: Text('Create Contact'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  labelText: 'Name *',
                ),
                validator: (val) {
                  print(val);
                  if (val.isEmpty) {
                    return 'Name is required!';
                  }

                  return null;
                },
                onSaved: (val) {
                  print('ini $val');
                  _name = val;
                },
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  icon: Icon(Icons.phone),
                  labelText: 'Phone *',
                ),
                validator: (val) {
                  if (val.isEmpty) {
                    return 'Phone is required!';
                  }

                  return null;
                },
                onSaved: (String val) {
                  print('ini $val');
                  _phone = val;
                },
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  icon: Icon(Icons.email),
                  labelText: 'Email *',
                ),
                validator: (String val) {
                  if (val.isEmpty) {
                    return 'Email is required!';
                  }

                  return null;
                },
                onSaved: (String val) {
                  print('ini $val');
                  _email = val;
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.save),
        onPressed: () {
          if (_formKey.currentState.validate()) {
            _formKey.currentState.save();
            print('saved $_name, $_phone, $_email!');
            clear();
          } else {
            print('belum isi');
          }
        },
      ),
    );
  }
}
