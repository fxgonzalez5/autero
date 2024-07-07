import 'package:flutter/material.dart';
import 'package:autero/config/theme/responsive.dart';
import 'package:autero/presentation/widgets/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    final colors = Theme.of(context).colorScheme;
    final texts = Theme.of(context).textTheme;

    return Stack(
      children: [
        //* Background
        Positioned(
          bottom: responsive.hp(8),
          right: responsive.wp(5),
          child: Image.asset('assets/images/figure.png', width: responsive.wp(70), fit: BoxFit.cover,)
        ),

        SingleChildScrollView(
          padding: EdgeInsets.all(responsive.ip(2.5)),
          child: const Column(
            children: [
              Head(
                title: 'Bienvenido,',
                name: 'Usuario',
              ),
              CustomSearchBar(),
              // Completar el diseño del HomeView
            ],
          ),
        ),
      ],
    );
  }
}
