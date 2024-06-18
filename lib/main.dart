import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:mydog/pages/forgot.dart';
import 'package:mydog/pages/home.dart';
import 'package:mydog/pages/login.dart';
import 'package:mydog/pages/singup.dart';
import 'package:mydog/routes/routes.dart';

void main() {
  runApp(const MyApp());
  Animate.restartOnHotReload = true;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    final double fontSizeAll = orientation == Orientation.portrait
        ? MediaQuery.of(context).size.width * 0.04
        : MediaQuery.of(context).size.width * 0.019;
        

    return MaterialApp(
      title: 'MyPet',
      theme: ThemeData( 
      textTheme: TextTheme(
          bodyText1: TextStyle(fontSize:fontSizeAll ),
          bodyText2: TextStyle(fontSize:fontSizeAll ),
          headline1: TextStyle(fontSize:fontSizeAll ),
          // Add other text styles as needed
        ),
         
        scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255),
        colorScheme: ColorScheme.fromSeed(seedColor:  Color.fromARGB(255, 82, 121, 237)),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: const Color.fromARGB(255, 255, 255, 255), // Cor do texto do botão
            textStyle: TextStyle( fontSize: fontSizeAll),
            side: BorderSide(
              color: Colors.transparent, // Cor da borda
              width: 0, // Largura da borda a
            ),
            backgroundColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          
          ),
        ),
      ),
      home: const LoginPage(),
      routes: {
        AppRoutes.LOGIN: (ctx) => const LoginPage(),
        AppRoutes.HOME: (ctx) => const HomePage(),
        AppRoutes.FORGOT: (ctx) => const ForgotPage(),
        AppRoutes.SIGNUP: (ctx) => const SingUpPage(),
      },
    );
  }
}