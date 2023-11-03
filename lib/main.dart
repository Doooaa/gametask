import 'package:flutter/material.dart';
import 'package:gametask/screens/myhome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // onGenerateRoute: routeGenerator,
      home: Myhome(),
    );
  }
}





List towContanerName = [["a pet","Non-domestic animal"],["Sweet","sour"],["Root Vegetables","non Root Vegetables"],["pla","pla"]];

void addItemToFormItems(String name,dynamic url) {
  Map<String, dynamic> item = {
    'name': name,
    'image': url,
  };
  formItems.add(item);
}

var Newname;
List<Map<String,dynamic>> formItems = [];




