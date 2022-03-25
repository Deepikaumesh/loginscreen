// ignore: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loginscreen/drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginscreen/wardregistration.dart';

import 'apptesting.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold (
     // resizeToAvoidBottomInset: false,
     appBar: AppBar(
        backgroundColor:Color(0xBF00485f),
       elevation: 0,
       flexibleSpace: Container(
         color: Color(0x3300485f),
       ),
       // flexibleSpace: Container(
        //   decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //         colors: [
        //           Color(0xFF00485f),
        //           Color(0xBF00485f),
        //         ],
        //         begin: const FractionalOffset(0.0, 0.0),
        //         end: const FractionalOffset(1.0, 0.0),
        //         stops: [0.0, 1.0],
        //         tileMode: TileMode.clamp),
        //   ),
        // ),





     ),
      drawer: DivineDrawer(),
      body:Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: new BoxDecoration(
            gradient: new LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xBF00485f),
                Color(0xA60073ac),

                                                              //Color.fromARGB(255, 25,178,238),
                                                             // Color.fromARGB(255, 21,236,229)
              ],
            )),


        child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
                      Container(

              //  child: Image.asset("assets/images/js.jpeg",fit: BoxFit.contain),
            height: 250.0,
              width: double.infinity,
              padding: EdgeInsets.all(80.0),
              decoration: BoxDecoration(
                color:Color(0x3300485f),
                borderRadius: BorderRadius.only(bottomLeft:Radius.circular(130.0),
                    bottomRight: Radius.circular(130.0)),

                // child: Image.asset(
                // asset.background,
                // fit: BoxFit.fill, // I thought this would fill up my Container but it doesn't
              ),


                 // DecorationImage(
                 //     image: AssetImage("assets/images/js.jpeg",),

                //color: Colors.red,
               // borderRadius: BorderRadius.only(bottomLeft:Radius.circular(80.0),
              // bottomRight: Radius.circular(80.0))

             //
          //   child: Image.asset("assets/images/js.jpeg",),
              //child: CircleAvatar(
                // child: Image.asset("assets/images/j.jpg"),


           child:
           Container(

             // width: 500,
             // height: 500,
             decoration: BoxDecoration(
               border: Border.all(width: 2.5,color: Colors.white),
               color: Colors.white70,
               shape: BoxShape.circle,
               image: DecorationImage(
                   image:AssetImage("assets/images/c.png"),

                   fit: BoxFit.fitHeight,
               ),
             ),
           ),
                      ),
            //borderRadius: BorderRadius.only(bottomLeft:Radius.circular(10.0)
            // ),                // backgroundImage: AssetImage("assets/images/j.jpg",),
                // backgroundColor: Colors.transparent,
                //  child:
                //  Image.asset("assets/images/b.png",),
                // //
               // child:  Icon(Icons.account_circle,
               //    //FontAwesomeIcons.userAlt,
               //    size: 100.0,
               // color:Color(0xBF00485f),
            // Container(
          //   height: 220,
          //   width: 400,
          //   //color: Colors.red,
          //   // child: ClipRRect(
          //   //  // borderRadius: BorderRadius.only(bottomLeft:Radius.circular(10.0)
          //   //   child: Image(height:220, width:00,
          //   //       image:AssetImage("assets/images/g.jpg",)),
          //   // borderRadius: BorderRadius.only(bottomLeft:Radius.circular(130.0),bottomRight: Radius.circular(130.0)
          //   // ),),
          // ),
             SizedBox(height:20),
            Text("Welcome Devotees!",style: TextStyle(fontSize:20,color: Colors.white70),),
            //  Color(0xFF00485f),
            SizedBox(height: 1,),
            Text("Login to continue",style: TextStyle(fontSize:15,color: Colors.white70),),
            //
            SizedBox(height: 15.0,),
          //  Text("Sign in to continue",style: TextStyle(fontSize: 15,color:Color(0xFF00485f),    ),),
          //  SizedBox(height: 30,),



            Container(
              margin: EdgeInsets.symmetric(horizontal: 40.0),
              padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.white70)],// spreadRadius:2,blurRadius: 200.0)],
                color:Colors.white.withOpacity(0.4),           //Color(0x3300485f),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Username",
                  icon: Icon(FontAwesomeIcons.userAlt,color:Color(0xFF00485f),),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40.0),
              padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.white70,)],              //  spreadRadius: 3,blurRadius: 150.0)],
                color:Colors.white.withOpacity(0.5),
                //Color(0x3300485f),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Password",
                  icon: Icon(FontAwesomeIcons.lock,color:Color(0xFF00485f),),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 28,),
            Container(
              // height:50,
              // width:130,
              // decoration: BoxDecoration(color:Color(0x3300485f),borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10))),
              //margin: EdgeInsets.only(left: 255,top:20 ),
              alignment: Alignment.center,
              child: Text("Forgot Password?",style:GoogleFonts.barlow(textStyle: TextStyle(color:Color(0xFF00485f),fontSize: 17,fontWeight: FontWeight.w600),) ),
            ),
            SizedBox(height: 25.0,),
            RaisedButton(onPressed: (){},
             // color:Color(0x5900485f),
                         //color:Color(0x2600485f),
              // Color(0x9900a1c0),
              color: Colors.white70,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 90,vertical: 15),
                child: Text("Login",style: TextStyle(fontSize: 25.0,color: Colors.black),),
              ),
              shape: StadiumBorder(),
            ),
            SizedBox(height: 10,),

            Container(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Doesn't have an Account? ",style: TextStyle(color: Colors.white.withOpacity(0.7),           //Color(0xff00485f),
                      fontSize: 16  ,fontWeight:FontWeight.w700),),
                  //SizedBox(width: 12,),
          FlatButton(
              textColor:Color(0xFF00485f),
              child: Text(
                'Register Now',
                style: TextStyle(fontSize:22,fontWeight: FontWeight.w700),),
            onPressed: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context)=>WardPage()),
              );

            },),

                 Text("Sign Up",style: TextStyle(color:Color(0xff00485f), fontSize:19   ),),
                  FlatButton(
                    padding: EdgeInsets.only(left:190),
                    textColor:Color(0xFF00485f),
                    child: Text(
                      'App Testing>>',
                      style: TextStyle(fontSize:16,fontWeight: FontWeight.w700,decoration: TextDecoration.underline,),),
                    onPressed: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>AppTest()),
                      );

                    },),
                ],
              ),
            )
          ],



        ),
        ),
      ),
    );
  }
}
