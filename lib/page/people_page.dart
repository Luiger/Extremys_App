import 'package:flutter/material.dart';

import '../Widgets/navigation_dw.dart';

class PeoplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDW(),
        appBar: AppBar(
          title: Text('Amigos'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
      );
}
