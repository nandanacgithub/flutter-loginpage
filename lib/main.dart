// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("LOGIN")),
          backgroundColor: Colors.teal,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ignore: sort_child_properties_last
              Center(child: Text("SIGN IN",style: TextStyle(color: Colors.teal.shade900,fontWeight: FontWeight.w500,
                      fontSize: 35),), 
                      ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "password",
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye)
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: () {}, child: Text("Forgot Password?")),
                ],
              ),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(colors: [
                    Colors.teal.shade100,
                    Colors.teal.shade900,
                    Colors.tealAccent
                  ])),
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 25,letterSpacing: 3, color: Colors.black),
                  ),
                ),
              ),
              
              SizedBox(
                height: 40,
                
                child: Divider(
                  height: 8,
                ),
              ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account ? "),
                TextButton(
                  onPressed: () {
                    // ignore: avoid_print
                    print("tapped register");
                  },
                  child: Text(
                    "Register Account",
                    style: TextStyle(color: Colors.teal.shade900),
                  ),
                ),
              ],
             ) 
            ],
        ),
      ),
    ),);
  }
}