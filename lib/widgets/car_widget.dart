import 'package:flutter/material.dart';
import 'package:my_app/reusable_text.dart';

class CarWidget extends StatelessWidget {
  const CarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
          height: 20,
          width: 120,
          
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(width: 1),
            
          ),
          child: const Row(children: [
            Icon(Icons.battery_5_bar_rounded,color: Colors.green,),
            Flexible(
              flex: 1,
              child: ReusableText(text: 'charging 60%', fontSize: 14, color: Colors.black))
          ],),
        );
  }
}