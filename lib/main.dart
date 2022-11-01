import 'package:flutter/material.dart';

import 'package:animated_do_app/src/pages/twitter_page.dart';
import 'package:animated_do_app/src/pages/pagina1_page.dart';

import 'package:animated_do_app/src/pages/navigation_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animate do',
      home: NavigationPage(),
      //home: Pagina1Page(),
      //home: TwitterPage(),
    );
  }
}