import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';   



class TwitterPage extends StatelessWidget {
  const TwitterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        child: FaIcon( FontAwesomeIcons.play),
        onPressed: (){
          
        }),
      backgroundColor: Color(0xFF1DA1F2),
      body: Center(
        child: ZoomOut(
          animate: false,
          duration: Duration( milliseconds: 1000),
          from: 40,
          child: FaIcon( FontAwesomeIcons.twitter, color: Colors.white, size: 40.0)
          ),
      ),
    );
    
  }
}