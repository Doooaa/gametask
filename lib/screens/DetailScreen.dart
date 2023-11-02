import 'dart:ui';
import 'package:gametask/main.dart';
import 'package:flutter/material.dart';
import 'package:gametask/screens/GridItem.dart';
import 'package:gametask/screens/GOtoSubCategoryScreen.dart';


class DetailScreen extends StatelessWidget {
  final int index;
  
  DetailScreen({required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(names[index]),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GOtoSubCategoryScreen([index,0]),
                        ),
                      );
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      color: const Color.fromARGB(255, 230, 68, 255),
                      child: Center(
                        child: Text(
                          towContanerName[index][0].toString(),
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.blueAccent,
                    child: Center(
                      child: Text(
                      towContanerName[index][1].toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}

