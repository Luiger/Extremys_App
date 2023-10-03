import 'package:flutter/material.dart';
import 'Widgets/navigation_dw.dart';

class principalPage extends StatelessWidget {
  const principalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // Agrega esta línea para quitar la cinta "Debug"
      home: _principalPageState(),
    );
  }
}

class _principalPageState extends StatefulWidget {
  const _principalPageState({super.key});

  @override
  State<_principalPageState> createState() => _PrincipalExampleState();
}

class _PrincipalExampleState extends State<_principalPageState> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar ...... la barra Superior

      drawer: NavigationDW(),
      appBar: AppBar(
        title: const Text('Extremys'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 250, 99, 96),
      ),

      //NavegationBar .... la barra inferior

      bottomNavigationBar: NavigationBar(
        backgroundColor: Color(0xFFE6AFAE),
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.amber[800],
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Inicio',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.add_circle,
              size: 80,
              color: Color(0xFFFF4B3A),
            ),
            label: '',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.people),
            icon: Icon(Icons.people_outlined),
            label: 'Amigos',
          ),
        ],
      ),
      body: <Widget>[
        Container(
          color: Colors.red,
          alignment: Alignment.center,
          child: const Text('Page 1'),
        ),
        Container(
          color: Colors.green,
          alignment: Alignment.center,
          child: const Text('Page 2'),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text('Page 3'),
        ),
      ][currentPageIndex],
    );
  }
}
