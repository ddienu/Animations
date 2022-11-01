import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';



class NavigationPage extends StatelessWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (context) => _NotificationModel(),

      child: Scaffold(
        appBar: AppBar(
          title: Text('Notifications Page'),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        floatingActionButton: _BotonFlotante(),
    
        bottomNavigationBar: _BottomNavigation(),
      ),
    );
    
  }
}

class _BotonFlotante extends StatelessWidget {
  const _BotonFlotante({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    int numero = Provider.of<_NotificationModel>(context).numero;
    
    return FloatingActionButton(
      onPressed: (){
        Provider.of<_NotificationModel>(context, listen: false).numero;
        numero++;
        Provider.of<_NotificationModel>(context, listen: false).numero = numero;

      },
      child: FaIcon( FontAwesomeIcons.play),
      backgroundColor: Colors.amber,
      );

  }
}

class _BottomNavigation extends StatelessWidget {
  const _BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final numero = Provider.of<_NotificationModel>(context).numero;

    return BottomNavigationBar(
      currentIndex: 0,
      selectedItemColor: Colors.amber,
      items: <BottomNavigationBarItem>[

        BottomNavigationBarItem(
          icon: FaIcon( FontAwesomeIcons.house),
          label: 'Home'
          ),

        BottomNavigationBarItem(
          label: 'Notifications',
          icon: Stack(
            children: [
              
              FaIcon( FontAwesomeIcons.bell),

              Positioned(
                top: 0.0,
                right: 0.0,
                child: Container(
                  child: Text( '$numero', style: TextStyle( color: Colors.white, fontSize: 8, fontWeight: FontWeight.bold),),
                  width: 12,
                  height: 12,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    shape: BoxShape.circle,
                  ),
                ),
              )
            ],
          )
        ),

        BottomNavigationBarItem(
          icon: FaIcon( FontAwesomeIcons.message),
          label: 'Message'
        ),
      ]
      );
    
  }
}

class _NotificationModel extends ChangeNotifier {

  int _numero = 0;

  int get numero => this._numero;

  set numero ( int valor){
    _numero = valor;
    notifyListeners();
  }

}