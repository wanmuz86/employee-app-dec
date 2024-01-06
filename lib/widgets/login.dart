import 'package:flutter/material.dart';

import 'home.dart';
import 'register.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(hintText: "Enter your email"),
          ),
          TextField(
            decoration: InputDecoration(hintText: "Enter your password"),
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
          }, child: Text("Log in")),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterPage()));
          }, child: Text("No Account? Register now!"))
        ],
      ),
    );
  }
}
