import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:mydog/pages/forgot.dart';
import 'package:mydog/pages/login.dart';
import 'package:mydog/pages/singup.dart';
import 'package:mydog/routes/routes.dart';

void main() {
  runApp(const MyApp());
  Animate.restartOnHotReload =true;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
       
      ), home:  LoginPage(),
        routes: {
          AppRoutes.LOGIN: (ctx) => LoginPage(),
        AppRoutes.FORGOT: (ctx) => ForgotPage(),
        AppRoutes.SINGUP: (ctx) => SingUpPage(),
        },

       );
  }
}
