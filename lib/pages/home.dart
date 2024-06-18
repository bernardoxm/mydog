import 'dart:io'; // Para usar FileImage caso necessário

import 'package:flutter/material.dart';
import 'package:mydog/controler/menu_itens.dart';
import 'package:mydog/routes/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double sizeHProfile = 390;
  double sizeVProfile = 90;
  double border = 40;

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    final double widthprofile = MediaQuery.of(context).size.width;
    final double heightprofile = orientation == Orientation.portrait
        ? MediaQuery.of(context).size.height * 0.4
        : MediaQuery.of(context).size.height * 0.90;
    final double avatarRadius = orientation == Orientation.portrait
        ? MediaQuery.of(context).size.width * 0.07
        : MediaQuery.of(context).size.width * 0.05;

    double fontSizeall = MediaQuery.of(context).size.width * 0.045;

    String imagePath = '../data/user/0/com.example.mydog/app_flutter/profile/photoprofile.png';
    bool imageExists = File(imagePath).existsSync();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                height: heightprofile,
                width: widthprofile,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(255, 60, 2, 195),
                      Color.fromRGBO(121, 76, 226, 1),
                    ],
                  ),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 100,
                      top: MediaQuery.of(context).size.height * 0.17,
                      bottom: 1,
                      child: Container(
                        width: widthprofile/1.3,
                        height: heightprofile / 2,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: imageExists
                                ? FileImage(File(imagePath)) as ImageProvider
                                : const AssetImage('lib/assets/petregistration.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).devicePixelRatio * 1,
                      bottom: MediaQuery.of(context).devicePixelRatio * 5,
                      child: Column(
                        children: [
                          Text(
                            ' Name: Bernardo ',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                fontSize: fontSizeall),
                          ),
                          Text(
                            ' Age: 10',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                fontSize: fontSizeall),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
              width: 100,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                  buildIconColumn(
                    context,
                    'lib/assets/alarmicon.png',
                    'Task',
                    avatarRadius,
                    fontSizeall,
                    () {},
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.044),
                  buildIconColumn(
                    context,
                    'lib/assets/Vaccination.png',
                    'Vaccine',
                    avatarRadius,
                    fontSizeall,
                    () {},
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.044),
                  buildIconColumn(
                    context,
                    'lib/assets/parksnearyouicon.png',
                    'Parks',
                    avatarRadius,
                    fontSizeall,
                    () {},
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.044),
                  buildIconColumn(
                    context,
                    'lib/assets/FoodRegisterIcon.png',
                    'Foody',
                    avatarRadius,
                    fontSizeall,
                    () {},
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.044),
                 buildIconColumn(
                    context,
                    'lib/assets/bathicon.png',
                    'Bath',
                    avatarRadius,
                    fontSizeall,
                    () {},
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.044),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: const Center(
                      child: Text('List'),
                    ),
                    height: MediaQuery.of(context).size.height * 0.38,
                    width: widthprofile,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Color.fromARGB(255, 255, 255, 255),
                          Color.fromRGBO(237, 237, 237, 1),
                        ],
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.12,
                    width: widthprofile,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(121, 76, 226, 1),
                          Color.fromARGB(255, 60, 2, 195),
                        ],
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          SizedBox(width: MediaQuery.of(context).size.width * 0.3),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: CircleAvatar(
                                  backgroundColor: const Color.fromARGB(255, 60, 2, 195),
                                  radius: MediaQuery.of(context).size.width * 0.06,
                                  backgroundImage: const AssetImage('lib/assets/profile.png'),
                                ),
                              ),
                              const Text(
                                'Profile',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width * .1),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushNamed(AppRoutes.LOGIN);
                                },
                                child: CircleAvatar(
                                  backgroundColor: const Color.fromARGB(255, 60, 2, 195),
                                  radius: MediaQuery.of(context).size.width * 0.06,
                                  backgroundImage: const AssetImage('lib/assets/logout.png'),
                                ),
                              ),
                              const Text(
                                'Logout',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}

