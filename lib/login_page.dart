// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(237, 231, 225, 300),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.home_rounded,
                size: 150,
              ),
              SizedBox(height: 75),
              // Hello again!
             const Text(
                'Hello again!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 52,
                ),
              ),
              SizedBox(height: 10),
             const Text(
                'Welcome back, you\'ve been missed',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 50),

              // email textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child:const TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                        prefixIcon: Icon(
                          Icons.mail,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),

              // password textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
             const Text(
                "Forgot Password",
                style: TextStyle(color: Colors.blue),
              ),
              SizedBox(height: 18),

              // sign in button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  
                  child: Center(
                    child:  Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),

              // Not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 const Text(
                    'Not a member?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                 const Text(
                    ' Register now',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
