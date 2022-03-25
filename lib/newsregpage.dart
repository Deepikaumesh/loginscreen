import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Log.dart';

class NewsRegPage extends StatefulWidget {
  @override
  _NewsRegPageState createState() => _NewsRegPageState();
}

class _NewsRegPageState extends State<NewsRegPage> {
  String? memberId;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController newscontentController = TextEditingController();
  final TextEditingController newsTitleController = TextEditingController();

  Widget _buildNewsContent() {
    return Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.multiline,
          controller: newscontentController,
          decoration: InputDecoration(
            //hintText: 'Enter your news',
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          validator: (value) {
            if (value!.trim().isEmpty) {
              return 'Please enter news';
            }
          },
          maxLines: 10,
        ),
      ],
    );
  }

  Widget _buildHeading() {
    return Align(
      alignment: Alignment.topLeft,
      child: Text('News Content',
          style: GoogleFonts.hindVadodara(
            textStyle: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 21,
              color:  Color(0xFF00485f),
            ),
          )),
    );
  }

  Widget _buildTitleOne() {
    return Align(
      alignment: Alignment.topLeft,
      child: Text('News title',
          style: GoogleFonts.hindVadodara(
            textStyle: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 21,
              color:  Color(0xFF00485f),
            ),
          )),
    );
  }

  Widget _buildNewsTitle() {
    return TextFormField(
      controller: newsTitleController,
      decoration: InputDecoration(
        contentPadding:
        EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
      ),
      validator: (value) {
        if (value!.trim().isEmpty) {
          return 'Title required';
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xcc0f6f8c),
        title: Text(
          'Add News',
          style: GoogleFonts.hindVadodara(fontSize: 25,fontWeight:FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(32),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              _buildTitleOne(),
              SizedBox(
                height: 10,
              ),
              _buildNewsTitle(),
              SizedBox(
                height: 30,
              ),
              _buildHeading(),
              SizedBox(
                height: 10,
              ),
              _buildNewsContent(),
              SizedBox(
                height: 60,
              ),
              RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                color: Color(0xBF003477),
                onPressed: () {},
                child: Container(
                  padding: EdgeInsets.fromLTRB(90, 15, 90, 15),
                  decoration: BoxDecoration(
                      color: Color(0xE60e638a),
                      borderRadius: BorderRadius.circular(40)),
                  child: Text('Submit',
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
            ],
          ),
        ),
      ),
    );
  }
}

