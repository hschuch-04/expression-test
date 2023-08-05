import 'package:flutter/material.dart';

// Reusable Drawer themed
class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      children: [
        DrawerHeader(
          decoration: BoxDecoration(color: Colors.blue[900]),
          child: Text(
            'Menu',
            style: TextStyle(fontWeight: FontWeight.bold ,color: Colors.white)),
        ),
        ListTile(
            title: Text('Home'),
            onTap: () {
              if (ModalRoute.of(context)?.settings.name != '/') {
                Navigator.popUntil(context, ModalRoute.withName('/'));
              }
            }),
        ListTile(
            title: Text('About'),
            onTap: () => Navigator.pushNamed(context, '/about'),
        )
      ],
    );
  }
}
