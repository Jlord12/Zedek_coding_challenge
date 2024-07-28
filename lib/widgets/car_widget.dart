import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_app/reusable_text.dart';

class CarWidget extends StatelessWidget {
  const CarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
          height: 30,
          width: 125,
          
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(width: 0.1),
            
          ),
          child:  Padding(
            padding: const EdgeInsets.all(4.0),
            child: const Row(children: [
               FaIcon(FontAwesomeIcons.batteryThreeQuarters,color: Colors.green,size: 18,),
               SizedBox(width: 5,),
              Flexible(
                flex: 1,
                child: ReusableText(text: 'charging 60%', fontSize: 14, color: Colors.black,fontWeight: FontWeight.bold,)),
            ],),
          ),
        );
  }
}