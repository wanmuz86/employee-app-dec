import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
            Navigator.pop(context);
          }, child: Text("Register")),

        ],
      ),
    );
  }
}
