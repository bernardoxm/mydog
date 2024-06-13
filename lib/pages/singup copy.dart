import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:mydog/routes/routes.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({super.key});

  @override
  State<SingUpPage> createState() => _SingUpState();
}

class _SingUpState extends State<SingUpPage> {
  late PageController _pageController;
  late List<GlobalKey<FormState>> _formKeys;
  late List<TextEditingController> _controllers;
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    _formKeys = List.generate(7, (_) => GlobalKey<FormState>());
    _controllers = List.generate(7, (_) => TextEditingController());
  }

  @override
  void dispose() {
    _pageController.dispose();
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double containerHeight =
        MediaQuery.of(context).orientation != Orientation.landscape
            ? (MediaQuery.of(context).size.height * 0.57)
            : (MediaQuery.of(context).size.height * 1);

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(221, 60, 82, 246),
              Color.fromARGB(255, 4, 171, 197),
            ],
          ),
        ),
        child: ListView(
          // padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 1 ),
          children: [
            Column(
              children: [
                if (MediaQuery.of(context).orientation !=
                    Orientation.landscape)
                  SizedBox(
                      height: (MediaQuery.of(context).size.height * 0.14)),
                Center(
                  child: Container(
                    width: 300.0,
                    height: containerHeight,
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: PageView.builder(
                            controller: _pageController,
                            itemCount: 7,
                            onPageChanged: (index) {
                              setState(() {
                                _currentPageIndex = index;
                              });
                            },
                            itemBuilder: (context, index) {
                              return _buildFormPage(index);
                            },
                          ),
                        ),
                        Center(
                          child: Container(
                            padding:  const EdgeInsets.all(1),
                            width: 300.0,
                            decoration:  const BoxDecoration(
                              color: Color.fromARGB(255, 4, 123, 220),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: TextButton(
                              onPressed: () {
                                if (_formKeys[_currentPageIndex]
                                    .currentState!
                                    .validate()) {
                                  if (_currentPageIndex < 6) {
                                    _pageController.nextPage(
                                      duration: const Duration(milliseconds: 300),
                                      curve: Curves.ease,
                                    );
                                  } else {
                                    // Submit form
                                    _submitForm();
                                  }
                                }
                              },
                              child: Text(
                                _currentPageIndex < 6 ? 'Next' : 'Submit',
                                style:  const TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Center(
                          child: Container(
                            padding: const EdgeInsets.all(1.0),
                            width: 300.0,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 4, 123, 220),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: TextButton(
                              onPressed: () {
                                if (_currentPageIndex > 0) {
                                  _pageController.previousPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.ease,
                                  );
                                } else {
                                  Navigator.pop(context);
                                }
                              },
                              child: Text(
                                  _currentPageIndex > 0 ? 'Back' : 'Cancel',
                                  style: const TextStyle(color: Colors.white)),
                            ),
                          ),
                        ),
                        Center(
                          child: TextButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed(AppRoutes.LOGIN);
                            },
                            child: const Text('Back to Home Page',
                                style: TextStyle(color: Colors.white)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFormPage(int index) {
    String imagePath = '';

    switch (index) {
      case 0:
        imagePath = 'lib/files/patsingup_logo.png';

        break;
      case 1:
        imagePath = 'lib/files/bolo.png';
        break;
      case 2:
        imagePath = 'lib/files/email.png';
        break;
      case 3:
        imagePath = 'lib/files/phone.png';
        break;

      case 4:
        imagePath = 'lib/files/petregistration.png';
        break;

      case 5:
        imagePath = 'lib/files/petpassword.png';
        break;

      case 6:
        imagePath = 'lib/files/petpassword.png';
        break;

      default:
        break;
    }
    double paddingHeight =
        MediaQuery.of(context).orientation != Orientation.landscape
            ? (MediaQuery.of(context).size.height * 0.22)
            : (MediaQuery.of(context).size.height * .34);

    return Animate(
      child: Form(
        key: _formKeys[index],
        child: Column(
          children: [
            if (imagePath.isNotEmpty)
              SizedBox(
                height: paddingHeight,
                child: Padding(
                  padding: const EdgeInsets.all(1),
                  child: Image.asset(
                    imagePath,
                    height: paddingHeight,
                  ),
                ),
              ),
            Expanded(
              child: TextFormField(
                controller: _controllers[index],
                decoration: InputDecoration(
                  hintText: _getFieldHintText(index),
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  contentPadding: const EdgeInsets.only(bottom: 10),
                  errorStyle:  const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                keyboardType: _getFieldKeyboardType(index),
                obscureText: _getFieldObscureText(index),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter ${_getFieldLabelText(index)}';
                  }
                  return null;
                },
              ),
            ),
           const  SizedBox(height: 12),
          ],
        ),
      ),
    );
  }

  String _getFieldHintText(int index) {
    switch (index) {
      case 0:
        return 'Pet Name';
      case 1:
        return 'Pet Birthday';
      case 2:
        return 'E-mail';
      case 3:
        return 'Contact number';
      case 4:
        return 'Registration';
      case 5:
        return 'Password';
      case 6:
        return 'Confirm Password';
      default:
        return '';
    }
  }

  String _getFieldLabelText(int index) {
    switch (index) {
      case 0:
        return 'pet name';
      case 1:
        return 'pet birthday';
      case 2:
        return 'e-mail';
      case 3:
        return 'contact number';
      case 4:
        return 'registration';
      case 5:
        return 'password';
      case 6:
        return 'confirm password';
      default:
        return '';
    }
  }

  TextInputType _getFieldKeyboardType(int index) {
    switch (index) {
      case 0:
        return TextInputType.text;
      case 1:
        return TextInputType.datetime;
      case 2:
        return TextInputType.emailAddress;
      case 3:
        return TextInputType.phone;
      case 4:
        return TextInputType.text;
      case 5:
        return TextInputType.visiblePassword;
      case 6:
        return TextInputType.visiblePassword;
      default:
        return TextInputType.text;
    }
  }

  bool _getFieldObscureText(int index) {
    return index == 5 || index == 6;
  }

  void _submitForm() {}
}
