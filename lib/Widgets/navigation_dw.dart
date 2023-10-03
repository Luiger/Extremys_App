import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/navigation_item.dart';
import '../provider/navigation_provider.dart';

class NavigationDW extends StatelessWidget {
  static final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) => Drawer(
        child: Container(
          color: Color.fromARGB(255, 252, 127, 125),
          child: ListView(
            children: <Widget>[
              Container(
                padding: padding,
                child: Column(
                  children: [
                    const SizedBox(height: 24),
                    buildMenuItem(
                      context,
                      item: NavigationItem.people,
                      text: 'Amigos',
                      icon: Icons.people,
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      context,
                      item: NavigationItem.favourites,
                      text: 'Favoritos',
                      icon: Icons.favorite_border,
                    ),
                    const SizedBox(height: 24),
                    Divider(color: Colors.white70),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      context,
                      item: NavigationItem.notifications,
                      text: 'Notificaciones',
                      icon: Icons.notifications_outlined,
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      context,
                      item: NavigationItem.logout,
                      text: 'Logout',
                      icon: Icons.logout_rounded,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );

  Widget buildMenuItem(
    BuildContext context, {
    required NavigationItem item,
    required String text,
    required IconData icon,
  }) {
    final provider = Provider.of<NavigationProvider>(context);
    final currentItem = provider.navigationItem;
    final isSelected = item == currentItem;

    final color = const Color.fromARGB(255, 0, 0, 0);

    return Material(
      color: Colors.transparent,
      child: ListTile(
        selected: isSelected,
        selectedTileColor: Colors.white24,
        leading: Icon(icon, color: color),
        title: Text(text, style: TextStyle(color: color, fontSize: 16)),
        onTap: () => selectItem(context, item),
      ),
    );
  }

  void selectItem(BuildContext context, NavigationItem item) {
    final provider = Provider.of<NavigationProvider>(context, listen: false);
    provider.setNavigationItem(item);
  }
}
