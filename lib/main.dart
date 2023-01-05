import 'package:flutter/material.dart';
import 'package:restapi/view/ListShow.dart';
import 'package:restapi/view/complex_api_handle.dart';
import 'package:restapi/lib/view/complex_api_handle.dart';
import 'package:restapi/view/jsoncomplex_data.dart';
import 'package:restapi/view/post_api/signin.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
        home: SigninApi(),
    );
  }
}




