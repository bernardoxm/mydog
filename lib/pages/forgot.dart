import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:mydog/controler/validar_email.dart';
import 'package:mydog/routes/routes.dart';

class ForgotPage extends StatefulWidget {
  const ForgotPage({super.key});

  @override
  State<ForgotPage> createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
 
  @override
  Widget build(BuildContext context) {
      final TextEditingController emailController = TextEditingController();


  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Scaffold(
      // Adicione um Scaffold ao redor do seu conteúdo
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
             Color.fromARGB(255, 60, 2, 195),
            Color.fromRGBO(121, 76, 226, 1),
            ],
          ),
        ),
        
        child: ListView(
          children: [     SizedBox(height: (MediaQuery.of(context).size.height * 0.1)),
             Center(
               child: Animate(
                 child: Image.asset(
                   'lib/assets/forgoticon.png',
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
            Center( 
              child: Container(
                
                padding: const EdgeInsets.all(1.0),
                width: 300.0,
                child: Form( key: formKey,
                
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       const Text(
                        'Reset your Password, please put your email and submit',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                          decoration: TextDecoration.none,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 30),
                      TextFormField(
                                  controller: emailController,
                                  
                                  decoration: InputDecoration(
                                    hintText: 'Email',
                                    fillColor: Color.fromARGB(255, 255, 255, 255),
                                    border: const OutlineInputBorder(
                                      
                                      borderRadius: BorderRadius.all( 
                                        Radius.circular(20),),

                                     
                                      
                                     borderSide: BorderSide(width: 1, color: Colors.black)
                                    ),
                                    filled: true,
                                    errorStyle:  const TextStyle(color:Color.fromARGB(255, 0, 0, 0),fontSize: 14, )
                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                  validator: (value) =>
                                      EmailFieldValidator.validate(value!),
                                      
                                ),
                              
                      
                     const  SizedBox(height: 30),
                      Container(
                        padding: const EdgeInsets.all(1.0),
                        width: 300.0,
                        decoration: const BoxDecoration(
                          color:  Color.fromARGB(255, 74, 6, 235),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {}
        
                          },
                          child:  const Text(
                            'Send',
                            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ),
                      ), 
                     const  SizedBox(height: 10),
                      Container(
                        padding:  const EdgeInsets.all(1.0),
                        width: 300.0,
                        decoration:  const BoxDecoration(
                          color:  Color.fromARGB(255, 74, 6, 235),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {
                                Navigator.of(context)
                                            .pushNamed(AppRoutes.LOGIN);
                
                          },
                          child: const Text(
                            'Back',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),),
                
                      
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
