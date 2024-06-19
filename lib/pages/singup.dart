import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mydog/controler/image_remove_bg.dart';
import 'package:mydog/routes/routes.dart';
import 'package:path_provider/path_provider.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({super.key});

  @override
  State<SingUpPage> createState() => _SingUpState();
}

class _SingUpState extends State<SingUpPage> {
  File? image;

  @override
  Widget build(BuildContext context) {
 Future<void> _pickImage() async {
  try {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      final Directory appDir = await getApplicationDocumentsDirectory();
      final Directory profileDir = Directory('${appDir.path}/profile');

      if (!await profileDir.exists()) {
        await profileDir.create(recursive: true);
      }

      final String savedPath = '${profileDir.path}/photoprofile.png';
      print('Saving image to: $savedPath');

      final File savedImage = await File(pickedFile.path).copy(savedPath);

      setState(() {
        image = savedImage;
      });

      print('Image saved at: $savedPath');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('No image selected')),
      );
    }
  } catch (e) {
    print("Error picking image: $e");
  }
}

 Future<void> _removeBgAndSaveImage(File imageFile) async {
    try {
      final Uint8List processedImage = await ApiClient().removeBgApi(imageFile); 

      final Directory appDir = await getApplicationDocumentsDirectory();
      final Directory profileDir = Directory('${appDir.path}/profile');

      if (!await profileDir.exists()) {
        await profileDir.create(recursive: true);
      }

      final String savedPath = '${profileDir.path}/photoprofile.png';
      final File savedImage = File(savedPath);

      await savedImage.writeAsBytes(processedImage);

      setState(() {
        image = savedImage;
      });

      print('Image saved at: $savedPath');
    } catch (e) {
      print('Error removing background and saving image: $e');
    }
  }


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
            padding: const EdgeInsets.all(8.0),
            children: [
              Column(
                children: [
                  Center(
                    child: Text(
                      'Welcome',
                      style: TextStyle(
                        fontSize: fontSizeall,
                        color:const Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                      ),
                    ).animate().moveY(
                          begin: -25,
                          end: 15,
                          curve: Curves.easeInOut,
                          duration: 1000.ms,
                        ),
                  ),
                  const SizedBox(height: 20),
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
                            fillColor:const Color.fromARGB(255, 255, 255, 255),
                            border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black)),
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
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black)),
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
                            fillColor:const Color.fromARGB(255, 255, 255, 255),
                            border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black)),
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
                            fillColor:const Color.fromARGB(255, 255, 255, 255),
                            border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black)),
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
                            fillColor:const Color.fromARGB(255, 255, 255, 255),
                            border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black)),
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
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black)),
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
                    ),
                    child: TextButton(
                      onPressed: () async {
                        _pickImage();
                      },
                      child:const Text('Pet Photo'),
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
                     onPressed: () async {
      if (image != null) {
        await _removeBgAndSaveImage(image!);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
         const SnackBar(content: Text('Please select an image first')),
        );
      }
      Navigator.of(context).pushNamed(AppRoutes.HOME);
                      },
                      child: const Text(
                        'Sign Up',
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
                      child: const Text(
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
