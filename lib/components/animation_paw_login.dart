import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedPaws extends StatefulWidget {
  @override
  _AnimatedPawsState createState() => _AnimatedPawsState();
}

class _AnimatedPawsState extends State<AnimatedPaws> {
  late Timer _timer;
  double _pawOffsetX = 0.0;
  double _pawOffsetY = 0.0;
  double _opacity = 10.0;
  final double _angle = 45.0; // Ângulo de movimento em graus
  final double _movementSpeed = 1; // Velocidade de movimento em pixels por segundo

  @override
  void initState() {
    super.initState();
    _movePaw();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _opacity,
      duration: Duration(milliseconds: 500), // Duração da transição de opacidade
      child: Stack(
        children: [
          Positioned(
            top: _pawOffsetY,
            left: _pawOffsetX,
            child: Image.asset(
              'lib/files/paw2.png', // Caminho para a imagem da pata
              width: 110, // Largura da imagem da pata
              height: 110, // Altura da imagem da pata
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _movePaw() {
    _timer = Timer.periodic(Duration(seconds: 5), (timer) {
      double initialX = Random().nextDouble() * MediaQuery.of(context).size.width;
      double initialY = Random().nextDouble() * MediaQuery.of(context).size.height;

      setState(() {
        _pawOffsetX = initialX;
        _pawOffsetY = initialY;
        _opacity = 1.0; // Redefine a opacidade para 1.0
      });

      Timer(Duration(seconds: 1), () {
        setState(() {
          _opacity = 0.0; // Define a opacidade para 0.0
        });
      });

      Timer(Duration(seconds: 2), () {
        _startPawMovement();
      });
    });
  }

  void _startPawMovement() {
    setState(() {
      double angleInRadians = _angle * pi / 180.0;
      double nextX = _pawOffsetX + _movementSpeed * cos(angleInRadians);
      double nextY = _pawOffsetY + _movementSpeed * sin(angleInRadians);
      
      // Verifica se a próxima posição está dentro dos limites da tela
      if (nextX >= 0 && nextX <= MediaQuery.of(context).size.width - 100 &&
          nextY >= 0 && nextY <= MediaQuery.of(context).size.height - 100) {
        _pawOffsetX = nextX;
        _pawOffsetY = nextY;
      } else {
        double newX = Random().nextDouble() * MediaQuery.of(context).size.width;
        double newY = Random().nextDouble() * MediaQuery.of(context).size.height;
        _pawOffsetX = newX;
        _pawOffsetY = newY;
      }
    });

    Timer(Duration(seconds: 3), () {
      setState(() {
        _opacity = 1.0; // Redefine a opacidade para 1.0
      });
    });
  }
}
