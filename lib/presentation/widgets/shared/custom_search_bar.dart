import 'package:flutter/material.dart';
import 'package:autero/config/theme/responsive.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    final colors = Theme.of(context).colorScheme;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: responsive.hp(2)),
      child: SearchBar(
        backgroundColor: WidgetStatePropertyAll(colors.surface),
        hintStyle: const WidgetStatePropertyAll(TextStyle(color: Colors.grey)),
        leading: SizedBox(
          width: responsive.wp(15),
          child: Icon(Icons.search_rounded, size: responsive.ip(2.5), color: Colors.grey,),
        ),
        hintText: 'Buscar un transporte...',
        trailing: [
          Container(
            padding: EdgeInsets.all(responsive.ip(1)),
            decoration: BoxDecoration(
              color: colors.secondary,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.white)
          )
        ],
      ),
    );
  }
}