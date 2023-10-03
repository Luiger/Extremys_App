import 'package:extremys_app/get_started_screen.dart';
import 'package:extremys_app/my_home_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  initState() {
    Future.delayed(
      Duration(seconds: 5),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => GetStartedPage(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            'assets/imagen.jpg',
            fit: BoxFit
                .cover, // Ajusta la imagen para que cubra toda la pantalla
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color:
                  Colors.black.withOpacity(0.6), // Fondo oscuro para el texto
              padding: EdgeInsets.all(16.0),
              child: Text(
                'EXTREMYS',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
