import 'package:flutter/material.dart';
import 'package:autero/config/theme/responsive.dart';
import 'package:autero/presentation/widgets/widgets.dart';
import 'package:go_router/go_router.dart';


class RegisterScreen extends StatelessWidget {
  static const name = 'register_screen';

  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    
    return Scaffold(
      body: AuthBackground(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: responsive.hp(2.5), horizontal: responsive.wp(10)),
          child: Column(
            children: [
              SizedBox(height: responsive.hp(20)),
              Image.asset('assets/images/logo.png', width: responsive.wp(75), fit: BoxFit.cover),
              const Spacer(),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, responsive.hp(6)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(responsive.ip(2))
                  ),
                  textStyle: TextStyle(fontSize: responsive.ip(1.8))
                ),
                icon: Image.asset('assets/icons/google.png'),
                label: Container(
                  width: responsive.wp(50),
                  alignment: Alignment.center,
                  child: const Text('Ingresa con Google')
                ),
                onPressed: () {},
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: responsive.hp(3)),
                child: Text('O', style: TextStyle(fontSize: responsive.ip(1.6), color: Colors.white)),
              ),
              const CustomTextFormField(
                hintText: 'Nombre',
                icon: Icons.person_outline,
              ),
              SizedBox(height: responsive.hp(2)),
              const CustomTextFormField(
                hintText: 'Apellido',
                icon: Icons.person_outline,
              ),
              SizedBox(height: responsive.hp(2)),
              const CustomTextFormField(
                hintText: 'Correo',
                icon: Icons.email_outlined,
              ),
              SizedBox(height: responsive.hp(2)),
              const CustomTextFormField(
                hintText: 'Contraseña',
                icon: Icons.vpn_key_outlined,
                isPassword: true,
              ),
              SizedBox(height: responsive.hp(3)),
              FilledButton(
                style: FilledButton.styleFrom(
                  minimumSize: Size(double.infinity, responsive.hp(6)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(responsive.ip(2))
                  ),
                  textStyle: TextStyle(fontSize: responsive.ip(1.8))
                ),
                child: const Text('Crear Cuenta'),
               onPressed: () => context.go('/home/0'),
              ),
              TextButton(
                child: const Text('Iniciar Sesión'),
                onPressed: () => context.pop(),
              )
            ],
          ),
        ),
      )
   );
  }
}

class _Subsection extends StatelessWidget {
  const _Subsection();

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);

    return Row(
      children: [
        Checkbox(
          fillColor: const WidgetStatePropertyAll(Colors.white),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(responsive.ip(0.5)))
          ),
          side: BorderSide.none,
          value: false,
          onChanged: (bool? value) {}
        ),
        const Text('Recuerdame', style: TextStyle(color: Colors.white)),
        const Spacer(),
        TextButton(
          child: const Text('¿Olvidaste tu contraseña?'),
          onPressed: () {},
        )
      ],
    );
  }
}