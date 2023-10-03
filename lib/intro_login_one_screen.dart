import 'package:flutter/material.dart';
import 'package:extremys_app/widgets/widgets.dart';
import 'package:extremys_app/widgets/text_frave.dart';

class IntroLoginOnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        if (details.primaryDelta! < -6)
          Navigator.of(context).pushNamed('getStarted');
      },
      child: Scaffold(
        backgroundColor: Color(0xff2C75DC),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/imagen.jpg'),
              const TextFrave(
                  text: 'Frave Developer',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 27, 20, 20))
            ],
          ),
        ),
      ),
    );
  }
}
