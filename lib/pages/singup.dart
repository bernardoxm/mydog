import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:mydog/routes/routes.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({super.key});

  @override
  State<SingUpPage> createState() => _SingUpState();
}

class _SingUpState extends State<SingUpPage> {
  @override
  Widget build(BuildContext context) {
    double fontSizeall = MediaQuery.of(context).size.width * 0.045;
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 255, 255, 255),
            Color.fromARGB(230, 245, 245, 245),
          ],
        ), // Cores do degradê
      ),
      child: Center(
        child: SizedBox( width: MediaQuery.of(context).size.width * 0.9,
          child: ListView(
            children: [
              Center(
                child:  Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: fontSizeall,
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  ),
                ).animate().moveY(
                    begin: -25,
                    end: 15,
                    curve: Curves.easeInOut,
                    duration: 1000.ms),
              ),
              Padding(
                padding: const EdgeInsets.all(1),
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
              const SizedBox(height: 50),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'E-mail',
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                 border: const OutlineInputBorder(
                                      
                                      borderRadius: BorderRadius.all( 
                                        Radius.circular(20),),

                                     
                                      
                                     borderSide: BorderSide(width: 1, color: Colors.black)
                                    ),
                  errorStyle:  TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontSize: fontSizeall,
                  ),
                  filled: true,
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Pet Name',
                  fillColor: const Color.fromARGB(255, 255, 255, 255),
                 border: const OutlineInputBorder(
                                      
                                      borderRadius: BorderRadius.all( 
                                        Radius.circular(20),),

                                     
                                      
                                     borderSide: BorderSide(width: 1, color: Colors.black)
                                    ),
                  errorStyle:  TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontSize: fontSizeall,
                  ),
                  filled: true,
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Pet Birthday',
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                 border: const OutlineInputBorder(
                                      
                                      borderRadius: BorderRadius.all( 
                                        Radius.circular(20),),

                                     
                                      
                                     borderSide: BorderSide(width: 1, color: Colors.black)
                                    ),
                  errorStyle:  TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontSize: fontSizeall,
                  ),
                  filled: true,
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Registration',
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  border: const OutlineInputBorder(
                                      
                                      borderRadius: BorderRadius.all( 
                                        Radius.circular(20),),

                                     
                                      
                                     borderSide: BorderSide(width: 1, color: Colors.black)
                                    ),
                  errorStyle:  TextStyle(
                    color:const Color.fromARGB(255, 0, 0, 0),
                    fontSize: fontSizeall,
                  ),
                  filled: true,
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                   border: const OutlineInputBorder(
                                      
                                      borderRadius: BorderRadius.all( 
                                        Radius.circular(20),),

                                     
                                      
                                     borderSide: BorderSide(width: 1, color: Colors.black)
                                    ),
                  errorStyle:  TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontSize: fontSizeall,
                  ),
                  filled: true,
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  fillColor: const Color.fromARGB(255, 255, 255, 255),
                   border: const OutlineInputBorder(
                                      
                                      borderRadius: BorderRadius.all( 
                                        Radius.circular(20),),

                                     
                                      
                                     borderSide: BorderSide(width: 1, color: Colors.black)
                                    ),
                  errorStyle:  TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontSize: fontSizeall,
                  ),
                  filled: true,
                ),
              ),         const SizedBox(height: 30),         
              Container(
                                      padding: const EdgeInsets.all(1.0),
                                      width: 300.0,
                                      decoration:  const BoxDecoration(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                      ),
                child: TextButton(
                  onPressed: () {},
                  child:  Text('Login',
                      style: TextStyle(color:const Color.fromARGB(255, 226, 226, 226), fontSize:  fontSizeall)),
                ),
              ),    const SizedBox(height: 10),
                 Container(
                                      padding: const EdgeInsets.all(1.0),
                                      width: 300.0,
                                      decoration:  const BoxDecoration(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20),
                                        ),
                                      ),
                child: TextButton(
                  onPressed: () {  Navigator.of(context)
                                  .pushNamed(AppRoutes.LOGIN);},
                  child:  Text('Back',
                      style: TextStyle(color:const Color.fromARGB(255, 226, 226, 226), fontSize: fontSizeall)),
                ),
              ),const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    ));
  }
}
