import 'package:flutter/material.dart';
import 'package:undanaturalinventory/Helpers.dart';

import 'mainMenu.dart';

class NewProduct extends StatefulWidget {
  @override
  _NewProduct createState() => _NewProduct();
}

/// This is the private State class that goes with MyStatefulWidget.
class _NewProduct extends State<NewProduct> {
  final _formKey = GlobalKey<FormState>();
  String _username = "";
  String _password = "";

  void _setUsername(String username) {
    setState(() {
      _username = username;
    });
  }

  void _setPassword(String password) {
    setState(() {
      _password = password;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.all(Helpers.getHeight(context, percentage: 3)),
              child: Text(
                "New Product",
                style: TextStyle(
                    fontFamily: "Futura",
                    fontWeight: FontWeight.w100,
                    color: Helpers.getPink()),
                textScaleFactor: 2,
              ),
            ),
            Form(
              key: _formKey,
              child: Container(
                height: Helpers.getHeight(context, percentage: 35),
                width: Helpers.getWidth(context, percentage: 80),
                margin: EdgeInsets.only(
                    bottom: Helpers.getHeight(context, percentage: 10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    TextFormField(
                      style: TextStyle(color: Helpers.getPink()),
                      decoration: new InputDecoration(
                          hintStyle: TextStyle(color: Helpers.getPink()),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Helpers.getPink(), width: 2.0),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Helpers.getPink(), width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Helpers.getPink(), width: 1.0),
                          ),
                          labelText: 'Smell',
                          labelStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 22,
                            fontFamily: "Futura",
                            fontWeight: FontWeight.w100,
                          ),
                          hintText: "E.g. Coconut"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a smell';
                        }
                        _setUsername(value);
                        return null;
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      style: TextStyle(color: Helpers.getPink()),
                      decoration: new InputDecoration(
                        hintStyle: TextStyle(color: Helpers.getPink()),
                        hintText: "Password",
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Helpers.getPink(), width: 2.0),
                        ),
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Helpers.getPink(), width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Helpers.getPink(), width: 1.0),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        _setPassword(value);
                        return null;
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: Helpers.getHeight(context, percentage: 3)),
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MainMenu()),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Helpers.getPink(),
                          padding: EdgeInsets.symmetric(
                              vertical:
                                  Helpers.getHeight(context, percentage: 2.4),
                              horizontal:
                                  Helpers.getWidth(context, percentage: 33)),
                        ),
                        child: const Text('LOG IN'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
