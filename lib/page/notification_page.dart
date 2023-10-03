import 'package:flutter/material.dart';

import '../Widgets/navigation_dw.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDW(),
        appBar: AppBar(
          title: Text('Notificaciones'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
      );
}
