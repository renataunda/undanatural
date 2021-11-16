import 'package:flutter/material.dart';
import 'Helpers.dart';
import 'LoginPage.dart';

class InitPage extends StatefulWidget {
  @override
  _InitPage createState() => _InitPage();
}

class _InitPage extends State<InitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: Helpers.getHeight(context, percentage: 87),
            width: Helpers.getWidth(context, percentage: 100),
            child: Image(
              image: AssetImage("images/initPic.png"),
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  Helpers.changeScreen(context, LoginPage());
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                      vertical: Helpers.getHeight(context, percentage: 2.4),
                      horizontal: Helpers.getWidth(context, percentage: 30)),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Helpers.getPink(),
                        width: 2,
                      )),
                  child: Text(
                    "LOG IN",
                    style: TextStyle(color: Helpers.getPink()),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
