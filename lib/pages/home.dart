import 'package:flutter/material.dart';
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
    final double widthprofile = orientation == Orientation.portrait
        ? MediaQuery.of(context).size.width * 1
        : MediaQuery.of(context).size.width * 1;

    final double heightprofile = orientation == Orientation.portrait
        ? MediaQuery.of(context).size.height * 0.4
        : MediaQuery.of(context).size.height * 0.90;
    final double avatarRadius = orientation == Orientation.portrait
        ? MediaQuery.of(context).size.width * 0.07
        : MediaQuery.of(context).size.width * 0.05;

//conseitos de screen
    double fontSizeall = MediaQuery.of(context).size.width * 0.045;
    double heightbox = MediaQuery.of(context).size.width * 0.21;
    double widithbox = MediaQuery.of(context).size.width * 0.91;
    double widthphoto = MediaQuery.of(context).size.width * 0.21;
    double heightphoto = MediaQuery.of(context).size.width * 0.21;

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
                    bottomLeft: Radius.circular(
                        50), // Raio para o canto inferior esquerdo
                    bottomRight: Radius.circular(
                        50), // Raio para o canto inferior direito
                  ),
                 
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 100,
                      top: 0,
                      bottom: 0,
                      child: Container(
                        width: widthprofile,
                        height: heightprofile / 2,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('lib/assets/petregistration.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).devicePixelRatio *
                          1, // ajuste conforme necessário

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
              child: Row(children: [
                SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                        backgroundColor: const Color.fromARGB(255, 60, 2, 195),
                        //child: Text(''),
                        radius: avatarRadius,
                        backgroundImage:
                            const AssetImage('lib/assets/alarmicon.png'),
                      ),
                    ),
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 90),
                      child: Text(
                        'Task',
                        style: TextStyle(
                            fontSize: fontSizeall, color: Colors.black),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.044),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                        backgroundColor: const Color.fromARGB(255, 60, 2, 195),
                        //  child: Text(''),
                        radius: avatarRadius,
                        backgroundImage:
                            const AssetImage('lib/assets/Vaccination.png'),
                      ),
                    ),
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 90),
                      child: Text(
                        'Vaccine',
                        style: TextStyle(
                            fontSize: fontSizeall, color: Colors.black),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.044),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                        backgroundColor: const Color.fromARGB(255, 60, 2, 195),
                        //  child: Text(''),
                        radius: avatarRadius,
                        backgroundImage:
                            const AssetImage('lib/assets/parksnearyouicon.png'),
                      ),
                    ),
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 90),
                      child: Text(
                        'Parks',
                        style: TextStyle(
                            fontSize: fontSizeall, color: Colors.black),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.044),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                        backgroundColor: const Color.fromARGB(255, 60, 2, 195),
                        // child: Text(''),
                        radius: avatarRadius,
                        backgroundImage:
                            const AssetImage('lib/assets/FoodRegisterIcon.png'),
                      ),
                    ),
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 90),
                      child: Text(
                        'Foody',
                        style: TextStyle(
                            fontSize: fontSizeall, color: Colors.black),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.044),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                        backgroundColor: const Color.fromARGB(255, 60, 2, 195),
                        //child: Text(''),
                        radius: avatarRadius,
                        backgroundImage:
                            const AssetImage('lib/assets/bathicon.png'),
                      ),
                    ),
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 90),
                      child: Text(
                        'Bath',
                        style: TextStyle(
                            fontSize: fontSizeall, color: Colors.black),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.044),
              ]),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child:  const Center(
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
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.093,
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
                        topLeft: Radius.circular(
                            50), // Raio para o canto inferior esquerdo
                        topRight: Radius.circular(
                            50), // Raio para o canto inferior direito
                      ),
                     
                    ),
                    child: Padding(

                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [  SizedBox(width: MediaQuery.of(context).size.width * 0.3),
                          Column(
                            children: [
                                GestureDetector(
                        onTap: () {},
                        child: CircleAvatar(
                          backgroundColor: const Color.fromARGB(255, 60, 2, 195),
                         
                          radius: MediaQuery.of(context).size.width * 0.06,
                          backgroundImage:
                              const AssetImage('lib/assets/profile.png'),
                        ),
                      ),
                           const  Text('Profile', style: TextStyle(color: Colors.white),)
                            ],
                          ),SizedBox(width: MediaQuery.of(context).size.width * .1),
                           Column(
                            
                            children: [
                                GestureDetector(
                        onTap: () {Navigator.of(context).pushNamed(AppRoutes.LOGIN);},
                        child: CircleAvatar(
                          backgroundColor: const Color.fromARGB(255, 60, 2, 195),
                         
                          radius: MediaQuery.of(context).size.width * 0.06,
                          backgroundImage:
                              const AssetImage('lib/assets/logout.png'),
                        ),
                      ),
                             const Text('Logout', style: TextStyle(color: Colors.white, ),)
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
