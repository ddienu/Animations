import 'package:flutter/material.dart';

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
            onPressed: (){},
            icon: Icon(Icons.navigate_next)
            ),
        ],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Icon(Icons.new_releases, color: Colors.blue, size: 40.0),

            Text('Título', style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w200)),

            Text(' Título pequeño', 
              style: TextStyle( 
                fontSize: 20.0, 
                fontWeight: FontWeight.w400, 
                  )
            ),

            Container(
              width: 220.0,
              height: 2,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: FaIcon( FontAwesomeIcons.play ),
        ),
    );
    
  }
}