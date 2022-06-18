import 'package:flutter/material.dart';

import '../Utils/routes.dart';

class LoginPage extends StatelessWidget {

  @override
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
              "Welcome",
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
            ElevatedButton(
              child: Text("Login"), 
              style: TextButton.styleFrom(
                minimumSize: Size(30, 40)
              ),         
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
            ),
            
              ]
              ), 
              )
                        
          ],
        ),
      )
    );  
  }
}
