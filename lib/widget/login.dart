import "package:flutter/material.dart";
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget{
  const LoginPage ({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  //text controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  
  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(), 
      password: _passwordController.text.trim(),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ 

                //icon
                Icon(
                  Icons.android,
                  size: 100,
                ),
                SizedBox(height: 75,),
          
                //Hello Again!
                Text(
                  "Hello Again!",
                  style: TextStyle (
                    fontSize: 20,
                  ),
                  ),
                SizedBox(height: 10),
                Text(
                  "Welcome back, you've been missed!",
                  style: TextStyle (
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 50),
          
                //Email textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:25.0),
                  child: TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide (color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepPurple),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      hintText: "Email",
                      fillColor: Colors.grey[200],
                      filled: true,
                      ),
                     ),
                   ),
                SizedBox(height: 10),
          
                //Password Textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:25.0),
                  child: TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide (color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepPurple),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      hintText: "Password",
                      fillColor: Colors.grey[200],
                      filled: true,
                      ),
                     ),
                   ),
                SizedBox(height: 10),
          
                //Sign in Button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: GestureDetector(
                  onTap: signIn,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(12),
                      ),
                    child: Center(
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                    )),
                  ),
                ),
              ),
              SizedBox(height: 25),
          
          
                //Not a member? Register now!
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Not a member ?",
                      style: TextStyle( 
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    Text(
                      " Register Now",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
            ]),
          ),
        ),
      ),
    );
  }
}