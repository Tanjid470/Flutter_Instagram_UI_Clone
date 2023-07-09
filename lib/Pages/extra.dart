import 'package:flutter/material.dart';

class StateTest extends StatefulWidget {
  const StateTest({super.key});

  @override
  State<StateTest> createState() => _StateTestState();
}

class _StateTestState extends State<StateTest> {
  String mytext='I am Tanjid';
  void _changeState() {
    setState(() {
      mytext='Change the text';
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(mytext),
          ElevatedButton(onPressed: (){
            _changeState();
          }, child: const Text('Click'))
        ],
      ),
    );
  }
  
  
  
  
}