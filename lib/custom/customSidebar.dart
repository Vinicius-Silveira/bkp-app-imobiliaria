// ignore_for_file: file_names
import 'package:flutter/material.dart';

class CustomSidebar extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 30);

  const CustomSidebar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: const Color.fromRGBO(50, 75, 205, 1),
        child: ListView(
          padding: padding,
          children: <Widget>[
            buildSidebarIcon(
              text: 'Quem somos',
              icon: Icons.people_alt,
            ),
            buildSidebarIcon(
              text: 'Trabalhe conosco',
              icon: Icons.people_alt,
            ),
            buildSidebarIcon(
              text: 'Agende uma visita',
              icon: Icons.people_alt,
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildSidebarIcon({
  required String text,
  required IconData icon,
}) {
  const color = Colors.white;

  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(text, style: const TextStyle(color: color)),
    onTap: () {},
  );
}
