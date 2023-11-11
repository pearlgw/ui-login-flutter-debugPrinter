// ignore_for_file: use_key_in_widget_constructors, sort_child_properties_last, deprecated_member_use

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color.fromARGB(255, 1, 75, 136),
            Color.fromARGB(255, 3, 138, 143),
          ]
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: _page(),
      ),
    );
  }

  Widget _page(){
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _icon(),
            const SizedBox(height: 20,),
            _judul(),
            const SizedBox(height: 50,),
            _inputfield("Username", usernameController),
            const SizedBox(height: 20,),
            _inputfield("Password", passwordController, isPassword: true),
            const SizedBox(height: 50,),
            _loginbtn(),
            const SizedBox(height: 20,),
            _extratext(),
          ],
        ),
      ),
    );
  }

  Widget _icon(){
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 2
        ),
        shape: BoxShape.circle
      ),
      child: const Icon(
        Icons.person,
        color: Colors.white,
        size: 120,
        
      ),
    );
  }

  Widget _judul(){
    return const Center(
      child: Text(
        "Welcome Back, Sign in !",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20
        ),
      ),
    );
  }

  Widget _inputfield(String hintText, TextEditingController controller, {isPassword = false}){
    var border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: const BorderSide(color: Colors.white)
    );

    return TextField(
      style: const TextStyle(
        color: Colors.white
      ),
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.white
        ),
        enabledBorder: border,
        focusedBorder: border
      ),
      obscureText: isPassword,
    );
  }

  Widget _loginbtn(){
    return ElevatedButton(
      onPressed: (){
        debugPrint("Username : ${usernameController.text}");
        debugPrint("Password : ${passwordController.text}");
      }, 
      child: const SizedBox(
        width: double.infinity,
        child: Text(
          "Sign in",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20
          ),
        ),
      ),
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        primary: Colors.white,
        onPrimary: Colors.blue,
        padding: const EdgeInsets.symmetric(vertical: 16)
      ),
    );
  }

  Widget _extratext(){
    return const Text(
      "Can't access to your account?",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 16,
        color: Colors.white
      ),
    );
  }
}