import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ParishPage extends StatefulWidget {
  @override
  _ParishPageState createState() => _ParishPageState();

  void initState() {}
}

class _ParishPageState extends State<ParishPage> {
  String? dioceseId;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController dioceseController = TextEditingController();
  final TextEditingController parishnameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController pincodeController = TextEditingController();
  final TextEditingController latitudeController = TextEditingController();
  final TextEditingController longitudeController = TextEditingController();
  final TextEditingController historyController = TextEditingController();

  @override
  void initState() {
    super.initState();
    //  _getCurrentLocation();
  }

  Widget _buildParishName() {
    return TextFormField(
      controller: parishnameController,
      decoration: InputDecoration(
        labelText: 'Parish name',
        labelStyle: TextStyle(fontSize: 15),
        contentPadding: EdgeInsets.all(0),
      ),
      style: GoogleFonts.hindVadodara(),
      validator: (value) {
        if (value!.trim().isEmpty) {
          return 'Please enter your parish name';
        }
      },
    );
  }

  Widget _buildaddress() {
    return TextFormField(
      keyboardType: TextInputType.multiline,
      maxLines: null,
      controller: addressController,
      decoration: InputDecoration(
        labelText: 'Address',
        labelStyle: TextStyle(fontSize: 15),
        contentPadding: EdgeInsets.all(0),
      ),
      style: GoogleFonts.hindVadodara(),
      validator: (value) {
        if (value!.trim().isEmpty) {
          return 'Please enter your address';
        }
      },
    );
  }

  Widget _buildpincode() {
    return TextFormField(
      controller: pincodeController,
      decoration: InputDecoration(
        labelText: 'Pincode',
        labelStyle: TextStyle(fontSize: 15),
        contentPadding: EdgeInsets.all(0),
      ),
      style: GoogleFonts.hindVadodara(),
      validator: (value) {
        if (value!.trim().isEmpty) {
          return 'Please enter your pincode';
        }
      },
    );
  }

  Widget _buildLatitude() {
    return TextFormField(
      controller: latitudeController,
      decoration: InputDecoration(
        labelText: 'latitude',
        labelStyle: TextStyle(fontSize: 15),
        contentPadding: EdgeInsets.all(0),
      ),
      style: GoogleFonts.hindVadodara(),
      validator: (value) {
        if (value!.trim().isEmpty) {
          return 'Please enter your latitude';
        }
      },
    );
  }

  Widget _buildLongitude() {
    return TextFormField(
      controller: longitudeController,
      decoration: InputDecoration(
        labelText: 'longitude',
        labelStyle: TextStyle(fontSize: 15),
        contentPadding: EdgeInsets.all(0),
      ),
      style: GoogleFonts.hindVadodara(),
      validator: (value) {
        if (value!.trim().isEmpty) {
          return 'Please enter your longitude';
        }
      },
    );
  }

  Widget _buildHistory() {
    return TextFormField(
      keyboardType: TextInputType.multiline,
      maxLines: null,
      controller: historyController,
      decoration: InputDecoration(
        labelText: 'history',
        labelStyle: TextStyle(fontSize: 15),
        contentPadding: EdgeInsets.all(0),
      ),
      style: GoogleFonts.hindVadodara(),
      validator: (value) {
        if (value!.trim().isEmpty) {
          return 'Please enter history';
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor:Color(0xcc0f6f8c),
          title: Text('Parish Registration',style: GoogleFonts.hindVadodara(textStyle:TextStyle(fontSize: 27,color: Colors.white,fontWeight: FontWeight.w500))),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(32),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              // diocese(),
              SizedBox(
                height: 20,
              ),

              _buildParishName(),
              SizedBox(
                height: 20,
              ),

              _buildaddress(),
              SizedBox(
                height: 20,
              ),

              _buildpincode(),
              SizedBox(
                height: 20,
              ),

              _buildLatitude(),
              SizedBox(
                height: 20,
              ),

              _buildLongitude(),
              SizedBox(
                height: 20,
              ),

              _buildHistory(),
              SizedBox(
                height: 60,
              ),


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
