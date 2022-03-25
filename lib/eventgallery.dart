import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventGallery extends StatefulWidget {
  @override
  _EventGalleryState createState() => _EventGalleryState();
}

class _EventGalleryState extends State<EventGallery> {
  String? memberId;
  String? memberType;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController eventTitleController = TextEditingController();
  final TextEditingController eventTypeController = TextEditingController();
  final TextEditingController discriptionController = TextEditingController();

  Widget _buildTitle() {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        'Event Title',
        style: GoogleFonts.inter(
            textStyle: TextStyle(fontWeight: FontWeight.w600), fontSize: 21,  color: Color(0xFF00485f),),
      ),
    );
  }

  Widget _buildEventTitle() {
    return Container(
      height: 65,

      padding: EdgeInsets.only(bottom: 1,left: 10),

      decoration:BoxDecoration(borderRadius: BorderRadius.circular(13), color: Colors.white),
      child: TextFormField(
        controller: eventTitleController,
      decoration: InputDecoration(
    labelStyle: TextStyle(color: Colors.black45),
    //labelText: 'Wardname',
    enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(color:Colors.transparent),
    ),
    focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.transparent),),),
        // decoration: InputDecoration(
        //   contentPadding:
        //       EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
        //   // labelText: 'Enter title name',
        //   fillColor: Colors.white,
        //   border: OutlineInputBorder(),
        // ),
        validator: (value) {
          if (value!.trim().isEmpty) {
            return 'Event Title required';
          }
        },
      ),
    );
  }


  Widget _buildTitleThree() {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        'Event Description',
        style: GoogleFonts.inter(
            textStyle: TextStyle(fontWeight:FontWeight.w600),  fontSize: 21,  color: Color(0xFF00485f),),

      ),
    );
  }

  Widget _buildEventDiscription() {
  //  return TextFormField(
    return Container(
      height: 140,

      padding: EdgeInsets.only(bottom: 1,left: 10),

      decoration:BoxDecoration(borderRadius: BorderRadius.circular(13), color: Colors.white),

      child: TextFormField(
        keyboardType: TextInputType.multiline,
        controller: discriptionController,
        decoration: InputDecoration(
          labelStyle: TextStyle(color: Colors.black45),
         // labelText: 'Wardname',
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color:Colors.transparent),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
        ),
        maxLines: 5,
        validator: (value) {
          if (value!.trim().isEmpty) {
            return 'description';
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xcc0f6f8c),
      title: Text(
          'Event Gallery',
          style: GoogleFonts.hindVadodara(fontSize: 25,fontWeight: FontWeight.w500),
        ),
      ),
     //body:SingleChildScrollView(
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

     child:SingleChildScrollView(
        padding: EdgeInsets.all(32),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              _buildTitle(),
              SizedBox(
                height: 20,
              ),
              _buildEventTitle(),
              SizedBox(
                height: 20,
              ),
              _buildTitleThree(),
              SizedBox(
                height: 20,
              ),
              _buildEventDiscription(),
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
     ),
    );
  }
}
