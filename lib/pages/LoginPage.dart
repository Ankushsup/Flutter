import 'package:flutter/material.dart';

import '../Utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  @override
    String Ankush="";
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("Assets/Images/login_image.png",
            fit: BoxFit.cover,
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Welcome $Ankush",
              style: TextStyle(
                fontSize: 28,
                fontWeight:FontWeight.bold,
              ),
            ),
      
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(children: [
                TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Username",
                labelText: "Username",
              ),
              onChanged: (value){
                Ankush=value;
                setState(() {});
              },
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter the Password",
                labelText: "Password",
              ),
            ),
            SizedBox(
              height: 30.0,
            ),

            InkWell(

              onTap: () {
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                width: 150,
                height: 40,
                alignment: Alignment.center ,
                child: Text("Login",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                ),
                decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(8),
                ),
            
              ),
            )
            // ElevatedButton(
            //   child: Text("Login"), 
            //   style: TextButton.styleFrom(
            //     minimumSize: Size(30, 40)
            //   ),         
            //   onPressed: () {
                
            //     Navigator.pushNamed(context, MyRoutes.homeRoute);
            //   },
            // ),
            
              ]
              ), 
              )
                        
          ],
        ),
      )
    );  
  }
}
