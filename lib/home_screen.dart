
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
                    child:  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(height: size.height*0.08,),
                        const ReusableText(
                          text: 'Toyota Corolla Hybrid',
                           fontSize: 20,
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                            ),
                             const ReusableText(
                          text: 'Hybrid GLEX',
                           fontSize: 16,
                            color: Colors.white,
                            ),
                            const SizedBox(height: 4,),
                             const ReusableText(
                          text: 'Subscriber',
                           fontSize: 12,
                            color: Colors.orange,
                            ),
                      ],),
                    ),
                     
              ),
             
              Positioned(
                bottom: -50,
                left: 0,
                right: 0,
                child: SizedBox(
                  height: 110,
                  width: 100,
                  child: Swiper(
                    
                    itemCount: 1,
                    itemBuilder: (context, index){
                     return Image.asset('assets/images/1.png');
                    },  
                 control: const SwiperControl(size: 20,
                  padding: EdgeInsets.only(right: 80,left: 80,bottom: 60),
                  color: Colors.orange,
                   
                 ),
                    ),
                ),
              )
             ],
            ),
            SizedBox(height: size.height*0.05,),
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
                children: [
                IconButton(onPressed: (){}, icon: const Icon(Icons.battery_5_bar_rounded,color: Colors.green,size: 35,)),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    ReusableText(text: '100kw', fontSize: 16, color: Colors.white),
                    ReusableText(text: 'Battery Capacity', fontSize: 12, color: Colors.white),
                  ],),
                ),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
              width: 150,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(width: 0.1,color: Colors.grey)
              ),
              child:  const Column(
                
                children: [
                  
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8,),
                    child: Row(
                      
                      children: [
                       
                      Icon(Icons.battery_charging_full_outlined),
                       SizedBox(width: 7,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                       ReusableText(text: 'Effiency', fontSize: 12, color: Colors.black),
                        Row(
                          children: [
                            ReusableText(text: '9.5', fontSize: 16, color: Colors.black,fontWeight: FontWeight.bold,),
                            SizedBox(width: 5,),
                            ReusableText(text: 'kwh/100km', fontSize: 13, color: Colors.black)],)
                      ],)
                    ],),
                  ),
                  SizedBox(height: 6,),
                   Padding(
                     padding: EdgeInsets.symmetric(horizontal: 8),
                     child: Row(children: [
                      Icon(Icons.watch_later_rounded),
                       SizedBox(width: 7,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         ReusableText(text: 'Connector Type', fontSize: 12, color: Colors.black,),
                         ReusableText(text: 'CCS Combo 2', fontSize: 16, color: Colors.black,fontWeight: FontWeight.bold,),
                      ],)
                                       ],),
                   ),
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
                       FaIcon(FontAwesomeIcons.car,size: 20,),
                       SizedBox(width: 12,),
                        ReusableText(text: 'Range', fontSize: 12, color: Colors.black,),
                        
                       
                      ],),
                      SizedBox(height: 5,),
                       ReusableText(text: 'CLTC:--', fontSize: 16, color: Colors.black,fontWeight: FontWeight.bold,),
                           ReusableText(text: 'WLTP', fontSize: 12, color: Colors.black,fontWeight: FontWeight.bold,),
                           ReusableText(text: 'NEDC', fontSize: 16, color: Colors.black,fontWeight: FontWeight.bold,),
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
                  ReusableText(text: 'Godzilla Main Crib Station', fontSize: 14, color: Colors.black,fontWeight: FontWeight.bold,),
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