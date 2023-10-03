import 'package:flutter/material.dart';
import '../Widgets/navigation_dw.dart';
import '../data/user.dart';

class HeaderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDW(),
        appBar: AppBar(
          title: Text(name),
          centerTitle: true,
          backgroundColor: Colors.pink,
        ),
        body: Image.network(
          urlImage,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
      );
}
