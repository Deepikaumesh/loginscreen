

//import 'package:drawer/wardregistration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginscreen/parishregistration.dart';
import 'package:loginscreen/searchable_dropdown.dart';
import 'package:loginscreen/wardregistration.dart';

import 'dioceseregistration.dart';
import 'divinecalender.dart';
import 'eventgallery.dart';
import 'family_registration.dart';
import 'newsregpage.dart';
import 'notification (1).dart';

class DivineDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Padding(
                padding: EdgeInsets.only(left: 17),
                child: Text(
                  'Name',
                  style: GoogleFonts.hindVadodara(
                      textStyle: TextStyle(
                   fontSize: 15,
                    color: Colors.white,

                  )),
                ),
              ),
            accountEmail:
              Padding(
                padding:  EdgeInsets.only(left: 17),
                child: Text(
                  'email',
                  style: GoogleFonts.hindVadodara(
                      textStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  )),
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/js.jpeg"),
              ),
              otherAccountsPictures: [
                Container(
                  margin: EdgeInsets.only(top: 95,left: 1),
                  child: Icon(
                    MaterialCommunityIcons.account_edit_outline,
                    color: Colors.white,
                    size: 30,
                    //onpreressed:(){},
                  ),
                ),

              ],


              //decoration: BoxDecoration(
                decoration: new BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomRight,
                      colors: [
                      Color(0xBF00485f),  //old    Color(0xBF00485f), Color(0xA60073ac)
                  Color(0xBF0073ac),],
                //color: Color(0xBF003477),
           //  color:Color(0xBF00485f),
              ),),


              // DrawerHeader(decoration: BoxDecoration(color: Color(0xBF003477),),
              //  child: Text('Divine Help ',
              //  textAlign: TextAlign.center,
              // style: TextStyle(
              //   color: Colors.grey.shade300,
              //   fontSize: 25,
              //   fontWeight: FontWeight.bold,
              // )),
            ),

            ListTile(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
              title:Text(
                "Member Registration",
                style: GoogleFonts.hindVadodara(
                    textStyle: TextStyle(
                        //fontSize:18,
                       fontSize: MediaQuery.of(context).size.height * 0.022,
                        inherit: true,
                        color: Color(0xFF00485f),        //old Color(0xBF003477),
                        letterSpacing: 0)),
              ),
              leading: Icon(
                Icons.how_to_reg_outlined,
                size: MediaQuery.of(context).size.height * 0.035,
                //size: 29,
                color:Color(0xFF00485f),
              ),
              onTap:(){
            Navigator.push(
             context,
             MaterialPageRoute(builder:(context) => SearchableDropdown()
            ),
            );
            },),

            ListTile(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
              title: Text(
                "Ward Registration",
                style: GoogleFonts.hindVadodara(
                    textStyle: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.022,
                        color: Color(0xFF00485f),
                        letterSpacing: 0)),
              ),
              leading: Icon(
                MaterialCommunityIcons.home_group,
                size: MediaQuery.of(context).size.height * 0.035,
                color:Color(0xFF00485f),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WardPage()),
                );
              },
            ),
            ListTile(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
              title: Text(
                "Parish Registration",
                style: GoogleFonts.hindVadodara(
                    textStyle: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.022,
                        color:Color(0xFF00485f),
                        letterSpacing: 0)),
              ),
              leading: Icon(
                MaterialCommunityIcons.church,
                size: MediaQuery.of(context).size.height * 0.035,
                color:Color(0xFF00485f),
              ),
              onTap:(){
               Navigator.push(
              context,
                MaterialPageRoute(builder:(context) => ParishPage()
                ),
              );
               },
            ),
            ListTile(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
              title: Text(
                "Diocese Registration",
                style: GoogleFonts.hindVadodara(
                    textStyle: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.022,
                        color:Color(0xFF00485f),
                        letterSpacing: 0)),
              ),
              leading: Icon(
                MaterialCommunityIcons.christianity,
                size: MediaQuery.of(context).size.height * 0.032,
                color:Color(0xFF00485f),
                // Icon(FontAwesome5.address_book),

                //color: Colors.black,
              ),
               onTap: () {
                 Navigator.push(
                   context,
                  MaterialPageRoute(builder: (context) => DiocesePage()),
                 );
              },
            ),
            ListTile(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
              title: Text(
                "News Registration",
                style: GoogleFonts.hindVadodara(
                    textStyle: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.022,
                        color: Color(0xFF00485f),
                        letterSpacing: 0)),
              ),
              leading: Icon(
                FontAwesome.newspaper_o,
                size: MediaQuery.of(context).size.height * 0.028,
                color:Color(0xFF00485f),
              ),
              onTap:(){
               Navigator.push(
              context,
                MaterialPageRoute(builder:(context) => NewsRegPage()
                ),
              );
               },
            ),
            ListTile(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
              title: Text(
                "Divine Calender",
                style: GoogleFonts.hindVadodara(
                    textStyle: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.022,
                        color: Color(0xFF00485f),
                        letterSpacing: 0)),
              ),
              leading: Icon(
                AntDesign.calendar,
                size: MediaQuery.of(context).size.height * 0.032,
                color:Color(0xFF00485f),
              ),
              onTap:(){
              Navigator.push(
               context,
               MaterialPageRoute(builder:(context) => DivineCalender()
                ),
              );
              },
            ),
            ListTile(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
              title: Text(
                "Event Gallery",
                style: GoogleFonts.hindVadodara(
                    textStyle: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.022,
                        color: Color(0xFF00485f),
                        letterSpacing: 0)),
              ),
              leading: Icon(
                FontAwesome.photo,
                size: MediaQuery.of(context).size.height * 0.029,
                color:Color(0xFF00485f),
              ),
              onTap:(){
               Navigator.push(
                 context,
                 MaterialPageRoute(builder:(context) => EventGallery()
                ),
                );
                },
            ),
            // ListTile(
            //   title: Text("Image Uploading",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
            //   onTap:(){
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder:(context) => ImageUploading()
            //       ),
            //     );
            //   },
            // ),
            ListTile(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
              title: Text(
                "Add Notification",
                style: GoogleFonts.hindVadodara(
                    textStyle: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.022,
                        color: Color(0xFF00485f),
                        letterSpacing: 0)),

              ),
              leading: Icon(
                Icons.notification_add,
                size: MediaQuery.of(context).size.height * 0.034,
                color:Color(0xFF00485f),
              ),
              onTap:(){
              Navigator.push(
                context,
                MaterialPageRoute(builder:(context) =>AddNotification()
               ),
              );
              },
            ),
            ListTile(
              contentPadding:
              EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
              title:Text(
                "Family Registration",
                style: GoogleFonts.hindVadodara(
                    textStyle: TextStyle(
                      //fontSize:18,
                        fontSize: MediaQuery.of(context).size.height * 0.022,
                        inherit: true,
                        color: Color(0xFF00485f),        //old Color(0xBF003477),
                        letterSpacing: 0)),
              ),
              leading: Icon(
                Icons.family_restroom_sharp,
                size: MediaQuery.of(context).size.height * 0.035,
                //size: 29,
                color:Color(0xFF00485f),
              ),


    onTap:(){
                Navigator.push(
                  context,
                 MaterialPageRoute(builder:(context) =>  Familyregistration()
                 ),
                );
               },
            ),
          ],
        ),
      ),
    );
  }
}
