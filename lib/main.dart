import 'package:gametask/routes.dart';
import 'package:flutter/material.dart';
import 'package:gametask/screens/myhome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: routeGenerator,
      home: Myhome(),
    );
  }
}





List towContanerName = [["a pet","Non-domestic animal"],["Sweet","sour"]];

void addItemToFormItems(String name,dynamic url) {
  Map<String, dynamic> item = {
    'name': name,
    'image': url,
  };
  formItems.add(item);
}

var Newname;

List<Map<String,dynamic>> formItems = [];




