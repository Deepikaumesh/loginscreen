
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

import 'Log.dart';
class DivineCalender extends StatefulWidget {
  @override
  _DivineCalenderState createState() => _DivineCalenderState();
}
class _DivineCalenderState extends State<DivineCalender> {
  final GlobalKey<FormState> _formKey=GlobalKey<FormState>();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController detailsController = TextEditingController();
 // final dateFormat =DateFormat('dd-MM-yyyy');



  @override
  void dispose() {
      dateController.dispose();
    super.dispose();
  }

  Widget _buildTitle() {
    return Align(
      alignment: Alignment.topLeft,
      child: Text('Title',
        style: GoogleFonts.hindVadodara(
       textStyle: TextStyle(fontWeight: FontWeight.w600),fontSize: 21,color: Color(0xFF00485f)),),);
  }
  Widget  _buildTitleContent()
  {
    return TextFormField(
      controller: titleController,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left:10,top:10,right:10,bottom: 10),
       // labelText: 'Enter title name',
        fillColor: Colors.white,
        border: OutlineInputBorder(),
      ),
      validator: (value){
        if(value!.trim().isEmpty)
        {
          return 'Please enter your Title';
        }
      },
    );
  }
  Widget _buildDate() {
    return Align(
      alignment: Alignment.topLeft,
      child: Text('Select a date',
        style: GoogleFonts.hindVadodara(
            textStyle: TextStyle(fontWeight: FontWeight.w600),fontSize: 21,color: Color(0xFF00485f)),),);
  }
  Widget  _buildDateContent()
  {
   return TextFormField(
     readOnly: true,
     textInputAction: TextInputAction.newline,
      controller: dateController,
      decoration: InputDecoration(
        hintText: 'Add  your date',
        contentPadding: EdgeInsets.only(left:10,top:10,right:10,bottom: 10),
        // labelText: 'Enter title name',
        fillColor: Colors.white,
        border: OutlineInputBorder(),
      ),
     onTap: () async {
       var date =  await showDatePicker(
           context: context,
           initialDate:DateTime.now(),
           initialDatePickerMode: DatePickerMode.day,
           firstDate:DateTime(1990),
           lastDate: DateTime(2100));
       dateController.text = date.toString().substring(0,10);
      // dateController.text =dateFormat.format(date!);
       print (date);
       },
       validator: (value){
       if(value!.trim().isEmpty)
       {
         return 'Please select a date';
       }

     }
    );
  }
  Widget _buildTitleOne() {
    return Align(
      alignment: Alignment.topLeft,
      child: Text('Details',
        style:GoogleFonts.hindVadodara(
            textStyle: TextStyle(fontWeight: FontWeight.w600),fontSize: 21,color: Color(0xFF00485f)),),);
  }
  Widget _buildDetails() {
    return Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.multiline,
          controller: detailsController,
          decoration: InputDecoration(
            //hintText: 'Enter your news',
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius:  BorderRadius.circular(10.0),
            ),
          ),
          validator: (value) {
            if (value!.trim().isEmpty) {
              return 'details required';
            }
          },
          maxLines: 6,
        ),
      ],

    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xcc0f6f8c),
        title: Text('Divine Calender',
          style: GoogleFonts.hindVadodara(fontSize: 25,fontWeight: FontWeight.w500),
        ),
      ),
      body:SingleChildScrollView(
      padding: EdgeInsets.all(32),
        child: Form(
          key: _formKey,
          child: Column(
              children: <Widget>[

                _buildTitle(),
                SizedBox(height: 10,),

                _buildTitleContent(),
                SizedBox(height: 50,),


                _buildDate(),
                SizedBox(height: 10,),

                _buildDateContent(),
                SizedBox(height: 40,),

                 _buildTitleOne(),
                 SizedBox(height: 15,),


              _buildDetails(),
               SizedBox(height: 60,),


                //_user== null ? Container() :
               // Text("your  date booked successfully."),



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

        ],
          ),
      ),
      ),
    );
  }
}

