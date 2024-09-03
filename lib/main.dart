
import 'dart:ui';

import 'package:flutter/material.dart';
void main (){
  runApp(whatsapp());
}
class whatsapp extends StatelessWidget {
  const whatsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mini Whatsapp',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(),
    );
  }
}
 class MyHomePage extends StatelessWidget {
   const MyHomePage({super.key});

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.blueGrey[800],
       body: Padding(
         padding: const EdgeInsets.all(20.0),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Padding(
               padding: const EdgeInsets.all(12.0),
               child: Text(
                 textAlign: TextAlign.center,
                 'Welcome to Whatsapp', style: TextStyle(
                 fontSize: 34,
                 color: Colors.white,
                 fontWeight:FontWeight.bold,
               ),
               ),
             ),
             CircleAvatar(
               radius: 100,
               backgroundImage:AssetImage('assests/whatsapp.png'),
               backgroundColor: Colors.transparent,

             ),
             Column(
               children: [
                 Text('Read our Privacy Policy.Tap "Agree and continue" to accept the Terms of Service.',
                   style: TextStyle(
                     fontSize: 16,
                   ),
                   textAlign: TextAlign.center,
                 ),
                 SizedBox(
                   height: 12,
                 ),
                 ElevatedButton(
                   style: ElevatedButton.styleFrom(
                     backgroundColor: Colors.teal[600],
                     padding: EdgeInsets.symmetric(vertical: 20 ,horizontal: 70)
                   ),
                     onPressed: (){}, child: Text(
                   'AGREE AND CONTINUE ',
                   style: TextStyle(
                     color: Colors.white,
                   ),

                 )),

               ],
             )
           ],
           

         ),
       ),
     );
   }
 }
