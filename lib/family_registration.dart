
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
class Familyregistration extends StatefulWidget {

  @override
  _FamilyregistrationState createState() => _FamilyregistrationState();
}
class _FamilyregistrationState extends State<Familyregistration> {
  String? wardId;
   final GlobalKey<FormState> _formKey=GlobalKey<FormState>();
  final TextEditingController familynameController = TextEditingController();
  final TextEditingController familyheadController = TextEditingController();
 // final TextEditingController addressController = TextEditingController();
 // final TextEditingController parishController = TextEditingController();


  Widget _buildfamilyname() {
    return SizedBox(
      height: 60,
      child: TextFormField(
        controller: familynameController,
        decoration: InputDecoration(labelText: 'Family Name',
          labelStyle: TextStyle( fontSize: 17),
          contentPadding:EdgeInsets.all(0),
          // contentPadding: EdgeInsets.symmetric(horizontal:0.0,vertical: 0.0),
        ),
        style: GoogleFonts.hindVadodara(),
        validator: (value) {
          if (value!.trim().isEmpty) {
            return 'Please enter your Family name';
          }
        },
      ),
    );
  }


  Widget _buildfamilyhead() {
    return TextFormField(
      controller: familyheadController,
      decoration: InputDecoration(labelText: 'Family Head',
        labelStyle: TextStyle( fontSize: 17),
        contentPadding:EdgeInsets.all(0),
      ),
      style: GoogleFonts.hindVadodara(),
      validator: (value) {
        if (value!.trim().isEmpty) {
          return 'Please enter your Place';
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xcc0f6f8c),
        title: Text('Family Registration' , style: GoogleFonts.hindVadodara(fontSize: 25,fontWeight: FontWeight.w500),),
      ),

      body:SingleChildScrollView(
        padding: EdgeInsets.all(32),

        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[


              _buildfamilyname(),
              SizedBox(height: 30,),

              _buildfamilyhead(),
              SizedBox(height: 50,),

              RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                onPressed: () {},
                child: Container(
                  padding: EdgeInsets.fromLTRB(90, 15, 90, 15),
                  decoration: BoxDecoration(
                      color:Color(0xE60e638a),
                      borderRadius: BorderRadius.circular(40)),
                  child: Text(
                    'Register',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.hindVadodara(
                      textStyle: TextStyle(
                        fontSize: 25,
                        //  fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],

          ),
        ),

      ),

    );

  }
  }