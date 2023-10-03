import 'package:flutter/material.dart';

import '../Widgets/navigation_dw.dart';

class LogoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDW(),
        appBar: AppBar(
          title: Text('Logout'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
      );
}
