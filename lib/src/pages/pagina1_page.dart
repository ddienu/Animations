import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

import 'package:animate_do/animate_do.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Pagina1Page extends StatelessWidget {
  const Pagina1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Animate_do'),
        actions: [

          IconButton(
            onPressed: (){},
            icon: FaIcon(FontAwesomeIcons.twitter)
            ),

          IconButton(
            onPressed: (){
              Navigator.push(context, CupertinoPageRoute(builder: (BuildContext context) => Pagina1Page())
              );
            },
            icon: SlideInLeft(
              from: 40,
              child: Icon(Icons.navigate_next))
            ),
        ],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            FadeInDown(
              child: Icon(Icons.new_releases, color: Colors.blue, size: 40.0)),

            FadeInDown(
              delay: Duration( milliseconds: 400),
              child: Text('Título', 
                style: TextStyle(
                  fontSize: 40.0, 
                  fontWeight: FontWeight.w200)
                  ),
            ),

            FadeInDown(
              delay: Duration( milliseconds: 1200),
              child: Text(' Título pequeño', 
                style: TextStyle( 
                  fontSize: 20.0, 
                  fontWeight: FontWeight.w400, 
                    ),
              ),
            ),

            FadeInLeft(
              delay: Duration( milliseconds: 1400),
              child: Container(
                width: 220.0,
                height: 2,
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
            )
          ],
        ),
      ),

      floatingActionButton: ElasticInRight(
        child: FloatingActionButton(
          onPressed: (){},
          child: FaIcon( FontAwesomeIcons.play ),
          ),
      ),
    );
    
  }
}