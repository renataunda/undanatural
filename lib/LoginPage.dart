import 'package:flutter/material.dart';
import 'Helpers.dart';
import 'mainMenu.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
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
    return Scaffold(
      appBar: Helpers.getAppBar(context),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: Helpers.getHeight(context, percentage: 10),
                    top: Helpers.getHeight(context, percentage: 10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: Helpers.getHeight(context, percentage: 3)),
                      child: Text(
                        "Log in",
                        style: TextStyle(
                            fontFamily: "Futura",
                            fontWeight: FontWeight.w100,
                            color: Helpers.getPink()),
                        textScaleFactor: 3,
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
                                  hintStyle:
                                      TextStyle(color: Helpers.getPink()),
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
                                  hintText: "mariann@example.com"),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your email';
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
                                  top: Helpers.getHeight(context,
                                      percentage: 3)),
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
                                      vertical: Helpers.getHeight(context,
                                          percentage: 2.4),
                                      horizontal: Helpers.getWidth(context,
                                          percentage: 33)),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
