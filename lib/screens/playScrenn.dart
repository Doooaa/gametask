import 'dart:math';
import 'package:gametask/main.dart';
import 'package:flutter/material.dart';
import 'package:gametask/screens/myhome.dart';
import 'package:gametask/screens/GridItem.dart';
import 'package:gametask/screens/GOtoSubCategoryScreen.dart';

final List<dynamic> animals_pet = ["قطه", "كلب", "بغبغان", "عصفور", "بقرة"];
final List<dynamic> animals_Non_pet = ["نمر", "دب", "لبوة"];
final List<dynamic> meals_sweet = ["كنافه", "بسبوسه", "مشبك"];
final List<dynamic> meals_sour = ["بابا غنوج", "شبسي", "سلطه"];
String? getRandomGess(List indexI1_2) {
  Random random = Random();
  if (indexI1_2[0] == 0 && indexI1_2[1] == 0) //animals_pet
  {
    int n = random.nextInt(animals_pet.length);
    return animals_pet[n];
  } else if (indexI1_2[0] == 0 && indexI1_2[1] == 1) //animals_non pet
  {
    int n = random.nextInt(animals_Non_pet.length);
    return animals_Non_pet[n];
  } else if (indexI1_2[0] == 1 && indexI1_2[1] == 0) //meals_sweet
  {
    return meals_sweet[random.nextInt(meals_sweet.length) as int];
  } else if (indexI1_2[0] == 1 && indexI1_2[1] == 1) {
    return meals_sour[{random.nextInt(meals_sour.length)} as int];
  }
  return "zz";
}

String? spyPlayer() {
  Random random = Random();
  int n = random.nextInt(formItems.length);
  return formItems[n]['name'];
}

class PlayScreen extends StatefulWidget {
  List listindex1_2;
  PlayScreen(this.listindex1_2, {super.key});

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
//int imageValue = 0;
  List indexI1_2 = []; // Initialize indexs as an empty list
  int count = 0;
  @override
  void initState() {
    super.initState();
    // Initialize indexs with the value passed from the constructor
    indexI1_2 = widget.listindex1_2;
  }

  double opacity = 0.1;
  @override
  Widget build(BuildContext context) {
    String? spyPlaye = spyPlayer();
    print(indexI1_2);
    return Scaffold(
      appBar: AppBar(title: Text(names[indexI1_2[0]]),
      backgroundColor: Colors.amber,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
                  '${count}give phone to ${formItems[count]['name']} to Know he in or out} ')),
          

          (spyPlaye == formItems[count]['name'])
              ? const Text('u are spy')
              : Text('he in${word}   '),

          const SizedBox(
            height: 100,
          ),

          //Text("give phone to ${formItems[1]['name']}"),
          IconButton(
              onPressed: () {
                if (count == formItems.length) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Myhome(),
                    ),
                  );
                }
                setState(() {
                  if (count < formItems.length) {
                    count++;
                  }

                  formItems[count]['name'];
                  print(formItems[count]['name']);
                });
              },
              icon: Icon(Icons.arrow_circle_right))
        ],
      ),
    );
  }
}
