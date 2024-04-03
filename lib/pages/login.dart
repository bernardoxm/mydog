import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:mydog/components/animation_paw_login.dart';
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
      duration: Duration(seconds: 1),
    );
    _logoAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Interval(0.0, 0.5, curve: Curves.easeInOut),
    ));
    _textAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Interval(0.5, 1.0, curve: Curves.easeInOut),
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
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(221, 60, 82, 246),
                  Color.fromARGB(255, 4, 171, 197),
                ],
              ), // Cores do degradê
            ),
            child: Center(
              child: Container(
                padding: EdgeInsets.all(1.0),
                width: 300.0,
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (_showLoginForm)
                        FadeTransition(
                          opacity: _textAnimation,
                          child: Text(
                            'MyPet',
                            style: TextStyle(
                              fontSize: 40.0,
                              color: Colors.white,
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
                          child: Text(
                            'MyPet',
                            style: TextStyle(
                              fontSize: 40.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ).animate().moveY(
                              begin: -25,
                              end: 15,
                              curve: Curves.easeInOut,
                              duration: 1000.ms),
                        ),
                      SizedBox(height: 0),
                      if (!_showLoginForm)
                        FadeTransition(
                          opacity: _logoAnimation,
                          child: Animate(
                            child: Image.asset(
                              'lib/files/logo.png',
                              width: 150,
                              height: 150,
                            ).animate().moveY(
                                begin: -25,
                                end: 15,
                                curve: Curves.easeInOut,
                                duration: 1000.ms),
                          ),
                        ),
                      SizedBox(height: 50),
                      if (_showLoginForm)
                        FadeTransition(
                          opacity: _textAnimation,
                          child: TextFormField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              hintText: 'Email',
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              ),
                              errorStyle: TextStyle(color:Colors.white,fontSize: 14, ),
                              filled: true,
                            ),
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) =>
                                EmailFieldValidator.validate(value!),
                          ),
                        ),
                      SizedBox(height: 10),
                      if (_showLoginForm)
                        FadeTransition(
                          opacity: _textAnimation,
                          child: TextFormField(
                            controller: _passwordController,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              fillColor: Colors.white,
                              filled: true,
                              errorStyle: TextStyle(color:Colors.white,fontSize: 14, ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            obscureText: true,
                            validator: PasswordFieldValidator.validate,
                          ),
                        ),
                      SizedBox(height: 10),
                      if (!_showLoginForm)
                        FadeTransition(
                          opacity: _textAnimation,
                          child: Center(
                            child: Container(
                              padding: EdgeInsets.all(1.0),
                              width: 300.0,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 4, 123, 220),
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
                                child: Text('Login',
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ),
                          ),
                        ),
                      if (_showLoginForm)
                        FadeTransition(
                          opacity: _textAnimation,
                          child: Center(
                            child: Container(
                              padding: EdgeInsets.all(1.0),
                              width: 300.0,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              child: TextButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {}
                                },
                                child: Text('Login',
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ),
                          ),
                        ),
                      if (_showLoginForm)
                        FadeTransition(
                          opacity: _textAnimation,
                          child: Center(
                            child: Container(
                              child: TextButton(
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushNamed(AppRoutes.FORGOT);
                                },
                                child: Text(
                                  'Forgot Password?',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      if (_showLoginForm)
                        FadeTransition(
                          opacity: _textAnimation,
                          child: Center(
                            child: Container(
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    _showLoginForm = false;
                                  });
                                },
                                child: Text(
                                  'Back',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      if (!_showLoginForm)
                        FadeTransition(
                          opacity: _textAnimation,
                          child: Center(
                            child: Container(
                              child: TextButton(
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushNamed(AppRoutes.SINGUP);
                                },
                                child: Text(
                                  'Don\'t have an account? Sing UP',
                                  style: TextStyle(color: Colors.white),
                                ),
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
          AnimatedPaws(),
        ],
      ),
    );
  }
}
