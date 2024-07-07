import 'package:autero/config/theme/responsive.dart';
import 'package:flutter/material.dart';

class Head extends StatelessWidget {
  final String title;
  final String? name;
  final TextStyle? titleStyle;

  const Head({
    super.key,
    required this.title,
    this.name,
    this.titleStyle,
  });

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    final texts = Theme.of(context).textTheme;

    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: titleStyle ?? texts.displaySmall),
            if (name != null) Text(name!, style: texts.displaySmall!.copyWith(fontWeight: FontWeight.w500)),
          ],
        ),
        const Spacer(),
        Transform.rotate(
          angle: 0.35,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(responsive.ip(3)),
            child: Image.network(
              'https://st4.depositphotos.com/9998432/23359/v/450/depositphotos_233594220-stock-illustration-person-gray-photo-placeholder-man.jpg',
              width: responsive.wp(18),
              height: responsive.wp(20),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}