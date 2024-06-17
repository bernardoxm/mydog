import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mydog/routes/routes.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({super.key});

  @override
  State<SingUpPage> createState() => _SingUpState();
}

class _SingUpState extends State<SingUpPage> {
  File? image;

  Future<void> _pickImage() async {
    try {
      final ImagePicker _picker = ImagePicker();
      final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);

      if (pickedFile != null) {
        final Directory appDir = await getApplicationDocumentsDirectory();
        final String fileName = basename(pickedFile.path);
        final String savedPath = join(appDir.path, fileName);
        final File savedImage = await File(pickedFile.path).copy(savedPath);

        setState(() {
          image = savedImage;
        });
      }
    } catch (e) {
      // Handle any exceptions here
      print("Error picking image: $e");
    }
  }
  

  @override
  Widget build(BuildContext context) {
    double fontSizeall = MediaQuery.of(context).size.width * 0.045;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 60, 2, 195),
              Color.fromRGBO(121, 76, 226, 1),
            ],
          ),
        ),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.all(8.0),
            children: [
              Column(
                children: [
                  Center(
                    child: Text(
                      'Welcome',
                      style: TextStyle(
                        fontSize: fontSizeall,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                      ),
                    ).animate().moveY(
                      begin: -25,
                      end: 15,
                      curve: Curves.easeInOut,
                      duration: 1000.ms,
                    ),
                  ), 
                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(1),
                    child: Animate(
                      child: image != null
                          ? CircleAvatar(
                              radius: 75,
                              backgroundImage: FileImage(image!),
                            )
                          : Image.asset(
                              'lib/assets/mydoglogo.png',
                              width: 150,
                              height: 150,
                            ).animate().moveY(
                                begin: -25,
                                end: 15,
                                curve: Curves.easeInOut,
                                duration: 1000.ms),
                    ),
                  ),
                
                
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'E-mail',
                            fillColor: Color.fromARGB(255, 255, 255, 255),
                            border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                borderSide: BorderSide(width: 1, color: Colors.black)),
                            errorStyle: TextStyle(
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
                                  Radius.circular(20),
                                ),
                                borderSide: BorderSide(width: 1, color: Colors.black)),
                            errorStyle: TextStyle(
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
                                  Radius.circular(20),
                                ),
                                borderSide: BorderSide(width: 1, color: Colors.black)),
                            errorStyle: TextStyle(
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
                                  Radius.circular(20),
                                ),
                                borderSide: BorderSide(width: 1, color: Colors.black)),
                            errorStyle: TextStyle(
                              color: const Color.fromARGB(255, 0, 0, 0),
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
                                  Radius.circular(20),
                                ),
                                borderSide: BorderSide(width: 1, color: Colors.black)),
                            errorStyle: TextStyle(
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
                                  Radius.circular(20),
                                ),
                                borderSide: BorderSide(width: 1, color: Colors.black)),
                            errorStyle: TextStyle(
                              color: const Color.fromARGB(255, 0, 0, 0),
                              fontSize: fontSizeall,
                            ),
                            filled: true,
                          ),
                        ),
                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                  Container( 
                    padding: const EdgeInsets.all(1.0),
                    width: 300.0,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 74, 6, 235),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ), child: TextButton(
                    onPressed: _pickImage,
                    child: Text('Pet Photo'),
                  ),),  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.all(1.0),
                    width: 300.0,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 74, 6, 235),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () { },
                      child: Text(
                        'Sing Up',
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.all(1.0),
                    width: 300.0,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 74, 6, 235),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(AppRoutes.LOGIN);
                      },
                      child: Text(
                        'Back',
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
