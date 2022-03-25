import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class DiocesePage extends StatefulWidget {

  @override
  _DiocesePageState createState() => _DiocesePageState();
}


class _DiocesePageState extends State<DiocesePage> {


  final GlobalKey<FormState> _formKey=GlobalKey<FormState>();
  final TextEditingController diocesenameController = TextEditingController();
  final TextEditingController placeController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController pincodeController = TextEditingController();
  final TextEditingController latitudeController = TextEditingController();
  final TextEditingController longitudeController = TextEditingController();
  final TextEditingController historyController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController countryController = TextEditingController();

  @override
  void initState() {
    super.initState();
    //  _getCurrentLocation();
  }


  Widget _buildDiocesename() {
    return TextFormField(
      controller: diocesenameController,
      decoration: InputDecoration(labelText: 'Diocese Name',
        labelStyle: TextStyle( fontSize: 15),
        contentPadding:EdgeInsets.all(0),
      ),
      style: GoogleFonts.hindVadodara(),
      validator: (value) {
        if (value!.trim().isEmpty) {
          return 'Please enter your diocesename';
        }
      },
    );
  }

  Widget _buildPlace() {
    return TextFormField(
      controller: placeController,
      decoration: InputDecoration(labelText: 'Place',
        labelStyle: TextStyle( fontSize: 15),
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
  Widget _buildAddress() {
    return TextFormField(
      keyboardType: TextInputType.multiline,
      maxLines: null,
      controller: addressController,
      decoration: InputDecoration(labelText: 'Address',
        labelStyle: TextStyle( fontSize: 15),
        contentPadding:EdgeInsets.all(0),
      ),
      style: GoogleFonts.hindVadodara(),
      validator: (value) {
        if (value!.trim().isEmpty) {
          return 'Please enter your Address';
        }
      },
    );
  }
  Widget _buildPincode() {
    return TextFormField(
      controller: pincodeController,
      decoration: InputDecoration(labelText: 'Pincode',
        labelStyle: TextStyle( fontSize: 15),
        contentPadding:EdgeInsets.all(0),
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
      decoration: InputDecoration(labelText: 'latitude',
        labelStyle: TextStyle( fontSize: 15),
        contentPadding:EdgeInsets.all(0),
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
      controller:longitudeController,
      decoration: InputDecoration(labelText: 'longitude',
        labelStyle: TextStyle( fontSize: 15),
        contentPadding:EdgeInsets.all(0),
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
      controller:historyController,
      decoration: InputDecoration(labelText: 'history',
        labelStyle: TextStyle( fontSize: 15),
        contentPadding:EdgeInsets.all(0),
      ),
      style: GoogleFonts.hindVadodara(),
      validator: (value) {
        if (value!.trim().isEmpty) {
          return 'Please enter history';
        }
      },
    );
  }
  Widget _buildState() {
    return TextFormField(
      controller: stateController,
      decoration: InputDecoration(labelText: 'State',
        labelStyle: TextStyle( fontSize: 15),
        contentPadding:EdgeInsets.all(0),
      ),
      style: GoogleFonts.hindVadodara(),
      validator: (value) {
        if (value!.trim().isEmpty) {
          return 'Please enter your State';
        }
      },
    );
  }
  Widget _buildCountry() {
    return TextFormField(
      controller: countryController,
      decoration: InputDecoration(labelText: 'Country',
        labelStyle: TextStyle( fontSize: 15),
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
        title: Text('Diocese Registration', style: GoogleFonts.hindVadodara(fontSize: 25,fontWeight:FontWeight.w500),),
      ),
      body:SingleChildScrollView(
        padding: EdgeInsets.all(32),

        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[

              _buildDiocesename(),
              SizedBox(height: 20,),

              _buildPlace(),
              SizedBox(height: 20,),

              _buildAddress(),
              SizedBox(height: 20,),

              _buildPincode(),
              SizedBox(height: 20,),

              _buildLatitude(),
              SizedBox(height: 20,),

              _buildLongitude(),
              SizedBox(height: 20,),

              _buildHistory(),
              SizedBox(height: 20,),

              _buildState(),
              SizedBox(height: 20,),

              _buildCountry(),
              SizedBox(height: 20,),
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

    ],),
    ),
    ),


    );
  }
  }


