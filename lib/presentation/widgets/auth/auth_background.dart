import 'package:autero/config/theme/responsive.dart';
import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;

  const AuthBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);

    return Stack(
      children: [
        SizedBox.expand(
          child: Image.asset('assets/images/background.png', fit: BoxFit.cover)
        ),
        SingleChildScrollView(
          child: SizedBox(
            height: responsive.hp(100),
            child: child,
          ),
        ),
      ],
    );
  }
}