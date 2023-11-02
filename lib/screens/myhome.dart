import 'package:flutter/material.dart';
import 'package:gametask/screens/GridItem.dart';
import 'package:gametask/screens/DetailScreen.dart';


class Myhome extends StatelessWidget {
  const Myhome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View Example'),
      ),
      body: GridView.builder(
        itemCount: 4,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(index: index),
                ),
              );
            },
            child: GridItem(index,),
          );
        },
      ),
    );
  }
}