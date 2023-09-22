import 'package:flutter/material.dart';

void main() {
  runApp(Task1());
}

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TaskScreen(),
    );
  }
}

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  GlobalKey<FormState> _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                Image.asset(
                  "images/sign up.png",
                  width: 300,
                  height: 300,
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "Create An Account",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo[600]),
                    )),
                Form(
                  key: _key,
                    child: Column(
                  children: [
                    TextFormField(
                      validator: (data){
                        if(data!.isEmpty || data == null)
                          {
                            return "The Name Can't Be Empty";
                          }
                      },
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2, color: Colors.indigo),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                        ),
                        labelText: "Name",
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
                        labelText: "Phone",
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
                        labelText: "Email Address",
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
                    TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2, color: Colors.indigo),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                        ),
                        labelText: "Confirm Password",
                        labelStyle: TextStyle(color: Colors.indigo),
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.indigo, width: 2),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                        ),
                      ),
                      cursorColor: Colors.indigo,
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: (){
                        _key.currentState!.validate();
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
                          "Create An Account",
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
                      child: Text("Sign In",style: TextStyle(color: Colors.indigo,fontSize: 20,fontWeight: FontWeight.bold,),),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      child: Text("Reset Password",style: TextStyle(color: Colors.indigo,fontSize: 20,fontWeight: FontWeight.bold,),),
                    )
                  ],
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
