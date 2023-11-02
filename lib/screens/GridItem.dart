import 'package:flutter/material.dart';

List names = ["animals","meals","vegetables","persons"];
// ignore: must_be_immutable
class GridItem extends StatelessWidget {
  int? index;

  GridItem(
    this.index, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Container(
          width: 100,
          height: 100,
          color: Colors.blueAccent,
          child: Center(
            child: Text(
              names[index as int].toString(),
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

