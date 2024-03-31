import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trustify/screen/home/home.dart';
import 'package:trustify/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:trustify/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:trustify/src/utilis/theme/theme.dart';
import 'login_page.dart';
// import 'package:firebase_core/firebase_core.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(Object context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //     //  backgroundColor: Colors.white60,
      //     primaryColor: Color(0xFF811883),
      //     colorScheme: ColorScheme.fromSwatch(
      //       primarySwatch: Colors.blue,
      //       accentColor: Color(0xFFFA5019),
      //       backgroundColor: Color(0xFFF5F6F6),
      //     ),
      //     textTheme: TextTheme(
      //       displayLarge: TextStyle(
      //         color: Color(0xFF100E34),
      //       ),
      //       bodyLarge: TextStyle(color: Color(0xFF10034).withOpacity(0.5)),
      //     )),
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      // home: Homepage());
      // home: LoginPage());
      home: SplashScreen(),
      // home: OnBoardingScreen(),
    );
  }
}
