

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class WardPage extends StatefulWidget {

  @override



  _WardPageState createState() => _WardPageState();
}

class _WardPageState extends State<WardPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController wardnameController = TextEditingController();
  final TextEditingController placeController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController parishController = TextEditingController();

  Widget _buildWardname() {

    return Padding(

      padding: const EdgeInsets.only(top: 10),
      child: Container(
        height: 65,

        padding: EdgeInsets.only(bottom: 1,left: 10),

        decoration:BoxDecoration(borderRadius: BorderRadius.circular(13), color: Colors.white),
        child: TextFormField(
          controller: wardnameController,
          decoration: InputDecoration(
            labelStyle: TextStyle(color: Colors.black45),
            labelText: 'Wardname',
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color:Colors.transparent),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
          ),
          validator: (value) {
            if (value!.trim().isEmpty) {
              return 'Please enter your wardname';
            }
          },
        ),
      ),
    );
  }

  Widget _buildPlace() {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        height: 65,

        padding: EdgeInsets.only(bottom: 1,left: 10),

        decoration:BoxDecoration(borderRadius: BorderRadius.circular(13), color: Colors.white),
        child: TextFormField(
          controller: placeController,
          decoration: InputDecoration(
            labelStyle: TextStyle(color: Colors.black45),
            labelText: 'Place',
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color:Colors.transparent),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
          ),
          validator: (value) {
            if (value!.trim().isEmpty) {
              return 'Please enter your Place';
            }
          },
        ),
      ),
    );
  }

  Widget _buildAddress() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        height: 65,

        padding: EdgeInsets.only(bottom: 1,left: 10),

        decoration:BoxDecoration(borderRadius: BorderRadius.circular(13), color: Colors.white),
        child: TextFormField(

          keyboardType: TextInputType.multiline,
          maxLines: null,
          controller: addressController,
          decoration: InputDecoration(
            labelText: 'Address',
            labelStyle: TextStyle(color: Colors.black45),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color:Colors.transparent),
            ),

    focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.transparent),
      



          ),),
          validator: (value) {
            if (value!.trim().isEmpty) {
              return 'Please enter your Address';
            }
          },
        ),
      ),
    );
  }

  Widget _buildParish() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        height: 65,

        padding: EdgeInsets.only(bottom: 1,left: 10),

        decoration:BoxDecoration(borderRadius: BorderRadius.circular(13), color: Colors.white),

        child: TextFormField(
          controller: parishController,
          decoration: InputDecoration(
            labelText: 'Parish Id',
            labelStyle: TextStyle(color: Colors.black45,),//alignLabelWithHint:true,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color:Colors.transparent),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),



            ),
          ),
          validator: (value) {
            if (value!.trim().isEmpty) {
              return 'Please enter your Parish';
            }
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Ward Registration',
          style: GoogleFonts.hindVadodara(
              textStyle: TextStyle(fontSize: 27, color: Colors.white,fontWeight: FontWeight.w500)),
        ),

        backgroundColor:Color(0xcc0f6f8c) //Color(0xBf00485f), // Color(0xbf007f9b),// Color(0xA6003477),
      ),
      body: Container(
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
                //Color.fromARGB(255, 25,178,238),
                // Color.fromARGB(255, 21,236,229)
              ],
            )),




        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                _buildParish(),
                SizedBox(
                  height: 20,
                ),

                _buildWardname(),
                SizedBox(
                  height: 20,
                ),

                _buildPlace(),
                SizedBox(
                  height: 20,
                ),

                _buildAddress(),
                SizedBox(
                  height: 36,
                ),

                //_user== null ? Container() :
                //Text("The user is created successfully."),

                // ignore: deprecated_member_use
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      final String parish = parishController.text;
                      final String wardName = wardnameController.text;
                      final String place = placeController.text;
                      final String address = addressController.text;
                    }
                  },
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

                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
