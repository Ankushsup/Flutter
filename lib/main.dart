import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_application_1/pages/Home_page.dart';
import 'package:flutter_application_1/pages/LoginPage.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,    
        fontFamily: GoogleFonts.lato().fontFamily,
        ),

      darkTheme: ThemeData(
        brightness: Brightness.light,
      ),
      // initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        "/home" :(context) =>HomePage(),
        "/login":(context) => LoginPage(),
      },
    );
  }
}