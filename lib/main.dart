import 'package:flutter/material.dart';
import 'package:trustify/screen/home/home.dart';
// import 'login_page.dart';
// import 'package:firebase_core/firebase_core.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(Object context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            //  backgroundColor: Colors.white60,
            primaryColor: Color(0xFF811883),
            colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.blue,
              accentColor: Color(0xFFFA5019),
              backgroundColor: Color(0xFFF5F6F6),
            ),
            textTheme: TextTheme(
              displayLarge: TextStyle(
                color: Color(0xFF100E34),
              ),
              bodyLarge: TextStyle(color: Color(0xFF10034).withOpacity(0.5)),
            )),
        home: Homepage());
        // home: LoginPage());
  }
}
