
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:my_app/reusable_text.dart';
import 'package:my_app/widgets/bottom_flutter_navbar.dart';
import 'package:my_app/widgets/car_widget.dart';
import 'package:my_app/widgets/two_row_widget.dart';

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
              SizedBox(
                width: double.infinity,
                height: size.height*0.3,
                child: Image.asset(
                  fit: BoxFit.fill,
                  'assets/images/3.png'),
              ),
              Container(
                
                width: double.infinity,
                height: size.height*0.3,
                 decoration: const BoxDecoration(
                    ), 
                    child:  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(height: size.height*0.08,),
                        const ReusableText(
                          text: 'Toyota Corolla Hybrid',
                           fontSize: 20,
                            color: Colors.deepOrange,
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
                            color: Colors.deepOrange,
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
                  color:Colors.deepOrange,
                   
                 ),
                    ),
                ),
              )
             ],
            ),
            SizedBox(height: size.height*0.06,),
            const CarWidget(),
            SizedBox(height: size.height*0.02,),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                color:const Color(0xff161d30),
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
                    ReusableText(text: '100kw', fontSize: 15, color: Colors.white),
                    SizedBox(height: 8,),
                    ReusableText(text: 'Battery Capacity', fontSize: 10, color: Colors.grey),
                  ],),
                ),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    ReusableText(text: '23:20:3s', fontSize: 15, color: Colors.white),
                     SizedBox(height: 8,),
                    ReusableText(text: '  Quota Duration', fontSize: 10, color: Colors.grey),
                  ],),
                ),
              ],),
            ),
             
           const  SizedBox(height: 8,),
           const TwoRowWidget(),
           TextButton(
            onPressed: (){},
            
             child:const Center(
               child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                
                children: [
               ReusableText(text: 'View all history', fontSize: 10, color: Colors.deepOrange),
                Icon(Icons.arrow_right_alt_outlined, color: Colors.deepOrange)
               ],),
             )
             ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  border: Border.all(width: 0.01),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    ReusableText(text: 'Godzilla Main Crib Station', fontSize: 12, color: Colors.black,fontWeight: FontWeight.bold,),
                      SizedBox(height: 15,),
                    Row(
                      children: [
                      ReusableText(text: 'session ID:675648', fontSize: 11,color: Colors.black),
                        SizedBox(width: 6,),
                      Icon(Icons.copy,size: 18,)
                    ],)
                  ],),
                ),
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