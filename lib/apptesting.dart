import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:animated_text_kit/animated_text_kit.dart';

class AppTest extends StatelessWidget {
  const AppTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          elevation: 0,
        ),
        backgroundColor: Colors.blueGrey,
        body: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Text(
                    "  ഞങ്ങോ  ആപ്പിനെപ്പറ്റി  \n കൂടുതൽ "
                    " അറിയാനും ആപ്പിന്റെ ഉപയോഗക്രമം \n മനസിലാക്കുന്നതിനുമായി  താഴെ കാണുന്ന വ്യാജ "
                    "username  ഉം  Password  ഉം  ഉപയോഗിക്കാവുന്നതാണ്",
                    style: TextStyle(fontSize: 29,color: Colors.white),
                    textAlign: TextAlign.center),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              height: 92,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)),


              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ("Username:Testname"),
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Password:TestPass",
                    style: TextStyle(fontSize: 25),
                  ),
                 // _colorize(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// Widget _colorize(){
//   return SizedBox(
//     child: Center(
//       child: AnimatedTextKit(
//         animatedTexts: [
//           ColorizeAnimatedText(
//             'Mobile Developer',
//             textStyle: colorizeTextStyle,
//             colors: colorizeColors,
//           ),
//           ColorizeAnimatedText(
//             'Software Testing',
//             textStyle: colorizeTextStyle,
//             colors: colorizeColors,
//           ),
//           ColorizeAnimatedText(
//             'Software Engineer',
//             textStyle: colorizeTextStyle,
//             colors: colorizeColors,
//           ),
//         ],
//         isRepeatingAnimation: true,
//         repeatForever: true,
//       ),
//     ),
//   );
//
//
// }
// List<MaterialColor> colorizeColors = [
//   Colors.red,
//   Colors.yellow,
//   Colors.purple,
//   Colors.blue,
// ];
//
//  const colorizeTextStyle = TextStyle(
//   fontSize: 40.0,
//   fontFamily: 'SF',
// );
