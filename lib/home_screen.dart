
import 'package:flutter/material.dart';
import 'package:my_app/reusable_text.dart';
import 'package:my_app/widgets/bottom_flutter_navbar.dart';
import 'package:my_app/widgets/car_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
     body: ListView(
      children:  [
        Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
             children: [
              
              Container(
                width: double.infinity,
                height: size.height*0.3,
                 decoration: const BoxDecoration(
                 color: Color.fromARGB(250, 9, 3, 27),
                    ), 
                    child:  Column(
                      children: [
                        SizedBox(height: size.height*0.05,),
                      const ReusableText(
                        text: 'Toyota Corolla Hybrid',
                         fontSize: 20,
                          color: Colors.orange,
                          ),
                           const ReusableText(
                        text: 'Hybrid GLEX',
                         fontSize: 16,
                          color: Colors.white,
                          ),
                          const SizedBox(height: 8,),
                           const ReusableText(
                        text: 'Subscriber',
                         fontSize: 12,
                          color: Colors.orange,
                          ),
                    ],),
                     
              ),
              Positioned(
                bottom: -20,
                left: 0,
                right: 0,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/images/1.jpg'))
                  ),
                ),
              )
             ],
            ),
            SizedBox(height: size.height*0.04,),
            const CarWidget(),
            SizedBox(height: size.height*0.04,),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(250, 9, 3, 27),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
               // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                IconButton(onPressed: (){}, icon: const Icon(Icons.battery_5_bar_rounded,color: Colors.green,size: 35,)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const Column(children: [
                    ReusableText(text: '100kw', fontSize: 16, color: Colors.white),
                    ReusableText(text: 'Battery Capacity', fontSize: 12, color: Colors.white),
                  ],),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const Column(children: [
                    ReusableText(text: '23:20:3s', fontSize: 16, color: Colors.white),
                    ReusableText(text: '  Quota Duration', fontSize: 12, color: Colors.white),
                  ],),
                ),
              ],),
            ),
             
           const  SizedBox(height: 15,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Container(
              height: 90,
              width: 130,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(width: 0.1,color: Colors.grey)
              ),
              child: const Column(
                children: [
                  Row(children: [
                    Icon(Icons.battery_std_rounded),
                    Column(children: [
                      Text('Effiency'),
                      Text('9.5 kwh/100km'),
                    ],)
                  ],),
                  SizedBox(height: 6,),
                   Row(children: [
                    Icon(Icons.map_rounded),
                    Column(children: [
                      Text('Connector Type'),
                      Text('CCS Combo 2'),
                    ],)
                  ],),
                ],
              ),
            ),

             Container(
              height: 90,
              width: 110,
              decoration: BoxDecoration(
                
                borderRadius: BorderRadius.circular(16),
                border: Border.all(width: 0.01)
              ),
              child:  const Column(
                children: [
                  Row(children: [
                        Icon(Icons.car_crash),
                        Column(children: [
                          Text('Range'),
                          Text('CLTC:--'),
                          Text('WLTP'),
                          Text('NEDC'),
                        ],)
                      ],),
                ],
              ),
            )
           ],),
           const SizedBox(height: 6,),
           TextButton(
            onPressed: (){},
            
             child:const Center(
               child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                
                children: [
               ReusableText(text: 'View all history', fontSize: 10, color: Colors.red),
                Icon(Icons.arrow_right_alt_outlined, color: Colors.red)
               ],),
             )
             ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 70,
                
              
               
               
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  border: Border.all(width: 0.01),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  ReusableText(text: 'Godzilla Main Crib Station', fontSize: 16, color: Colors.grey),
                    SizedBox(height: 6,),
                  Row(
                    children: [
                    ReusableText(text: 'session ID:675648', fontSize: 11,color: Colors.grey),
                      SizedBox(width: 6,),
                    Icon(Icons.copy,size: 18,)
                  ],)
                ],),
              ),
            )
        ],
        
        ),
       

      ],
     ),
      bottomNavigationBar: const BottomFlutterNavbar(),
    );
  }
}