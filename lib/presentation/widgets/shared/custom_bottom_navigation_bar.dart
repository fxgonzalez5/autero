import 'package:autero/config/theme/responsive.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;

  const CustomBottomNavigationBar({
    super.key, 
    required this.currentIndex
  });

  void onItemTapped( BuildContext context, int index ) {
    switch(index) {
      case 0:
        context.go('/home/0');
        break;
      
      case 1:
        context.go('/home/1');
        break;
  
      case 2:
        context.go('/home/2');
        break;
    }
  }


  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    final colors = Theme.of(context).colorScheme;

    return BottomNavigationBar(
      // type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      iconSize: responsive.ip(2.5),
      currentIndex: currentIndex,
      onTap: (value) => onItemTapped(context, value),
      elevation: 0,
      selectedItemColor: colors.secondary,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_rounded),
          label: 'Inicio'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search_rounded),
          label: 'Buscar'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_rounded),
          label: 'Perfil'
        ),
      ]
    );
  }
}