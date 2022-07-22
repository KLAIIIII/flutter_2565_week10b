
import 'package:flutter/material.dart';

class StateFulPage extends StatefulWidget{
  const StateFulPage({Key? key}):super(key: key); //1.constuctor

  @override
  State<StateFulPage> createState()=> _StateFulPageState(); //2.Create state
}

class _StateFulPageState extends State<StateFulPage>{
  String name = "Mark Zackerbarg";

  @override //3.
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[100],
        title: Text("Flutter Basic"),
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              setState(() {
                name = value;
              });
              print("Setstate is called $name");
            },
          ),
          Text("Hello $name"),
        ],
      ),
    );
  }
}