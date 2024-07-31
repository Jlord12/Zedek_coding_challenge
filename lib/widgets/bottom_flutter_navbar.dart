import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomFlutterNavbar extends StatelessWidget {
  const BottomFlutterNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(
      color: Color.fromARGB(250, 9, 3, 27),
      
        )]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        
       
        child: BottomNavigationBar(

            showSelectedLabels: false,
            selectedItemColor: Colors.deepOrange,
            unselectedItemColor: Colors.white,
            items: const [
               BottomNavigationBarItem(
                backgroundColor: Color(0xff161d30),
                icon: Icon(Icons.home,size: 17,),
                label: 'Home'
                ),
                BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.locationDot,size: 17,),
                label: 'Home'
                ),
                BottomNavigationBarItem(
                icon: Icon(Icons.qr_code_scanner,size: 17,),
                label: 'Home'
                ),
                BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.calendarMinus,size: 17,),
                label: 'Home'
                ),
                BottomNavigationBarItem(
                icon: Icon(Icons.person,size: 17,),
                label: 'Person'
                ),
            ]
            ),
      ),
    );
  }
}