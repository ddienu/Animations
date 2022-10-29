import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';   



class TwitterPage extends StatefulWidget {
  const TwitterPage({Key? key}) : super(key: key);

  @override
  State<TwitterPage> createState() => _TwitterPageState();

  
}

class _TwitterPageState extends State<TwitterPage> {

  bool activar = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Twitter Animation'),
        backgroundColor: Color(0xFF1DA1F2),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        child: FaIcon( FontAwesomeIcons.play),
        onPressed: (){
          setState(() {
            activar = true;
          });
        }),
      backgroundColor: Color(0xFF1DA1F2),
      body: Center(
        child: ZoomOut(
          animate: activar,
          duration: Duration( milliseconds: 1000),
          from: 40,
          child: FaIcon( FontAwesomeIcons.twitter, color: Colors.white, size: 40.0)
          ),
      ),
    );
    
  }
}