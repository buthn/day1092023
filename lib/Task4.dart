import 'package:flutter/material.dart';

void main(){
  runApp(Task4());
}

class Task4 extends StatelessWidget {
  const Task4({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CheckboxExample(),
    );
  }
}

class CheckboxExample extends StatefulWidget {
  const CheckboxExample({super.key});

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        left: true,
        right: true,
        maintainBottomViewPadding: true,
        child: CheckboxListTile(
          title: Text("Frute",style: TextStyle(color: Colors.white),),
          selected: isSelected,
          selectedTileColor: Colors.grey,
          checkColor: Colors.white,
          fillColor: MaterialStatePropertyAll(Colors.red),
          value: isSelected,
          onChanged: (v){
            setState(() {
              isSelected = v ?? false;
            });
          },
        ),
      ),
    );
  }
}
