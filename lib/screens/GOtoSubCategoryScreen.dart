import 'dart:math';
import 'package:gametask/main.dart';
import 'package:flutter/material.dart';
import 'package:gametask/screens/playScrenn.dart';
import 'package:gametask/screens/showItemInform.dart';




// String getRandomNumber() {
//   Random random = Random();
//   int randomNumber = random.nextInt(animals_pet.length);
//   return animals_pet[randomNumber];
// }

GlobalKey<FormState> _formKey = GlobalKey<FormState>();


class GOtoSubCategoryScreen extends StatefulWidget {
  List indexs;
  GOtoSubCategoryScreen(this.indexs, {super.key});

  @override
  State<GOtoSubCategoryScreen> createState() => _GOtoSubCategoryScreenState();
}

class _GOtoSubCategoryScreenState extends State<GOtoSubCategoryScreen> {
  int imageValue = 0;
  List indexs = []; // Initialize indexs as an empty list

  @override
  void initState() {
    super.initState();
    // Initialize indexs with the value passed from the constructor
    indexs = widget.indexs;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("add your players now"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Scaffold(
            body: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.forward_outlined)),
                  IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              width: double.infinity,
                              padding: EdgeInsets.all(16.0),
                              child: Form(
                                key: _formKey,
                                child: Column(
                                  children: <Widget>[
                                    TextFormField(
                                      decoration:
                                          InputDecoration(labelText: 'Name'),
                                      validator: (value) {
                                        value as String;
                                        if (value.isEmpty ||
                                            value.length < 3 ||
                                            value.length > 20) {
                                          return "name must be more than 3 and less 20";
                                        }
                                        setState(() {
                                          Newname = value;
                                        });
                                        return null;
                                      },
                                    ),
                                    SizedBox(height: 20),
                                    Expanded(
                                      child: Row(
                                        // mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          InkWell(
                                            child: Image.asset(
                                              "images/doaa2.jpg",
                                              width: 100,
                                              height: 100,
                                            ),
                                            onTap: () {
                                              setState(() {
                                                imageValue = 0;
                                              });
                                            },
                                          ),
                                          InkWell(
                                            child: Image.asset(
                                              "images/doaa.jpg",
                                              width: 100,
                                              height: 100,
                                            ),
                                            onTap: () {
                                              setState(() {
                                                imageValue = 1;
                                              });
                                            },
                                          ),
                                          InkWell(
                                            child: Image.asset(
                                              "images/doaa2.jpg",
                                              width: 100,
                                              height: 100,
                                            ),
                                            onTap: () {
                                              setState(() {
                                                imageValue = 2;
                                              });
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        if (_formKey.currentState!.validate()) {
                                          addItemToFormItems(
                                              Newname, imageValue);
                                        }
                                        print(
                                            _formKey.currentState!.validate());
                                      },
                                      child: Text('Submit'),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      icon: Icon(Icons.add))
                ],
              ),
              Column(
                children: formItems.map((e) {
                  return item(e);
                }).toList(),
              ),
              SizedBox(
                height: 20,
              ),
              (formItems.isNotEmpty && formItems.length >= 3)
                  ? IconButton(
                      onPressed: () {
                        // Navigator.pushNamed(context, '/PlayScreen',
                        //     arguments: indexs);

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PlayScreen(indexs),
                          ),
                        );
                      },
                      icon: Icon(Icons.play_arrow))
                  : Text(""),
            ]),
          )),
    );
  }
}
