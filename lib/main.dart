import 'package:arbornex_app/Screens/main_screen.dart';
import 'package:flutter/material.dart';

import 'Screens/LogIn Screens/LogIn.dart';
import 'Screens/Signup.dart';
import 'Screens/SplashScreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login':(context) => LoginScreen(),
        '/signup': (context) => SignUpScreen(),
        '/home': (context) => MainScreen(),
        //add this for Home 
      }

    );
  }
}
