import 'package:flutter/material.dart';
import 'package:simple_calculator/Calculator.dart';

void main() => runApp(Name());

class Name extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Nama Anggota'),
        ),
        body: Column(
            children: [
              Padding(padding: EdgeInsets.only(left: 40.0, top: 40),
                child: Text(
                  'Shafa Tiara',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 40.0, top: 10),
                child: Text(
                  'Syafira Widiyanti',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 40.0, top: 10),
                child: Text(
                  'Syafira Widiyanti',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Calculator()));
                  },
                  child: new Text('Calculator')
              ),
            ]
        ),
      ),
    );
  }
}