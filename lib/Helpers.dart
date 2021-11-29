import 'package:flutter/material.dart';
import 'LoginPage.dart';

class Helpers {
  static getHeight(BuildContext context, {double percentage = 100}) {
    return MediaQuery.of(context).size.height * (percentage.toDouble() / 100.0);
  }

  static getWidth(BuildContext context, {double percentage = 100}) {
    return MediaQuery.of(context).size.width * (percentage.toDouble() / 100.0);
  }

  static getPink() {
    return Color(0xFFDC9189);
  }

  static changeScreen(BuildContext context, Widget nextScreen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => nextScreen),
    );
  }

  static getAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios, color: Colors.grey),
        onPressed: () => Navigator.of(context).pop(),
      ),
      backgroundColor: Colors.white10,
      elevation: 0,
    );
  }
}

enum CategoryEnum { none, shampoo, conditioner, soap }
enum SmellEnum { none, watermelon, apple, oatmeal, coconut }

class User {
  int _id = -1;
  String _name = "";
  String _password = "";
  String _email = "";

  User(int id, String name, String password, String email) {
    _id = id;
    _name = name;
    _password = password;
    _email = email;
  }
}

class Product {
  int _id = -1;
  int _amount = -1;
  double _price = -1;
  SmellEnum _smell = SmellEnum.none;
  CategoryEnum _category = CategoryEnum.none;

  Product(
      [int id = -1,
      int amount = -1,
      double price = -1,
      SmellEnum smell = SmellEnum.none,
      CategoryEnum category = CategoryEnum.none]) {
    _id = id;
    _amount = amount;
    _price = price;
    _smell = smell;
    _category = category;
  }

  int getId() {
    return _id;
  }

  int getAmount() {
    return _amount;
  }

  double getPrice() {
    return _price;
  }

  SmellEnum getSmell() {
    return _smell;
  }

  CategoryEnum getCategory() {
    return _category;
  }

  String getSmellString() {
    String newSmell = "";
    switch (_smell) {
      case SmellEnum.apple:
        newSmell = "Apple";
        break;
      case SmellEnum.coconut:
        newSmell = "Coconut";
        break;
      case SmellEnum.oatmeal:
        newSmell = "Oatmeal";
        break;
      case SmellEnum.watermelon:
        newSmell = "Watermelon";
        break;
      case SmellEnum.none:
        newSmell = "None";
        break;
    }
    return newSmell;
  }

  String getCategoryString() {
    String newCategory = "";
    switch (_category) {
      case CategoryEnum.conditioner:
        newCategory = "Conditiones";
        break;
      case CategoryEnum.shampoo:
        newCategory = "Shampoo";
        break;
      case CategoryEnum.soap:
        newCategory = "Soap";
        break;
      case CategoryEnum.none:
        newCategory = "None";
        break;
    }
    return newCategory;
  }

  void setId(int id) {
    _id = id;
  }

  void setAmount(int amount) {
    _amount = amount;
  }

  void setPrice(double price) {
    _price = price;
  }

  void setSmell(SmellEnum smell, [int? smelli]) {
    if (smelli != null) {
      _smell = smell;
    } else {
      if (smelli == 0) {
        _smell = SmellEnum.none;
      } else if (smelli == 1) {
        _smell = SmellEnum.watermelon;
      } else if (smelli == 2) {
        _smell = SmellEnum.apple;
      } else if (smelli == 3) {
        _smell = SmellEnum.oatmeal;
      } else if (smelli == 4) {
        _smell = SmellEnum.coconut;
      }
    }
  }

  void setCategory(CategoryEnum category, [int? categoryi]) {
    if (categoryi != null) {
      _category = category;
    } else {
      if (categoryi == 0) {
        _category = CategoryEnum.none;
      } else if (categoryi == 1) {
        _category = CategoryEnum.shampoo;
      } else if (categoryi == 2) {
        _category = CategoryEnum.conditioner;
      } else if (categoryi == 3) {
        _category = CategoryEnum.soap;
      }
    }
    _category = category;
  }
}

Product appleShampoo =
    new Product(0, 3, 110, SmellEnum.apple, CategoryEnum.shampoo);
Product coconutShampoo =
    new Product(01, 23, 110, SmellEnum.coconut, CategoryEnum.shampoo);
Product oatmealShampoo =
    new Product(02, 1, 110, SmellEnum.oatmeal, CategoryEnum.shampoo);
Product oatmealSoap =
    new Product(03, 34, 50, SmellEnum.oatmeal, CategoryEnum.soap);
Product watermelonSoap =
    new Product(04, 11, 50, SmellEnum.watermelon, CategoryEnum.soap);
Product coconutSoap =
    new Product(05, 13, 50, SmellEnum.coconut, CategoryEnum.soap);
Product applelSoap = new Product(06, 5, 50, SmellEnum.apple, CategoryEnum.soap);
Product oatmealConditioner =
    new Product(07, 23, 90, SmellEnum.oatmeal, CategoryEnum.conditioner);
Product appleConditioner =
    new Product(08, 17, 90, SmellEnum.apple, CategoryEnum.conditioner);

List<Product> productsList = [
  appleShampoo,
  coconutShampoo,
  oatmealShampoo,
  oatmealSoap,
  watermelonSoap,
  coconutSoap,
  applelSoap,
  oatmealConditioner,
  appleConditioner
];

User benja = new User(0, "Benjamin Santana", "Gre1999", "benja@gmail.com");
User saul = new User(01, "Saul Edueardo Zepeda", "HolisS", "saul@gmail.com");
User rena = new User(02, "Renata Aparicio", "Adioss", "renata@gmail.com");

List<User> usersList = [benja, saul, rena];
