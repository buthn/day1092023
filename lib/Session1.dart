import 'package:flutter/material.dart';

void main(){
  runApp(Session1());
}

class Session1 extends StatelessWidget {
  const Session1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TextFormFieldExample(),
    );
  }
}

class TextFormFieldExample extends StatefulWidget {
  const TextFormFieldExample({super.key});

  @override
  State<TextFormFieldExample> createState() => _TextFormFieldExampleState();
}

class _TextFormFieldExampleState extends State<TextFormFieldExample> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                controller: controller,
                 decoration: InputDecoration(
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(20),
                     borderSide: BorderSide(
                       color: Colors.green.shade300,
                       width: 1,
                     ),
                   ),

                   prefixIcon: Icon(Icons.perm_identity_outlined),
                   labelText: "Enter Your Name",
                 ),
                keyboardType: TextInputType.text,
              ),
              TextButton(onPressed: (){
                print(controller.text);
              }, child: Text("show message"),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.grey),
                  foregroundColor: MaterialStatePropertyAll(Colors.white)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

