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
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  

  bool _showLoginForm = false;

  @override
  Widget build(BuildContext context) {
        final orientation = MediaQuery.of(context).orientation;
    final double containerOrientation = orientation == Orientation.portrait
        ? MediaQuery.of(context).size.width * 0.8
        : MediaQuery.of(context).size.width * 0.4;
   
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        gradient:  LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
           Color.fromARGB(255, 60, 2, 195),
            Color.fromRGBO(121, 76, 226, 1),
          ],
        ),
      ),
      child: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            Column(
              children: [
                Center(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (!_showLoginForm)
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Column(
                                  children: [
                                    const Text(
                                      'MyPet',
                                      style: TextStyle(
                                        fontSize: 40,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ).animate().moveY(
                                        begin: -25,
                                        end: 15,
                                        curve: Curves.easeInOut,
                                        duration: 1000.ms),
                                    Animate(
                                      child: Image.asset(
                                        'lib/assets/mydoglogo.png',
                                        width: 150,
                                        height: 150,
                                      ).animate().moveY(
                                          begin: -25,
                                          end: 15,
                                          curve: Curves.easeInOut,
                                          duration: 1000.ms),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                    height:
                                        (MediaQuery.of(context).size.height *
                                            0.1)),
                                const SizedBox(height: 10),
                                Container(
                                  width:
                                      containerOrientation,
                                  decoration: const BoxDecoration(
                                    color:
                                        Color.fromARGB(255, 74, 6, 235),
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
                                    child: const Text('Login'),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  children: [
                                    Center(
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.of(context)
                                              .pushNamed(AppRoutes.SIGNUP);
                                        },
                                        child: const Text(
                                          'Don\'t have an account? Sign  UP',
                                        
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            if (_showLoginForm)
              Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Column(
                      children: [
                        const Text(
                          'MyPet',
                          style: TextStyle(
                            fontSize: 40,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                          ),
                        ).animate().moveY(
                            begin: -25,
                            end: 15,
                            curve: Curves.easeInOut,
                            duration: 1000.ms),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.1),
                     
                        SizedBox( width: containerOrientation,
                          child: TextFormField(
                            controller: _emailController,
                            decoration: const InputDecoration(
                              hintText: 'Email',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              border:  OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                  borderSide:
                                      BorderSide(width: 1, color: Colors.black)),
                              errorStyle: TextStyle(
                                color:  Color.fromARGB(255, 0, 0, 0),
                              
                              ),
                              filled: true,
                            ),
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) =>
                                EmailFieldValidator.validate(value!),
                          ),
                        ),
                      const  SizedBox(
                          height: 10,
                        ),
                        SizedBox(width: containerOrientation,
                          child: TextFormField(
                            controller: _passwordController,
                            decoration:const  InputDecoration(
                              hintText: 'Password',
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              filled: true,
                              errorStyle: TextStyle(
                                color:  Color.fromARGB(255, 0, 0, 0),
                                
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                  borderSide:
                                      BorderSide(width: 1, color: Colors.black)),
                            ),
                            obscureText: true,
                            validator: PasswordFieldValidator.validate,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: containerOrientation,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 74, 6, 235),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  width: containerOrientation,
                                  decoration: const BoxDecoration(
                                    color:
                                         Color.fromARGB(255, 74, 6, 235),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                  child: TextButton(
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        Navigator.of(context)
                                            .pushNamed(AppRoutes.HOME);
                                      }
                                    },
                                    child: const Text(
                                      'Login',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Center(
                              child: TextButton(
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushNamed(AppRoutes.FORGOT);
                                },
                                child:  const Text(
                                  'Forgot Password?',
                                ),
                              ),
                            ),
                            Center(
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    _showLoginForm = false;
                                  });
                                },
                                child: const Text(
                                  'Back',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    ));
  }
}
