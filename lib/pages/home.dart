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
//conseitos de screen
    double fontSizeall = MediaQuery.of(context).size.width * 0.045;
    double heightbox = MediaQuery.of(context).size.width * 0.21;
    double widithbox = MediaQuery.of(context).size.width * 0.91;
    double widthphoto = MediaQuery.of(context).size.width * 0.21;
    double heightphoto = MediaQuery.of(context).size.width * 0.21;
  double widthprofile = MediaQuery.of(context).size.width * 0.97;
    double heightprofile = MediaQuery.of(context).size.width * 0.23;
    

    return  Container(
        decoration:  const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
                Color.fromARGB(255, 255, 255, 255),
                Color.fromARGB(255, 255, 255, 255),
            ],
          ),
        ),
        child: ListView(
          children: [
            Column(
              children: [
                 const SizedBox(height: 20),
                Center(
                  child: Container(
                    height:heightprofile ,
                    width: widthprofile,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(border),
                      border: Border.all(color: Color.fromARGB(255, 0, 0, 0), width: 1),
                                      color: Color.fromARGB(255, 255, 255, 255),

                     
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.width * 0.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(border),
                           border: Border.all(color: Color.fromARGB(255, 255, 255, 255), width: 1),
                                      color: Color.fromARGB(255, 255, 255, 255),
                            image: const DecorationImage(
                              image:
                                  AssetImage('lib/files/petregistration.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              ' Name:',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 0, 0), fontSize: fontSizeall),
                            ),
                            Text(
                              ' Age:',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 0, 0), fontSize: fontSizeall),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Center(
                  child: Container(
                    height: heightbox,
                    width: widithbox,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(border),
                      border: Border.all(color: Color.fromARGB(255, 0, 0, 0), width: 1),
                                      color: Color.fromARGB(255, 255, 255, 255),

                    ),
                    child: Row(
                      children: [
                        Container(
                          width: widthphoto,
                          height: heightphoto,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(border),
                             border: Border.all(color: Color.fromARGB(255, 255, 255, 255), width: 1),
                                      color: Color.fromARGB(255, 255, 255, 255),
                            image:  const DecorationImage(
                              image:  AssetImage('lib/files/alarmicon.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              ' Register an Alarm',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: const Color.fromARGB(255, 0, 0, 0),
                                fontSize: fontSizeall,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Center(
                  child: Container(
                    height: heightbox,
                    width: widithbox,
                     decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(border),
                      border: Border.all(color: Color.fromARGB(255, 0, 0, 0), width: 1),
                                      color: Color.fromARGB(255, 255, 255, 255),

                    ),
                    child: Row(
                      children: [
                        Container(
                          width: widthphoto,
                          height: heightphoto,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(border),
                             border: Border.all(color: Color.fromARGB(255, 255, 255, 255), width: 1),
                                      color: Color.fromARGB(255, 255, 255, 255),
                            image:  const DecorationImage(
                              image:  AssetImage(
                                  'lib/files/FoodRegisterIcon.png'),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              ' Register an Foody ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 0, 0), fontSize: fontSizeall),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Center(
                  child: Container(
                    height: heightbox,
                    width: widithbox,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(border),
                      border: Border.all(color: Color.fromARGB(255, 0, 0, 0), width: 1),
                                      color: Color.fromARGB(255, 255, 255, 255),

                    ),
                    child: Row(
                      children: [
                        Container(
                          width: widthphoto,
                          height: heightphoto,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(border),
                             border: Border.all(color: Color.fromARGB(255, 255, 255, 255), width: 1),
                                      color: Color.fromARGB(255, 255, 255, 255),
                            image: const DecorationImage(
                              image:
                                  AssetImage('lib/files/trackbackicon.png'),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '  Track Back  ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 0, 0), fontSize: fontSizeall),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Center(
                  child: Container(
                    height: heightbox,
                    width: widithbox,
                     decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(border),
                      border: Border.all(color: Color.fromARGB(255, 0, 0, 0), width: 1),
                                      color: Color.fromARGB(255, 255, 255, 255),

                    ),
                    child: Row(
                      children: [
                        Container(
                          width: widthphoto,
                          height: heightphoto,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(border),
                             border: Border.all(color: Color.fromARGB(255, 255, 255, 255), width: 1),
                                      color: Color.fromARGB(255, 255, 255, 255),
                            image: const DecorationImage(
                              image: AssetImage(
                                  'lib/files/parksnearyouicon.png'),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              ' Parks near You ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 0, 0), fontSize: fontSizeall),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              const   SizedBox(height: 10),
                Center(
                  child: Container(
                    height: heightbox,
                    width: widithbox,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(border),
                      border: Border.all(color: Color.fromARGB(255, 0, 0, 0), width: 1),
                                      color: Color.fromARGB(255, 255, 255, 255),

                    ),
                    child: Row(
                      children: [
                        Container(
                          width: widthphoto,
                          height: heightphoto,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(border),
                             border: Border.all(color: Color.fromARGB(255, 255, 255, 255), width: 1),
                                      color: Color.fromARGB(255, 255, 255, 255),
                            image: const DecorationImage(
                              image: AssetImage('lib/files/bathicon.png'),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              ' Pet bath ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: const Color.fromARGB(255, 0, 0, 0),
                                fontSize: fontSizeall,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),  const  SizedBox(height: 10),
                Center(
                  child: Container(
                    height: heightbox,
                    width: widithbox,
                     decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(border),
                      border: Border.all(color: Color.fromARGB(255, 0, 0, 0), width: 1),
                                      color: Color.fromARGB(255, 255, 255, 255),

                    ),
                    child: Row(
                      children: [
                        Container(
                          width: widthphoto,
                          height: heightphoto,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(border),
                             border: Border.all(color: Color.fromARGB(255, 255, 255, 255), width: 1),
                                      color: Color.fromARGB(255, 255, 255, 255),
                            image: const DecorationImage(
                              image: AssetImage('lib/files/Vaccination.png'),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              ' Vaccination  ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: const Color.fromARGB(255, 0, 0, 0),
                                fontSize: fontSizeall,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
               const  SizedBox(height: 10),
                SingleChildScrollView(
                  child: Row(
                      children: [ const  SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(1.0),
                           
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.height * 0.15,
                            decoration:  BoxDecoration(
                                border: Border.all(color: Color.fromARGB(255, 0, 0, 0), width: 1),
                                      color: Color.fromARGB(255, 255, 255, 255),
                  
                 
                  borderRadius: BorderRadius.all(
                    Radius.circular(40),
                    
                  ),
                  
                            ),
                            child: TextButton(
                    onPressed: () {
                      /// colocar funcao para localizar veterinario mais proximo
                    },
                    child:  Text(
                      '(SOS)',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: fontSizeall,
                          fontWeight: FontWeight.bold),
                    )),
                          ),
                        ),
                         const  SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(1),
                       
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.height * 0.15,
                        decoration:  BoxDecoration(
                           border: Border.all(color: Color.fromARGB(255, 0, 0, 0), width: 1),
                                      color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.all(
                            Radius.circular(40),
                          ),
                        ),
                        child: TextButton(
                            onPressed: () {
                  /// colocar funcao para localizar veterinario mais proximo
                            },
                            child:   Text(
                  '⚙️',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: fontSizeall,
                      fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                       const  SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(1),
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.height * 0.15,
                        decoration:  BoxDecoration(
                            border: Border.all(color: Color.fromARGB(255, 0, 0, 0), width: 1),
                                      color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(40),
                          ),
                        ),
                        child: TextButton(
                            onPressed: () {  Navigator.of(context)
                                  .pushNamed(AppRoutes.LOGIN);
                  
                            },
                            child:   Text(
                  'Back',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: fontSizeall,
                      fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),      const  SizedBox(width: 10),
                    ],
                  ),
                ),        const  SizedBox(height: 10),
                  ],
                ),
              
          ],
        ));
  }
}
