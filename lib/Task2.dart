

import 'package:flutter/material.dart';

void main() {
  runApp(Task2());
}

class Task2 extends StatelessWidget {
  const Task2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
              margin: EdgeInsets.all(20),
              child: Column(
                  children: [
                Container(

                  child: Image.asset(
                    "images/login.png",
                    width: 300,
                    height: 300,
                  ),
                  margin: EdgeInsets.only(top: 50),
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo[600]),
                    )),
                Form(child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(width: 2, color: Colors.indigo),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                        ),
                        labelText: "Name Or Email Address",
                        labelStyle: TextStyle(color: Colors.indigo),
                        border: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.indigo, width: 2),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                        ),
                      ),
                      maxLines: 2,
                      cursorColor: Colors.indigo,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(width: 2, color: Colors.indigo),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                        ),
                        labelText: "Enter Password",

                        labelStyle: TextStyle(color: Colors.indigo),
                        border: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.indigo, width: 2),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                        ),
                      ),
                      maxLines: 2,
                      cursorColor: Colors.indigo,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: (){
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(40))),
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      child: Text("Create An Account",style: TextStyle(color: Colors.indigo,fontSize: 20,fontWeight: FontWeight.bold,),),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      child: Text("Reset Password",style: TextStyle(color: Colors.indigo,fontSize: 20,fontWeight: FontWeight.bold,),),
                    )
                  ],
                )),
              ])),
        ],
      ),
    );
  }
}
