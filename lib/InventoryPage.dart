import 'package:flutter/material.dart';
import 'package:undanaturalinventory/Helpers.dart';

class Inventory extends StatefulWidget {
  @override
  _Inventory createState() => _Inventory();
}

/// This is the private State class that goes with MyStatefulWidget.
class _Inventory extends State<Inventory> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: productsList.length,
      itemBuilder: (context, index) {
        return index == 0
            ? Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: Helpers.getHeight(context, percentage: 3)),
                    child: Text(
                      "Inventory",
                      style: TextStyle(
                          fontFamily: "Futura",
                          fontWeight: FontWeight.w100,
                          color: Helpers.getPink()),
                      textScaleFactor: 2,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: Helpers.getHeight(context, percentage: 2)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Text("ID",
                              style: TextStyle(
                                  fontFamily: "Futura",
                                  fontWeight: FontWeight.w100,
                                  color: Helpers.getPink()),
                              textScaleFactor: 1),
                          width: Helpers.getWidth(context, percentage: 10),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Text("CATEGORY",
                              style: TextStyle(
                                  fontFamily: "Futura",
                                  fontWeight: FontWeight.w100,
                                  color: Helpers.getPink()),
                              textScaleFactor: 1),
                          width: Helpers.getWidth(context, percentage: 30),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Text("SMELL",
                              style: TextStyle(
                                  fontFamily: "Futura",
                                  fontWeight: FontWeight.w100,
                                  color: Helpers.getPink()),
                              textScaleFactor: 1),
                          width: Helpers.getWidth(context, percentage: 30),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Text("AMOUNT",
                              style: TextStyle(
                                  fontFamily: "Futura",
                                  fontWeight: FontWeight.w100,
                                  color: Helpers.getPink()),
                              textScaleFactor: 1),
                          width: Helpers.getWidth(context, percentage: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Text(productsList[index - 1].getId().toString(),
                        style: TextStyle(
                            fontFamily: "Futura",
                            fontWeight: FontWeight.w100,
                            color: Colors.grey),
                        textScaleFactor: 1),
                    width: Helpers.getWidth(context, percentage: 10),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(productsList[index - 1].getCategoryString(),
                        style: TextStyle(
                            fontFamily: "Futura",
                            fontWeight: FontWeight.w100,
                            color: Colors.grey),
                        textScaleFactor: 1),
                    width: Helpers.getWidth(context, percentage: 30),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(productsList[index - 1].getSmellString(),
                        style: TextStyle(
                            fontFamily: "Futura",
                            fontWeight: FontWeight.w100,
                            color: Colors.grey),
                        textScaleFactor: 1),
                    width: Helpers.getWidth(context, percentage: 30),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(productsList[index - 1].getAmount().toString(),
                        style: TextStyle(
                            fontFamily: "Futura",
                            fontWeight: FontWeight.w100,
                            color: Colors.grey),
                        textScaleFactor: 1),
                    width: Helpers.getWidth(context, percentage: 20),
                  ),
                ],
              );
      },
    );
  }
}
