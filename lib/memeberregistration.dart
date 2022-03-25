
//import 'package:divine_app/api_response_model.dart';
// import 'package:dio/dio.dart';
// import 'package:divine_app/family/family_api_get.dart';
// import 'package:divine_app/radiogroup.dart';
// import 'package:divine_app/religion.dart';
// import 'package:divine_app/response_model/registration_response_model.dart';
// import 'package:divine_app/utility.dart';
// import 'package:dropdownfield/dropdownfield.dart';
// import 'package:find_dropdown/find_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:http/http.dart' as http;

// import '../gender.dart';
// import '../homepage.dart';
// import '../image_uploading.dart';
// import 'customDropDownGender.dart';
// import 'customDropDownLanguage.dart';
// import 'customDropDownReligion.dart';
// import 'customDropDownfamily.dart';
// import 'member_model.dart';
// import 'dropdown/divine_dropdown.dart';
// import 'family/family_api_get.dart';
// import 'family/family_model.dart';
// import 'gender.dart';
// import 'homepage.dart';
// import 'image_uploading.dart';



// ignore: must_be_immutable
class Registration extends StatefulWidget {



  @override
  _RegistrationState createState() => _RegistrationState();
}

// Future<RegResponse?>createUser(
//    // String diocese,
//     String parish,
//     String ward,
//     String family,
//     String religion,
//     String gender,
//     String language,
//     String name,
//     String phoneNumber,
//     String userName,
//     String password,
//     String emailId,
//     String houseName,
//     String address
// ) async{
//   final Uri apiUrl =Uri.parse("http://appesoft.com/User_registration/");
//
//   final response=await http.post(apiUrl,body:{
//     "diocese":diocese,
//     "parish":parish,
//     "ward": ward,
//     "family":family,
//      "religion":religion,
//     "preferred_language":language,
//     "gender":gender,
//     "name": name,
//     "phone_number":phoneNumber,
//    "username":userName,
//     "password":password,
//     "email_id":emailId,
//     "house_name":houseName,
//     "address":address,
//      "is_active":"true"
//
//   });
//
//   if(response.statusCode == 200){
//     final String responseString = response.body;
//
//     return regResponseFromJson(responseString);
//   }else{
//     print(response.statusCode);
//   }
// }

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
  // List<String> _familylist = [];
  // List<int> _family_id = [];
  // String ? get_family_value;
  // List<Family> family_user=[];
  // Future<List<Family>> fetchdata()async{
  //   // print('the'+Utility.static_diocese_id);
  //   final client=await FamilyApiClient(Dio(BaseOptions(contentType: "application/json")));
  //   var data=await client.getfamily(int.parse(Utility.static_ward_id));
  //   if(data.isNotEmpty)
  //   {
  //     setState(() {
  //       for(var obj in data)
  //       {
  //         _familylist.add(obj.familyName);
  //         _family_id.add(obj.id);
  //
  //       }
  //     });
  //   }
  //
  //   return family_user;

  }
  @override
  void initState() {
  //  setState(() {

  //  });
    //fetchdiocese();
   // fetchdata();
    // fetchward();
  //  super.initState();
  }


 // RegResponse ?_user;

  final GlobalKey<FormState> _formKey=GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController housenameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  bool isPasswordVisible=true;
  bool isParishVisible=true;
 bool isdropdown1=false;
 // bool isdropdown2=false;
  bool isdropdown3=false;
  bool isdropdown4=false;

  // @override
  // void initState() {
  //   super.initState();
  //
  //   if(Utility.static_d_id==0){
  //     isParishVisible=false;
  //   }
  //   else{
  //     isParishVisible=true;
  //   }
  // }



  Widget _buildName(){
    return TextFormField(
      controller: nameController,
      decoration: InputDecoration(labelText: 'Name',
      ),
      validator: (value){
        if(value!.trim().isEmpty)
        {
          return 'Please enter your name';
        }
      },
    );
  }
  Widget _buildPhone(){
    return TextFormField(
      keyboardType: TextInputType.number,
      controller: phoneController,
      decoration: InputDecoration(labelText: 'Phonenumber',
      ),
      validator: (value){
        if(value!.trim().isEmpty)
        {
          return 'Please enter your phone number';
        }
      },
    );
  }
  Widget _buildUsername(){
    return TextFormField(
      controller: usernameController,
      decoration: InputDecoration(labelText: 'Username',
      ),
      validator: (value){
        if(value!.trim().isEmpty)
        {
          return 'Please enter your Username';
        }
      },
    );
  }
  Widget _buildPassword(){
    return TextFormField(
      obscureText: isPasswordVisible,
      controller: passwordController,
      decoration: InputDecoration(labelText: 'Password',
          suffixIcon: IconButton(icon: isPasswordVisible
              ? Icon(Icons.visibility_off)
              :Icon(Icons.visibility),
            onPressed: () {}//=>setState(()=>isPasswordVisible=!isPasswordVisible,),
          )
      ),
      validator: (value){
        if(value!.trim().isEmpty)
        {
          return 'Please enter your Password';
        }
        if(value.length < 8)
        {
          return "Password needs atleast 8 characters";
        }
      },
    );
  }
  Widget _buildEmail(){
    return TextFormField(
      controller: emailController,
      decoration: InputDecoration(labelText: 'Email id',
      ),
      validator: (value){
        if(value!.trim().isEmpty)
        {
          return 'Emailid required';
        }
        if (!RegExp(
            r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
            .hasMatch(value)) {
          return 'Please enter a valid email Address';
        }
      },
    );
  }
  // Widget _buildHousename(){
  //   return TextFormField(
  //     controller:housenameController,
  //     decoration: InputDecoration(labelText: 'Housename',
  //     ),
  //     validator: (value){
  //       if(value!.trim().isEmpty)
  //       {
  //         return 'Please enter a housename';
  //       }
  //     },
  //   );
  // }
  Widget _buildAddress(){
    return TextFormField(
      keyboardType: TextInputType.multiline,
      maxLines: null,
      controller:addressController,
      decoration: InputDecoration(labelText: 'Address',
      ),
      validator: (value){
        if(value!.trim().isEmpty)
        {
          return 'Please enter your address';
        }
      },
    );
  }


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xA6003477),
        // backgroundColor:Color(0xA6003477),        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Member Registration' ,
            style: GoogleFonts.hindVadodara(
            textStyle: TextStyle(fontSize: 27, color: Colors.white,fontWeight: FontWeight.w500)),),
      ),
      body:SingleChildScrollView(
        padding: EdgeInsets.all(10),

        // child: Form(
        //   key: _formKey,
           child: Column(),
      ), );}
        //     // children: <Widget>[
        //     //   SizedBox(height:40,),
            //   // SizedBox(
              //   width: 300,),
              // //  child: customSearchableDropdownfamily(
                  // ignore: deprecated_member_use_from_same_package
                  //searchHint:"Select your Diocese" ,
                  //showClearButton: true,
                //  backgroundColor:Colors.white,
                //  searchBoxDecoration: InputDecoration(
                 //   //fillColor: Colors.greenAccent,
                   // border:OutlineInputBorder(borderRadius:BorderRadius.circular(10),),
                  //  suffixIcon: Icon(Icons.search_rounded),
                    //  fillColor: Colors.red,
                  //  hintStyle: TextStyle(fontWeight: FontWeight.bold),
                //  ),
//searchBoxDecoration:InputDecoration(fillColor: Colors.pinkAccent),
//                   items: _familylist,
//                   onChanged: (item) {
//                     // value=item.toString();
//
//                     setState(() {
//                       Utility.static_family_id=_family_id[_familylist.indexOf(item.toString())].toString();
//                       Utility.member_familyname=_familylist[_familylist.indexOf(item.toString())].toString();
//                       if(item.toString().isNotEmpty){
//                         setState(() {
//                           isdropdown1=true;
                       // });
             //          }
             //          //fetchparish();
             //        });
             //        // print('value'+value.toString());
             //        // print('value1'+item.toString());
             //
             //
             //
             //      },
             //
             //
             //      // selectedItem: "Search",
             //    ),
             //  ),
             // // SizedBox(height:30,),
//               SizedBox(
//                 width: 300,
//                 child: customSearchableDropdownReligion(
//                   // ignore: deprecated_member_use_from_same_package
//                   //searchHint:"Select your Diocese" ,
//                   showClearButton: true,
//                   backgroundColor:Colors.white,
//                   searchBoxDecoration: InputDecoration(
//                     //fillColor: Colors.greenAccent,
//                     border:OutlineInputBorder(borderRadius:BorderRadius.circular(10),),
//                     suffixIcon: Icon(Icons.search_rounded),
//                     //  fillColor: Colors.red,
//                     hintStyle: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   items: [
//                     "Christian",
//                     "Muslims",
//                     "Hindu"
//                   ], onChanged: (String? selectedItem) {
//                   setState(() {
//
//
//                     Utility.religion=selectedItem!;
//                     print(Utility.religion);
//                     // print('Selected language'  +radioButtonItem);
//                     // id = 1;
//                     if(selectedItem.toString().isNotEmpty){
//                       setState(() {
//                         isdropdown2=true;
//                       });
//                     }
//                   });
//                    // print(selectedItem);
//
//                 },
//
// //                   items: _familylist,
// //                   onChanged: (item) {
// //                     setState(() {
// //                       Utility.static_family_id=_family_id[_familylist.indexOf(item.toString())].toString();
// //                       print(Utility.static_diocese_id);
// //                     });
// //                     },
//                 ),
            //  ),
//               SizedBox(height:30,),
//               SizedBox(
//                 width: 300,
//                 child: customSearchableDropdownLanguage(
//                   // ignore: deprecated_member_use_from_same_package
//                   //searchHint:"Select your Diocese" ,
//                   //showClearButton: true,
//                   backgroundColor:Colors.white,
//                   searchBoxDecoration: InputDecoration(
//                     //fillColor: Colors.greenAccent,
//                     border:OutlineInputBorder(borderRadius:BorderRadius.circular(10),),
//                     suffixIcon: Icon(Icons.search_rounded),
//                     //  fillColor: Colors.red,
//                     hintStyle: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   items: [
//                     "English",
//                     "Malayalam",
//                     "Hindi",
//                     "Tamil",
//                     "Kannada"
//                   ], onChanged: (String? selectedItem) {
//                   setState(() {
//
//
//                     Utility.language=selectedItem!;
//                     print(Utility.language);
//                     if(selectedItem.toString().isNotEmpty){
//                       setState(() {
//                         isdropdown3=true;
//                       });
//                     }
//                     // print('Selected language'  +radioButtonItem);
//                     // id = 1;
//                   });
//                 //  print(selectedItem);
//
//                 },
//                   //items: _familylist,
//                   // onChanged: (item) {
//                   //
//                   //   setState(() {
//                   //     Utility.static_family_id=_family_id[_familylist.indexOf(item.toString())].toString();
//                   //     print(Utility.static_diocese_id);
//                   //     //fetchparish();
//                   //   });
//                   //   },
//                 ),
//               ),
//               SizedBox(height:30,),
//               SizedBox(
//                 width: 300,
//                 child: customSearchableDropdownGender(
//                   // ignore: deprecated_member_use_from_same_package
//                   //searchHint:"Select your Diocese" ,
//                  // showClearButton: true,
//                   backgroundColor:Colors.white,
//                   searchBoxDecoration: InputDecoration(
//                     //fillColor: Colors.greenAccent,
//                     border:OutlineInputBorder(borderRadius:BorderRadius.circular(10),),
//                     suffixIcon: Icon(Icons.search_rounded),
//                     //  fillColor: Colors.red,
//                     hintStyle: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   items: [
//                     "Male",
//                     "Female",
//                     "Transgender"
//                   ], onChanged: (String? selectedItem) {
//                   setState(() {
//                     Utility.gender=selectedItem!;
//                    print(Utility.gender);
//                     if(selectedItem.toString().isNotEmpty){
//                       setState(() {
//                         isdropdown4=true;
//                       });
//                     }
//                     // print('Selected language'  +radioButtonItem);
//                    // id = 1;
//                   });
//                 //  print(selectedItem);
//
//                 },
//                   // validate: (String? item) {
//                   //   if (item == null)
//                   //     return "Required field";
//                   //   // else
//                   //   //return null;
//                   // },
//                   // items: _familylist,
//                   // onChanged: (item) {
//                   //   // value=item.toString();
//                   //
//                   //   setState(() {
//                   //     Utility.static_family_id=_family_id[_familylist.indexOf(item.toString())].toString();
//                   //     print(Utility.static_diocese_id);
//                   //     //fetchparish();
//                   //   });
//                   //   },
//                 ),
//               ),
//               SizedBox(height: 10,),
//        //        FindDropdown<String>(
//        //
//        //         // key: countriesKey,
//        //          items: ["Brasil", "Itália", "Estados Unidos", "Canadá"],
//        //         // label: "País",
//        //          selectedItem: "Brasil",
//        //          showSearchBox: true,
//        //        //  border:OutlineInputBorder(borderRadius:BorderRadius.circular(10),),
//        //
//        //          onChanged: (selectedItem) => print("country: $selectedItem"),
//        //            validate: (String? item) {
//        //  if (item == null)
//        //  return "Required field";
//        //  else if (item == "Brasil")
//        //  return "Invalid item";
//        // // else
//        //  //return null;
//        //  },
//        //        ),
//               // Container(
//               //   width:MediaQuery.of(context).size.width,
//               //   padding:  EdgeInsets.all(16.0),
//               //   color: Colors.white,
//               //   child: Row(
//               //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               //     children: <Widget>[
//               //       Expanded(
//               //         child:DropDownField(
//               //           onValueChanged: (value) {
//               //
//               //             setState(() {
//               //               get_family_value = value;
//               //               print('selected parish id'+_family_id[_familylist.indexOf(value)].toString());
//               //               Utility.static_family_id=_family_id[_familylist.indexOf(value)].toString();
//               //               // fetchward();
//               //
//               //
//               //             });
//               //           },
//               //           value: get_family_value,
//               //           required: false,
//               //           hintText: 'Select കുടുംബം',
//               //           items: _familylist,
//               //         ),
//               //       ),
//               //     ],
//               //   ),
//               // ),
//               SizedBox(height:20,),
//
//               //religion(),
//              // divinedropdown2(),
//              // SizedBox(height:20,),
//
//               //RadioGroup(),
//               //SizedBox(height:20,),
//
//               //Gender(),
//              // SizedBox(height:20,),
//
//               _buildName(),
//               SizedBox(height: 20,),
//
//               _buildPhone(),
//               SizedBox(height: 20,),
//               _buildUsername(),
//               SizedBox(height: 20,),
//
//               _buildPassword(),
//               SizedBox(height: 20,),
//               _buildEmail(),
//
//
//               SizedBox(height: 20,),
//
//              // _buildHousename(),
//              // SizedBox(height: 20,),
//
//               _buildAddress(),
//
//
//               SizedBox(height: 35,),
//
//               // _user == null ? Container() :
//               // Text("The user is created successfully."),
//
//               // ignore: deprecated_member_use
//               RaisedButton(
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(17)),
//                 padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
//
//                 color: Color(0xBF003477),
//                 //color: Colors.blueAccent,
//                 onPressed: () async{
//                   if(isdropdown1==true&&isdropdown4==true&&isdropdown3==true&&_formKey.currentState!.validate()){
//                     final String diocese = Utility.static_diocese_id;
//                     print('diocese'+diocese);
//                     final String parish = Utility.static_parish_id;
//                     print('parish'+parish);
//                     final String ward = Utility.static_ward_id;
//                     print('ward'+ward);
//                     final String family = Utility.static_family_id;
//                     print('family'+family);
//                     final String religion = 'Christian';
//                     print(religion);
//                     final String language = Utility.language;
//                     print('language'+language);
//                     final String gender=Utility.gender;
//                     print('gender'+gender);
//                     final String name = nameController.text;
//                     print(name);
//                     final String phoneNumber = phoneController.text;
//                     print(phoneNumber);
//                     final String userName = usernameController.text;
//                     print(userName);
//                     final String password = passwordController.text;
//                     print(password);
//                     final String emailId = emailController.text;
//                     print(emailId);
//                     final String houseName = Utility.member_familyname;
//                     print(houseName);
//                     final String address = addressController.text;
//                     print(address);
//
//                     final RegResponse?  userResponse= await createUser(diocese,parish,ward, family,religion,gender,language,name, phoneNumber,userName, password, emailId, houseName, address);
//                     if(userResponse!.status=='success'){
//                       showDialog<String>(
//                         barrierDismissible: false,
//                         context: context,
//                         builder: (BuildContext context) => AlertDialog(
//                           //title: const Text('AlertDialog Title'),
//                           content: const Text('The member registration is created successfully,\n'
//                               'Do you want to  upload image'),
//                           actions: <Widget>[
//                             TextButton(
//                               onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage())),
//                               child:const Text('NO'),
//
//                             ),
//                             TextButton(
//                               onPressed: () {
//                                 if (userResponse.status=='success') {
//                                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => ImageUploading(id: userResponse.id, type: userResponse.type, imageindex: userResponse.imageIndex)));
//
//                                 }
//                                 else{
//                                   print(userResponse.status);
//                                 }
//                               },
//
//                               //Navigator.push(context, MaterialPageRoute(builder: (context) =>  ImageUploading()),);},
//                               child:  Text('YES'),
//                             ),
//                           ],
//                         ),
//                       );
//                     }
//                     else{
//                       showDialog<String>(
//                         barrierDismissible: false,
//                         context: context,
//                         builder: (BuildContext context) => AlertDialog(
//                           //title: const Text('AlertDialog Title'),
//                           content: const Text('The member registration is failed'),
//                           actions: <Widget>[
//                             TextButton(
//                               onPressed: () => Navigator.of(context).pop(),
//                               child:const Text('OK'),
//
//                             ),
//
//                           ],
//                         ),
//                       );
//                     }
//
//                     setState(() {
//                       _user =  userResponse;
//
//                     });
//                   }
//                   else{
//                     showDialog<String>(
//                       barrierDismissible: false,
//                       context: context,
//                       builder: (BuildContext context) => AlertDialog(
//                         //title: const Text('AlertDialog Title'),
//                         content: const Text('Please Select above details \ncorrectly'),
//                         actions: <Widget>[
//                           TextButton(
//                             onPressed: () => Navigator.of(context).pop(),
//                             child:const Text('OK'),
//
//                           ),
//
//                         ],
//                       ),
//                     );
//                   }
//
//
//
//                 },
//                 child:Container(
//                   padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
//                   decoration: BoxDecoration(
//                       color: Color(0xBF003477),
//                       borderRadius: BorderRadius.circular(40)),
//
//                   child:Text(
//                     'REGISTER',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
//                       color:  Colors.white,
//                     ),
//                   ),
//
//                 ),
//
//               ),
//
//             ],
//           ),
//         ),
//
//       ),
//
//     );
//
//   }
//
// }
//
// // //import 'package:divine_app/api_response_model.dart';
// // import 'package:divine_app/radiogroup.dart';
// // import 'package:divine_app/response_model/registration_response_model.dart';
// // import 'package:divine_app/utility.dart';
// // import 'package:flutter/material.dart';
// // import 'package:http/http.dart' as http;
// // import 'dropdown/divine_dropdown.dart';
// // import 'homepage.dart';
// // import 'image_uploading.dart';
// //
// //
// //
// // // ignore: must_be_immutable
// // class Registration extends StatefulWidget {
// //
// //
// //
// //   @override
// //   _RegistrationState createState() => _RegistrationState();
// // }
// //
// // Future<RegResponse?>createUser(
// //     String diocese,
// //     String parish,
// //     String ward,
// //     String name,
// //     String phoneNumber,
// //     String userName,
// //     String password,
// //     String emailId,
// //     String houseName,
// //     String address,
// //     String language) async{
// //   final Uri apiUrl =Uri.parse("http://appesoft.com/User_registration/");
// //
// //   final response=await http.post(apiUrl,body:{
// //     "diocese":diocese,
// //     "parish":parish,
// //     "ward": ward,
// //     "name": name,
// //     "phone_number":phoneNumber,
// //     "username":userName,
// //     "password":password,
// //     "email_id":emailId,
// //     "house_name":houseName,
// //     "address":address,
// //     "preferred_language":language
// //   });
// //
// //   if(response.statusCode == 200){
// //     final String responseString = response.body;
// //
// //     return regResponseFromJson(responseString);
// //   }else{
// //     print(response.statusCode);
// //   }
// // }
// //
// // class _RegistrationState extends State<Registration> {
// //
// //   RegResponse ?_user;
// //
// //   final GlobalKey<FormState> _formKey=GlobalKey<FormState>();
// //   final TextEditingController nameController = TextEditingController();
// //   final TextEditingController phoneController = TextEditingController();
// //   final TextEditingController usernameController = TextEditingController();
// //   final TextEditingController passwordController = TextEditingController();
// //   final TextEditingController emailController = TextEditingController();
// //   final TextEditingController housenameController = TextEditingController();
// //   final TextEditingController addressController = TextEditingController();
// //   bool isPasswordVisible=true;
// //   bool isParishVisible=true;
// //
// //   // @override
// //   // void initState() {
// //   //   super.initState();
// //   //
// //   //   if(Utility.static_d_id==0){
// //   //     isParishVisible=false;
// //   //   }
// //   //   else{
// //   //     isParishVisible=true;
// //   //   }
// //   // }
// //
// //
// //
// //   Widget _buildName(){
// //     return TextFormField(
// //       controller: nameController,
// //       decoration: InputDecoration(labelText: 'Name',
// //       ),
// //       validator: (value){
// //         if(value!.trim().isEmpty)
// //         {
// //           return 'Please enter your name';
// //         }
// //       },
// //     );
// //   }
// //   Widget _buildPhone(){
// //     return TextFormField(
// //       keyboardType: TextInputType.number,
// //       controller: phoneController,
// //       decoration: InputDecoration(labelText: 'Phonenumber',
// //       ),
// //       validator: (value){
// //         if(value!.trim().isEmpty)
// //         {
// //           return 'Please enter your phone number';
// //         }
// //       },
// //     );
// //   }
// //   Widget _buildUsername(){
// //     return TextFormField(
// //       controller: usernameController,
// //       decoration: InputDecoration(labelText: 'Username',
// //       ),
// //       validator: (value){
// //         if(value!.trim().isEmpty)
// //         {
// //           return 'Please enter your Username';
// //         }
// //       },
// //     );
// //   }
// //   Widget _buildPassword(){
// //     return TextFormField(
// //       obscureText: isPasswordVisible,
// //       controller: passwordController,
// //       decoration: InputDecoration(labelText: 'Password',
// //         suffixIcon: IconButton(icon: isPasswordVisible
// //             ? Icon(Icons.visibility_off)
// //             :Icon(Icons.visibility),
// //           onPressed: () =>setState(()=>isPasswordVisible=!isPasswordVisible,),
// //         )
// //       ),
// //       validator: (value){
// //         if(value!.trim().isEmpty)
// //         {
// //           return 'Please enter your Password';
// //         }
// //         if(value.length < 8)
// //           {
// //             return "Password needs atleast 8 characters";
// //           }
// //       },
// //     );
// //   }
// //   Widget _buildEmail(){
// //     return TextFormField(
// //       controller: emailController,
// //       decoration: InputDecoration(labelText: 'Email id',
// //       ),
// //       validator: (value){
// //         if(value!.trim().isEmpty)
// //         {
// //           return 'Emailid required';
// //         }
// //         if (!RegExp(
// //             r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
// //             .hasMatch(value)) {
// //           return 'Please enter a valid email Address';
// //         }
// //       },
// //     );
// //   }
// //   Widget _buildHousename(){
// //     return TextFormField(
// //       controller:housenameController,
// //       decoration: InputDecoration(labelText: 'Housename',
// //       ),
// //       validator: (value){
// //         if(value!.trim().isEmpty)
// //         {
// //           return 'Please enter a housename';
// //         }
// //       },
// //     );
// //   }
// //   Widget _buildAddress(){
// //     return TextFormField(
// //       keyboardType: TextInputType.multiline,
// //       maxLines: null,
// //       controller:addressController,
// //       decoration: InputDecoration(labelText: 'Address',
// //       ),
// //       validator: (value){
// //         if(value!.trim().isEmpty)
// //         {
// //           return 'Please enter your addresss';
// //         }
// //       },
// //     );
// //   }
// //   // Widget _buiildlanguageDropdown(){
// //   //   return DropDownField(
// //   //     hintText: 'choose your language',
// //   //
// //   //   );
// //   //
// //   // }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //
// //     return Scaffold(
// //       appBar: AppBar(
// //         backgroundColor:Color(0xA6003477),
// //        // backgroundColor:Color(0xA6003477),        // Here we take the value from the MyHomePage object that was created by
// //         // the App.build method, and use it to set our appbar title.
// //         title: Text('Member Registration'),
// //       ),
// //       body:SingleChildScrollView(
// //         padding: EdgeInsets.all(10),
// //
// //         child: Form(
// //           key: _formKey,
// //           child: Column(
// //             children: <Widget>[
// //
// //               divinedropdown(),
// //               SizedBox(height: 5,),
// //
// //               RadioGroup(),
// //               SizedBox(height:20,),
// //
// //               _buildName(),
// //               SizedBox(height: 20,),
// //
// //               _buildPhone(),
// //               SizedBox(height: 20,),
// //               _buildUsername(),
// //               SizedBox(height: 20,),
// //
// //              _buildPassword(),
// //               SizedBox(height: 20,),
// //               _buildEmail(),
// //
// //
// //               SizedBox(height: 20,),
// //
// //               _buildHousename(),
// //               SizedBox(height: 20,),
// //
// //               _buildAddress(),
// //
// //
// //               SizedBox(height: 35,),
// //
// //              // _user == null ? Container() :
// //              // Text("The user is created successfully."),
// //
// //               // ignore: deprecated_member_use
// //               RaisedButton(
// //                 shape: RoundedRectangleBorder(
// //                     borderRadius: BorderRadius.circular(50)),
// //                 padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
// //
// //                 color: Color(0xBF003477),
// //                 //color: Colors.blueAccent,
// //                 onPressed: () async{
// //                   print(Utility.language);
// //
// //                   if(_formKey.currentState!.validate()){
// //                     final String diocese = Utility.static_diocese_id;
// //                     print('diocese'+diocese);
// //                     final String parish = Utility.static_parish_id;
// //                     print('parish'+parish);
// //                     final String ward = Utility.static_ward_id;
// //                     print('ward'+ward);
// //                     final String name = nameController.text;
// //                     print(name);
// //                     final String phoneNumber = phoneController.text;
// //                     print(phoneNumber);
// //                     final String userName = usernameController.text;
// //                     print(userName);
// //                     final String password = passwordController.text;
// //                     print(password);
// //                     final String emailId = emailController.text;
// //                     print(emailId);
// //                     final String houseName = housenameController.text;
// //                     print(houseName);
// //                     final String address = addressController.text;
// //                     print(address);
// //                     final String language='English';
// //
// //
// //
// //                     final RegResponse?  userResponse= await createUser(diocese,parish,ward, name, phoneNumber, userName, password, emailId, houseName, address,language);
// //                     showDialog<String>(
// //                       context: context,
// //                       builder: (BuildContext context) => AlertDialog(
// //                         //title: const Text('AlertDialog Title'),
// //                         content: const Text('The member registration is created successfully,\n'
// //                             'Do you want to  upload image'),
// //                         actions: <Widget>[
// //                           TextButton(
// //                             onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage())),
// //                             child:const Text('NO'),
// //
// //                           ),
// //                           TextButton(
// //                             onPressed: () {
// //                               if (userResponse!.status=='success') {
// //                                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => ImageUploading(id: userResponse.id, type: userResponse.type, imageindex: userResponse.imageIndex)));
// //
// //                               }
// //                               else{
// //                                 print(userResponse.status);
// //                               }
// //                             },
// //
// //                             //Navigator.push(context, MaterialPageRoute(builder: (context) =>  ImageUploading()),);},
// //                             child:  Text('YES'),
// //                           ),
// //                         ],
// //                       ),
// //                     );
// //                     setState(() {
// //                       _user =  userResponse;
// //
// //                     });
// //                   }
// //
// //
// //
// //                 },
// //                 child:Container(
// //                   padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
// //                   decoration: BoxDecoration(
// //                       color: Color(0xBF003477),
// //                       borderRadius: BorderRadius.circular(40)),
// //
// //                   child:Text(
// //                     'REGISTER',
// //                     textAlign: TextAlign.center,
// //                     style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
// //                       color:  Colors.white,
// //                     ),
// //                   ),
// //
// //                 ),
// //
// //               ),
// //
// //             ],
// //           ),
// //         ),
// //
// //       ),
// //
// //     );
// //   }
// // }
