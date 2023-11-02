import 'dart:math';
import 'package:gametask/main.dart';
import 'package:flutter/material.dart';
import 'package:gametask/screens/GridItem.dart';
import 'package:gametask/screens/GOtoSubCategoryScreen.dart';

class PlayScreen extends StatefulWidget {
  List listindex1_2;
  PlayScreen(this.listindex1_2, {super.key});

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
//int imageValue = 0;
  List indexI1_2 = []; // Initialize indexs as an empty list

  @override
  void initState() {
    super.initState();
    // Initialize indexs with the value passed from the constructor
    indexI1_2 = widget.listindex1_2;
  }

  final List<dynamic> animals_pet = ["قطه", "كلب", "بغبغان", "عصفور", "بقرة"];
  final List<dynamic> animals_Non_pet = ["نمر", "دب", "لبوة"];
  final List<dynamic> meals_sweet = ["كنافه", "بسبوسه", "مشبك"];
  final List<dynamic> meals_sour = ["بابا غنوج", "شبسي", "سلطه"];

  String? getRandomGess() {
    Random random = Random();
    if (indexI1_2[0] == 0 && indexI1_2[1] == 0) //animals_pet
    {
      int n = random.nextInt(animals_pet.length);
      return animals_pet[n];
    } else if (indexI1_2[0] == 0 && indexI1_2[1] == 1) //animals_non pet
    {
      int n = random.nextInt(animals_Non_pet.length);
      return animals_pet[n];
    } else if (indexI1_2[0] == 1 && indexI1_2[1] == 0) //meals_sweet
    {
      return animals_pet[random.nextInt(meals_sweet.length) as int];
    } else if (indexI1_2[0] == 1 && indexI1_2[1] == 1) {
      return animals_pet[{random.nextInt(meals_sour.length)} as int];
    }
    return "zz";
  }

  String? spyPlayer() {
    Random random = Random();
    int n = random.nextInt(formItems.length);
    return formItems[n]['name'];
  }

  @override
  Widget build(BuildContext context) {
    String word = getRandomGess().toString();
    String? spyPlaye= spyPlayer();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('give phone to ${formItems[0]['name']} ')),
          
          (spyPlaye== formItems[0]['name'])
              ? Text('u are spy')
              : Text('he in${word}   '),
          SizedBox(
            height: 100,
          ),
          Text("give phone to ${formItems[1]['name']}"),
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        nextplayerScreen(spyPlaye!, word),
                  ),
                );
              },
              icon: Icon(Icons.arrow_circle_left))
        ],
      ),
    );
  }
}

class nextplayerScreen extends StatelessWidget {
  String spyPlayer;
  String word;
  nextplayerScreen(this.spyPlayer, this.word, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('u are ${formItems[1]['name']} ')),
          (spyPlayer == formItems[1]['name'])
              ? Text('u are spy')
              : Text('he in${word.toString()}   '),
          SizedBox(
            height: 100,
          ),
          Text("give phone to ${formItems[2]['name']}"),
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => finalPlayer(spyPlayer, word),
                  ),
                );
              },
              icon: Icon(Icons.arrow_circle_left))
        ],
      ),
    );
  }
}

class finalPlayer extends StatelessWidget {
  String? spyPlayer;
  String?word;
   finalPlayer(this.spyPlayer, this.word, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('u ${formItems[2]['name']} ')),
          (spyPlayer == formItems[2]['name'])
              ? Text('u are spy ')
              : Text('he in${word.toString()}   '),
          SizedBox(
            height: 100,
          ),
         // Text("give phone to ${formItems[]['name']}"),
          Text("end game  ask your frindes to know the "),

          IconButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => nextplayerScreen(spyPlayer, word),
                //   ),
                // );
              },
              icon: Icon(Icons.arrow_circle_left))
        ],
      ),
    );
  }
}
