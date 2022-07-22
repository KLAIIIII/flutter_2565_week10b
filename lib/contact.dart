import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  List<String> name = [
    "Jackson",
    "Mark",
    "BamBam",
    "Jin-young",
    "Jae B",
    "Young-jae",
    "Yu-gyeom"
  ];
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen[300],
        title: Text("Statafull Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("My Name is ${name[i]}", style: TextStyle(fontSize: 20)),
            ElevatedButton(
                onPressed: () {
                  if(i < name.length -1){
                    setState(() {
                      i++;
                    });
                  }
                },
                child: Text("Next")),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  if(i != 0){
                    setState(() {
                      i--;
                    });
                  }
                },
                child: Text("Go Back"))
          ],
        ),
      ),
    );
  }
}
