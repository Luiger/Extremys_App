import 'package:flutter/material.dart';

import '../Widgets/navigation_dw.dart';

class FavouritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDW(),
        appBar: AppBar(
          title: Text('Favoritos'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
      );
}
