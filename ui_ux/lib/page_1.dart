import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_ux/page_2.dart';

class page_1 extends StatelessWidget {
  const page_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container( width: double.infinity,
        decoration:const  BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/clock.jpg"),
                fit: BoxFit.fitHeight)),
child: Column(    mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
  
  children: [  

 const   Padding(
     padding: EdgeInsets.all(12.0),
     child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         Text('Time zone',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: Colors.black),),SizedBox(height: 10,),
         Text("Yesterday the past, tomorrow's the future, but today is a gift. That's why it's called the present.” — Bil Keane.",style: TextStyle(fontSize: 18,color: Colors.black),),
       ],
     ),
   ), GestureDetector( onTap: () {
     Navigator.push(context, MaterialPageRoute(builder: (context)=> const page_2()));
   },
     child: Padding(
       padding:const    EdgeInsets.only(bottom: 20),
       child: Container(
        child: Center(child: Text("Login",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),)),
          decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(25)),
        
        
        
         height: 55,width: 350,),
     ),
   ),


],

),

      ),
    );
  }
}
