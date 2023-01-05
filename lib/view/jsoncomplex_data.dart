import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JsonComplexData extends StatefulWidget {
  const JsonComplexData({Key? key}) : super(key: key);

  @override
  State<JsonComplexData> createState() => _JsonComplexDataState();
}

class _JsonComplexDataState extends State<JsonComplexData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JSON Data"),
      ),
      body: Column(
        children: [
          Column(
            children: [

            ],
          )
        ],
      ),
    );
  }
}
