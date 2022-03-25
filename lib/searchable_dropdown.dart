import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:find_dropdown/find_dropdown.dart';

//import 'package:searchable_dropdown/searchable_dropdown.dart';
//import 'package:searchfield/searchfield.dart';


import 'dropdown/customDropDownth.dart';
import 'dropdown/customDropDowntwo.dart';
import 'dropdown/customDropDown.dart';
import 'family_registration.dart';
import 'memeberregistration.dart';

class SearchableDropdown extends StatefulWidget {
  const SearchableDropdown({Key? key}) : super(key: key);

  @override
  _SearchableDropdownState createState() => _SearchableDropdownState();
}

class _SearchableDropdownState extends State<SearchableDropdown> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back,size: 30,),
        ),
        title: Text('Member Registration',
          style: GoogleFonts.hindVadodara(fontSize: 27,fontWeight: FontWeight.w500),
        ),
        elevation: 0,
        backgroundColor:Color(0xcc0f6f8c),
      ),
     //backgroundColor:Color(0x8c00485f),//.withOpacity(0.2),//(0xcc0f6f8c).withOpacity(0.7),
      body:
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: new BoxDecoration(
            gradient: new LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                     Color(0x66d0073ac),
                     Color(0x800073ac),
                     Color(0x990073ac),
                     Color(0x990073ac),
                                       //Color(0xBF00485f),
                                     // Color(0xA60073ac),
                                      //Color(0xA60073ac),
                                       //Color(0xA60073ac),
                //Color.fromARGB(255, 25,178,238),
      //           // Color.fromARGB(255, 21,236,229)
              ],
             )),
         child:
        SingleChildScrollView(
          padding: EdgeInsets.all(42),
    child: Column(
    children: <Widget>[
        CustomSearchableDropdownone(
    backgroundColor:Colors.white,//.withOpacity(0.2),
          searchBoxDecoration: InputDecoration(
                 //  fillColor: Colors.greenAccent,
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(50,)

                 ),
                 suffixIcon: Icon(Icons.search_rounded),
                 //hintStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.green,backgroundColor: Colors.red),
               ),
          items: [
                 "Nileswar",
                 "Kasaragod",
                 "Kanhangad",
                 "Periye",
                 "Kozhikkode",
                 "Kannur",
                 "Eranakulam",
                  "Trivandrum",
                  "Kochi",
                  "vayanad",

               ],

               onChanged: (item) {
                 print(item);
              },
             //  selectedItem: "Select Diocese",
              showClearButton: true,
           ),
        SizedBox(height: 40,),

        CustomSearchableDropdowntwo(
          searchBoxDecoration: InputDecoration(
            //  fillColor: Colors.greenAccent,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            suffixIcon: Icon(Icons.search_rounded),
            hintStyle: TextStyle(fontWeight: FontWeight.bold),
          ),
          //searchBoxDecoration:InputDecoration(fillColor: Colors.pinkAccent),

          items: [
            "Nileswar",
            "Kasaragod",
            "Kanhangad",
            "Periye",
            "Kozhikkode",
            "Kannur",
            "Eranakulam",
          ],
          onChanged: (item) {
            print(item);
          },
          //selectedItem: "Select Parish",
          //searchHint: "seletc",
          showClearButton: true,
        ),
        SizedBox(height: 40,),

        CustomSearchableDropdowntth(


          backgroundColor:Colors.white,


          searchBoxDecoration: InputDecoration(
            //  fillColor: Colors.greenAccent,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            suffixIcon: Icon(Icons.search_rounded),
            hintStyle: TextStyle(fontWeight: FontWeight.bold),
          ),
          //searchBoxDecoration:InputDecoration(fillColor: Colors.pinkAccent),

          items: [
            "Nileswar",
            "Kasaragod",
            "Kanhangad",
            "Periye",
            "Kozhikkode",
            "Kannur",
            "Eranakulam",
          ],
          onChanged: (item) {
            print(item);
          },

         //selectedItem: "Select Ward",

          showClearButton: true,
        ),



        SizedBox(height: 60,),
        RaisedButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40)),
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          color: Color(0xBF003477),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder:(context) =>  Registration()
              ),
            );

          },
          child: Container(
            padding: EdgeInsets.fromLTRB(90, 15, 90, 15),
            decoration: BoxDecoration(
                color: Color(0xE60e638a),
                borderRadius: BorderRadius.circular(40)),
            child: Text('Continue..',
                textAlign: TextAlign.center,
                style: GoogleFonts.hindVadodara(
                  textStyle: TextStyle(
                    fontSize: 25,
                    //  fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )),

          ),
        ),
    ],),),
     ),
    );
  }
}
