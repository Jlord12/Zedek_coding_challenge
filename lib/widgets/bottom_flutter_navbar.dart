import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomFlutterNavbar extends StatelessWidget {
  const BottomFlutterNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
      color: Color.fromARGB(250, 9, 3, 27),
      
        )]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        
       
        child: BottomNavigationBar(
         // backgroundColor: Color.fromARGB(250, 9, 3, 27),
            showSelectedLabels: false,
            selectedItemColor: Colors.orange,
            unselectedItemColor: Colors.white,
            items: const [
               BottomNavigationBarItem(backgroundColor: Color.fromARGB(250, 9, 3, 27),
                icon: Icon(Icons.home),
                label: 'Home'
                ),
                BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.locationDot),
                label: 'Home'
                ),
                BottomNavigationBarItem(
                icon: Icon(Icons.qr_code_scanner),
                label: 'Home'
                ),
                BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.calendarMinus),
                label: 'Home'
                ),
                BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Person'
                ),
            ]
            ),
      ),
    );
  }
}