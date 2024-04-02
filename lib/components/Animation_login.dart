import 'package:flutter/material.dart';

class AnimationLogin extends StatefulWidget {
  final Widget child;

  const AnimationLogin({Key? key, required this.child}) : super(key: key);

  @override
  _AnimationLoginState createState() => _AnimationLoginState();
}

class _AnimationLoginState extends State<AnimationLogin>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _logoAnimation;
  late Animation<double> _textAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    _logoAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Interval(0.0, 0.5, curve: Curves.easeInOut), // Fade-in do logo
    ));
    _textAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Interval(0.5, 1.0, curve: Curves.easeInOut), // Fade-in do texto
    ));

    // Inicia as animações quando a página é carregada
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Opacity(
              opacity: _logoAnimation.value,
              child: child,
            );
          },
          child: widget.child,
        ),
        AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Opacity(
              opacity: _textAnimation.value,
              child: child,
            );
          },
          child: Container(), // Adicione aqui os widgets que deseja animar
        ),
      ],
    );
  }
}
