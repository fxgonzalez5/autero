import 'package:flutter/material.dart';
import 'package:autero/config/theme/responsive.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool isPassword;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.icon,
    this.isPassword = false
  });

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    final colors = Theme.of(context).colorScheme;

    return TextFormField(
      style: TextStyle(color: colors.primary),
      obscureText: isPassword,
      decoration:  InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: responsive.hp(2), horizontal: responsive.wp(7.5)),
        hintText: hintText,
        suffixIcon: Icon(icon),
        suffixIconConstraints: BoxConstraints.tightFor(width: responsive.wp(20)),
      ),
    );
  }
}