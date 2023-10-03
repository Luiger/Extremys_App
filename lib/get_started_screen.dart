import 'package:extremys_app/login_ten_screen.dart';
import 'package:flutter/material.dart';
import 'package:extremys_app/widgets/widgets.dart';
import 'package:extremys_app/widgets/text_frave.dart';

class GetStartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 252, 127, 125),
        body: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DecoratedBox(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/imagen.jpg'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const TextFrave(
                      text: 'Bienvenido a Extremys',
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                  const SizedBox(height: 15),
                  const TextFrave(text: 'Todo lo nuevo en un solo lugar,'),
                  const TextFrave(text: 'entra y te sorprenderás'),
                ],
              ),
            ),
            Positioned(
              left: 10,
              right: 10,
              bottom: 10,
              child: InkWell(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => LoginTenPage(),
                  ),
                ),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color.fromARGB(255, 222, 41, 41)),
                  child: Center(
                      child: TextFrave(
                          text: 'Ingresar',
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500)),
                ),
              ),
            )
          ],
        ));
  }
}
