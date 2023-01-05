import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart';
import 'package:restapi/view/post_api/home.dart';

class SigninApi extends StatefulWidget {
  const SigninApi({Key? key}) : super(key: key);

  @override
  State<SigninApi> createState() => _SigninApiState();
}

class _SigninApiState extends State<SigninApi> {
  Future<void> login(String email, String password) async {
    try {
      Response response = await post(
          Uri.parse('https://reqres.in/api/register'),
          body: {'email': email, 'password': password});

      if (response.statusCode == 200) {
        var data =jsonDecode(response.body.toString());
        print('Login successfully');
        print(data.toString());
        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
      } else {
        print('failed');
      }
    } catch (e) {
      print(e.toString());
    }
  }
  Future<void> SignUp(String email, String password) async {
    try {
      Response response = await post(
          Uri.parse('https://reqres.in/api/login'),
          body: {'email': email, 'password': password});

      if (response.statusCode == 200) {
        var data =jsonDecode(response.body.toString());
        print('Login successfully');
        print(data.toString());
        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
      } else {
        print('failed');
      }
    } catch (e) {
      print(e.toString());
    }
  }
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Signin Api"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            TextFormField(
              controller: emailController,
            ),
            TextFormField(
              controller: passwordController,
            ),
            ElevatedButton(
                onPressed: () {
                  login(
                    emailController.text.toString(),
                    passwordController.text.toString(),
                  );
                },
                child: Text("login")),
            ElevatedButton(
                onPressed: () {
                  SignUp(
                    emailController.text.toString(),
                    passwordController.text.toString(),
                  );
                },
                child: Text("SignUp"))
          ],
        ),
      ),
    );
  }
}
