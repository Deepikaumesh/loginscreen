import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
class AddNotification extends StatefulWidget {
  @override
  _AddNotificationState createState() => _AddNotificationState();
}



class _AddNotificationState extends State<AddNotification> {


  final GlobalKey<FormState> _formKey=GlobalKey<FormState>();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController titleController = TextEditingController();


  Widget _buildHeading(){
    return Align(
        alignment: Alignment.topLeft,
        child: Text('Title',style: GoogleFonts.hindVadodara(
          textStyle: TextStyle(fontWeight: FontWeight.w600), fontSize: 21,  color: Color(0xFF00485f),),
        ),);
  }
  Widget  _buildHeadingField()
  {
    return TextFormField(
      controller:titleController ,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left:10,top:10,right:10,bottom: 10),
        // labelText: 'Enter title name',
        fillColor: Colors.white,
        border: OutlineInputBorder(),
      ),
      validator: (value){
        if(value!.trim().isEmpty)
        {
          return'Title required';
        }
      },
    );
  }
  Widget _buildHeadingone(){
    return Align(
        alignment: Alignment.topLeft,
        child: Text('Description',style:GoogleFonts.hindVadodara(
          textStyle: TextStyle(fontWeight: FontWeight.w600), fontSize: 21,  color: Color(0xFF00485f),),
        ),);
  }


  Widget _buildDescription() {
    return Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.multiline,
          controller: descriptionController,
          decoration: InputDecoration(
            //hintText: 'Enter your news',
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius:  BorderRadius.circular(10.0),
            ),
          ),
          validator: (value) {
            if (value!.trim().isEmpty) {
              return 'description required';
            }
          },
          maxLines: 10,
        ),
      ],

    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xcc0f6f8c),
        title: Text('Add Notification',
            style: GoogleFonts.hindVadodara(fontSize: 25,fontWeight: FontWeight.w500),
        ),
      ),
      body:SingleChildScrollView(
        padding: EdgeInsets.all(32),

        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[

              _buildHeading(),
              SizedBox(height: 20,),

              _buildHeadingField(),
              SizedBox(height: 20,),

              _buildHeadingone(),
              SizedBox(height: 20,),

              _buildDescription(),
              SizedBox(height: 80,),



              //_user== null ? Container() :
              //Text("The user is created successfully."),


              // ignore: deprecated_member_use
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
              //  child:Text('SUBMIT',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),),

            ],
          ),
        ),

      ),

    );
  }
}
