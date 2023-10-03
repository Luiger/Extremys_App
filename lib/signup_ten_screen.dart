import 'package:flutter/material.dart';
import 'package:extremys_app/Widgets/header.dart';
import 'package:extremys_app/Widgets/logo.dart';
import 'package:extremys_app/Widgets/text_field_custom.dart';
import 'package:extremys_app/login_ten_screen.dart';
import 'package:extremys_app/widgets/widgets.dart';
import 'package:extremys_app/widgets/text_frave.dart';

class SignUpTenPage extends StatelessWidget {
  const SignUpTenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: const EdgeInsets.only(top: 0),
      physics: const BouncingScrollPhysics(),
      children: [
        Stack(
          children: [HeaderSignUp(), LogoHeader()],
        ),
        _Titulo(),
        _TextField(),
        _Botton()
      ],
    ));
  }
}

class _Botton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 176, 17, 17),
          borderRadius: BorderRadius.circular(50)),
      child: TextButton(
        child: const TextFrave(
            text: 'Registrarse', color: Colors.white, fontSize: 18),
        onPressed: () {},
      ),
    );
  }
}

class _TextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          TextFieldCustom(
              icono: Icons.person, type: TextInputType.text, texto: 'Nombre'),
          const SizedBox(height: 20),
          TextFieldCustom(
              icono: Icons.person, type: TextInputType.text, texto: 'Apellido'),
          const SizedBox(height: 20),
          TextFieldCustom(
              icono: Icons.person, type: TextInputType.text, texto: 'Edad'),
          const SizedBox(height: 20),
          TextFieldCustom(
              icono: Icons.mail_outline,
              type: TextInputType.emailAddress,
              texto: 'Correo electrónico '),
          const SizedBox(height: 20),
          TextFieldCustom(
              icono: Icons.visibility_off,
              type: TextInputType.number,
              texto: 'Contraseña'),
          const SizedBox(height: 20),
          TextFieldCustom(
              icono: Icons.visibility_off,
              type: TextInputType.text,
              pass: true,
              texto: 'Confirmar contraseña'),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class _Titulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          TextButton(
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => LoginTenPage())),
            child: const TextFrave(
                text: 'Iniciar Sesión',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey),
          ),
          const TextFrave(text: '/', fontSize: 25, color: Colors.grey),
          TextButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => SignUpTenPage())),
              child: const TextFrave(
                  text: 'Registro',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black))
        ],
      ),
    );
  }
}
