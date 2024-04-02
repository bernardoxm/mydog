import 'package:flutter/material.dart';
import 'package:mydog/routes/routes.dart';

class ForgotPage extends StatefulWidget {
  @override
  State<ForgotPage> createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Adicione um Scaffold ao redor do seu conteúdo
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(221, 60, 82, 246),
              Color.fromARGB(255, 4, 171, 197),
            ],
          ),
        ),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(1.0),
            width: 300.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Reset your Password, please put your email and submit',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  padding: EdgeInsets.all(1.0),
                  width: 300.0,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 24, 121, 200),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Send',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ), 
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(1.0),
                  width: 300.0,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 24, 121, 200),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {
                          Navigator.of(context)
                                      .pushNamed(AppRoutes.LOGIN);

                    },
                    child: Text(
                      'Back',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),),

                
              ],
            ),
          ),
        ),
      ),
    );
  }
}