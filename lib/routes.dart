import 'package:flutter/material.dart';
import 'package:gametask/screens/errorpage.dart';
import 'package:gametask/screens/playScrenn.dart';
import 'package:gametask/screens/GOtoSubCategoryScreen.dart';



Route routeGenerator(RouteSettings settings) {
  switch (settings.name) {
    // case '/':
    //   return MaterialPageRoute(
    //     builder: (context) =>HomePage(settings.arguments),
    //   );
    // case '/blogs_screen':
    //   return MaterialPageRoute(
    //     builder: (context) => blogs_screen(settings.arguments as List<Blogs>),
    //   );
    // case '/products':
    //   return MaterialPageRoute(
    //     builder: (context) => ProductScreen(settings.arguments as List<Product>),
    //   );
    // case '/GOtoSubCategoryScreen':
    //   return MaterialPageRoute(
    //     builder: (context) => GOtoSubCategoryScreen(),
    //   );
    case '/PlayScreen':
      return MaterialPageRoute(
        builder: (context) =>PlayScreen(settings.arguments as List<int>),
      );
  }
  return MaterialPageRoute(
    builder: (context) => const ErrorPage(),
  );
}