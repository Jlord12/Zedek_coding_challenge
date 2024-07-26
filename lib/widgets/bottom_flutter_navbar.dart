import 'package:flutter/material.dart';

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
            selectedItemColor: Colors.grey,
            unselectedItemColor: Colors.grey,
            items: const [
               BottomNavigationBarItem(backgroundColor: Color.fromARGB(250, 9, 3, 27),
                icon: Icon(Icons.home),
                label: 'Home'
                ),
                BottomNavigationBarItem(
                icon: Icon(Icons.maps_ugc),
                label: 'Home'
                ),
                BottomNavigationBarItem(
                icon: Icon(Icons.qr_code_scanner),
                label: 'Home'
                ),
                BottomNavigationBarItem(
                icon: Icon(Icons.file_copy_outlined),
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