// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:mydog/controler/validar_email.dart';
import 'package:mydog/routes/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _logoAnimation;
  late Animation<double> _textAnimation;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _logoAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve:  const Interval(0.0, 0.5, curve: Curves.easeInOut),
    ));
    _textAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: const  Interval(0.5, 1.0, curve: Curves.easeInOut),
    ));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool _showLoginForm = false;

  @override
  Widget build(BuildContext context) {
     double fontSizeall = MediaQuery.of(context).size.width * 0.045;
    return Scaffold(
      body: Container(
        decoration:  const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
               Color.fromARGB(255, 255, 255, 255),
               Color.fromARGB(230, 245, 245, 245),
            ],
          ), // Cores do degradê
        ),
        child: ListView(
         
          children: [
            Column(
              children: [
                if (MediaQuery.of(context).orientation != Orientation.landscape)
                  SizedBox(height: (MediaQuery.of(context).size.height * 0.23)),
                Container(alignment: Alignment.bottomCenter,
                  child: Center(
                    child: Container(
                      padding:  const EdgeInsets.all(1.0),
                      width: 300.0,
                      child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (_showLoginForm)
                              FadeTransition(
                                opacity: _textAnimation,
                                child:   Text(
                                  'MyPet',
                                  style: TextStyle(
                                    fontSize: 40,
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ).animate().moveY(
                                    begin: -25,
                                    end: 15,
                                    curve: Curves.easeInOut,
                                    duration: 1000.ms),
                              ),
                            if (!_showLoginForm)
                              FadeTransition(
                                opacity: _textAnimation,
                                child:   Text(
                                  'MyPet',
                                  style: TextStyle(
                                    fontSize: 40,
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ).animate().moveY(
                                    begin: -25,
                                    end: 15,
                                    curve: Curves.easeInOut,
                                    duration: 1000.ms),
                              ),  SizedBox(height: (MediaQuery.of(context).size.height *2)/100),
                           const  SizedBox(height: 0),
                            if (!_showLoginForm)
                              FadeTransition(
                                opacity: _logoAnimation,
                                child: Animate(
                                  child: Image.asset(
                                    'lib/files/mydoglogo.png',
                                    width: 150,
                                    height: 150,
                                  ).animate().moveY(
                                      begin: -25,
                                      end: 15,
                                      curve: Curves.easeInOut,
                                      duration: 1000.ms),
                                ),
                              ),
                         const    SizedBox(height: 50),
                            if (_showLoginForm)
                              FadeTransition(
                                opacity: _textAnimation,
                                child: TextFormField(
                                  controller: _emailController,
                                  decoration: InputDecoration(
                                    
                                    hintText: 'Email',
                                    fillColor: Color.fromARGB(255, 255, 255, 255),
                                    border: OutlineInputBorder(
                                      
                                      borderRadius: BorderRadius.all( 
                                        Radius.circular(20),),

                                     
                                      
                                     borderSide: BorderSide(width: 1, color: Colors.black)
                                    ),
                                    errorStyle:   TextStyle(color: const Color.fromARGB(255, 0, 0, 0),fontSize: fontSizeall, ),
                                    filled: true,
                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                  validator: (value) =>
                                      EmailFieldValidator.validate(value!),
                                ),
                              ),
                          const   SizedBox(height: 10),
                            if (_showLoginForm)
                              FadeTransition(
                                opacity: _textAnimation,
                                child: TextFormField(
                                  controller: _passwordController,
                                  decoration: InputDecoration(
                                    hintText: 'Password',
                                    fillColor: Color.fromARGB(255, 255, 255, 255),
                                    filled: true,
                                    errorStyle:   TextStyle(color:const Color.fromARGB(255, 0, 0, 0),fontSize: fontSizeall, ),
                                   border: OutlineInputBorder(
                                      
                                      borderRadius: BorderRadius.all( 
                                        Radius.circular(20),),

                                     
                                      
                                     borderSide: BorderSide(width: 1, color: Colors.black)
                                    ),
                                  ),
                                  obscureText: true,
                                  validator: PasswordFieldValidator.validate,
                                ),
                              ),
                            const SizedBox(height: 10),
                            if (!_showLoginForm)
                              FadeTransition(
                                opacity: _textAnimation,
                                child: Center(
                                  child: Container(
                                    padding:  const EdgeInsets.all(1.0),
                                    width: 300.0,
                                    decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                    ),
                                    child: TextButton(
                                      onPressed: () {
                                        setState(() {
                                          _showLoginForm = true;
                                        });
                                      },
                                      child:   Text('Login',
                                          style: TextStyle(color:Color.fromARGB(255, 255, 255, 255),fontSize: fontSizeall )),
                                    ),
                                  ),
                                ),
                              ),
                            if (_showLoginForm)
                              FadeTransition(
                                opacity: _textAnimation,
                                child: Center(
                                  child: Container(
                                    padding: const EdgeInsets.all(1.0),
                                    width: 300.0,
                                    decoration:   BoxDecoration(
                    shape: BoxShape.rectangle,
                                      border: Border.all(color: Colors.black, width: 1),
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20 ), 
                                        
                                      ),
                                    ),
                                    child: TextButton(
                                      onPressed: () {
                                        if (!_formKey.currentState!.validate()) {
                                         Navigator.of(context)
                                            .pushNamed(AppRoutes.HOME);
                                        }
                                        const  SizedBox(height: 10,);
                                      },
                                      child:   Text('Login',
                                          style: TextStyle(color:Color.fromARGB(255, 255, 255, 255), fontSize: fontSizeall)),
                                    ),
                                  ),
                                ),
                              ),
                            if (_showLoginForm)
                              FadeTransition(
                                opacity: _textAnimation,
                                child: Center(
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pushNamed(AppRoutes.FORGOT);
                                    },
                                   
                                    child:   Text(
                                      'Forgot Password?',
                                      style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0),fontSize: fontSizeall),
                                    ),
                                  ),
                                ),
                              ),
                            if (_showLoginForm)
                              FadeTransition(
                                opacity: _textAnimation,
                                child: Center(
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        _showLoginForm = false;
                                      });
                                    },
                                    child:   Text(
                                      'Back',
                                      style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0) , fontSize: fontSizeall),
                                    ),
                                  ),
                                ),
                              ),
                            if (!_showLoginForm)
                              FadeTransition(
                                opacity: _textAnimation,
                                child: Center(
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pushNamed(AppRoutes.SINGUP);
                                    },
                                    child:  Text(
                                      'Don\'t have an account? Sing UP',
                                      style: TextStyle(color:const Color.fromARGB(255, 0, 0, 0), fontSize: fontSizeall),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ], 
            ),
          ],
        ),
      )
      
    );
  }
}
