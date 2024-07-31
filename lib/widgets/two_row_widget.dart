import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_app/reusable_text.dart';

class TwoRowWidget extends StatelessWidget {
  const TwoRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //Size size =MediaQuery.of(context).size;
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Container(
              height: 110,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(width: 0.1,color: Colors.grey)
              ),
              child:  const Column(
                
                children: [
                  
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Row(
                        
                        children: [
                         
                        ImageIcon(
                          size:30,
                          AssetImage('assets/images/2.png')),
                         SizedBox(width: 7,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                         ReusableText(text: 'Effiency', fontSize: 10, color: Colors.black),
                          Row(
                            children: [
                              ReusableText(text: '9.5', fontSize: 16, color: Colors.black,fontWeight: FontWeight.bold,),
                              SizedBox(width: 5,),
                              ReusableText(text: 'kwh/100km', fontSize: 5, color: Colors.black,fontWeight: FontWeight.bold,)],)
                        ],)
                      ],),
                    ),
                  ),
                  SizedBox(height: 6,),
                   Expanded(
                     child: Padding(
                       padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                       child: Row(children: [
                        Icon(Icons.watch_later_rounded),
                         SizedBox(width: 7,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                             ReusableText(text: 'Connector Type', fontSize: 8, color: Colors.black,),
                             ReusableText(text: 'CCS Combo 2', fontSize: 16, color: Colors.black,fontWeight: FontWeight.bold,),
                          ],),
                        )
                                         ],),
                     ),
                   ),
                ],
              ),
            ),

             Container(
              height: 100,
              width: 140,
              // padding: EdgeInsets.symmetric(horizontal: 10,vertical: 2),
              decoration: BoxDecoration(
                
                borderRadius: BorderRadius.circular(16),
                border: Border.all(width: 0.1)
              ),
              child:  const Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Row(
                      
                        children: [
                           FaIcon(FontAwesomeIcons.car,size: 20,),
                           SizedBox(width: 12,),
                            ReusableText(text: 'Range', fontSize: 10, color: Colors.black,),
                            
                           
                          ],),
                    ),
                  ),
                      SizedBox(height: 5,),
                       ReusableText(text: 'CLTC:--', fontSize: 16, color: Colors.black,fontWeight: FontWeight.bold,),
                           ReusableText(text: 'WLTP', fontSize: 9, color: Colors.black,fontWeight: FontWeight.bold,),
                           ReusableText(text: 'NEDC', fontSize: 16, color: Colors.black,fontWeight: FontWeight.bold,),
                ],
              ),
            )
           ],);
  }
}