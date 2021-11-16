import 'package:flutter/material.dart';
import 'package:undanaturalinventory/Helpers.dart';

class Products extends StatefulWidget {
  @override
  _Products createState() => _Products();
}

/// This is the private State class that goes with MyStatefulWidget.
class _Products extends State<Products> {
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
                "Products",
                style: TextStyle(
                    fontFamily: "Futura",
                    fontWeight: FontWeight.w100,
                    color: Helpers.getPink()),
                textScaleFactor: 2,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.cover,
                              image: new AssetImage(
                                  "images/cocoConditioner.jpg"))),
                      height: Helpers.getHeight(context, percentage: 20),
                      width: Helpers.getHeight(context, percentage: 20),
                    ),
                    Text(
                      "Coconut conditioner",
                      style: TextStyle(
                          fontFamily: "Futura",
                          fontWeight: FontWeight.w100,
                          color: Colors.grey),
                      textScaleFactor: 0.8,
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.cover,
                              image: new AssetImage("images/cocoSoap.jpg"))),
                      height: Helpers.getHeight(context, percentage: 20),
                      width: Helpers.getHeight(context, percentage: 20),
                    ),
                    Text(
                      "Coconut soap",
                      style: TextStyle(
                          fontFamily: "Futura",
                          fontWeight: FontWeight.w100,
                          color: Colors.grey),
                      textScaleFactor: 0.8,
                    )
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.cover,
                              image: new AssetImage(
                                  "images/watermelonShampoo.jpg"))),
                      height: Helpers.getHeight(context, percentage: 20),
                      width: Helpers.getHeight(context, percentage: 20),
                    ),
                    Text(
                      "Waterelon shampoo",
                      style: TextStyle(
                          fontFamily: "Futura",
                          fontWeight: FontWeight.w100,
                          color: Colors.grey),
                      textScaleFactor: 0.8,
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.cover,
                              image:
                                  new AssetImage("images/watermelonSoap.jpg"))),
                      height: Helpers.getHeight(context, percentage: 20),
                      width: Helpers.getHeight(context, percentage: 20),
                    ),
                    Text(
                      "Watermelon soap",
                      style: TextStyle(
                          fontFamily: "Futura",
                          fontWeight: FontWeight.w100,
                          color: Colors.grey),
                      textScaleFactor: 0.8,
                    )
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.cover,
                              image: new AssetImage("images/dogShampoo.jpg"))),
                      height: Helpers.getHeight(context, percentage: 20),
                      width: Helpers.getHeight(context, percentage: 20),
                    ),
                    Text(
                      "Dog shampoo",
                      style: TextStyle(
                          fontFamily: "Futura",
                          fontWeight: FontWeight.w100,
                          color: Colors.grey),
                      textScaleFactor: 0.8,
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.cover,
                              image: new AssetImage(
                                  "images/GreenTeeShampoo.jpg"))),
                      height: Helpers.getHeight(context, percentage: 20),
                      width: Helpers.getHeight(context, percentage: 20),
                    ),
                    Text(
                      "Green Tea Shampoo",
                      style: TextStyle(
                          fontFamily: "Futura",
                          fontWeight: FontWeight.w100,
                          color: Colors.grey),
                      textScaleFactor: 0.8,
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
