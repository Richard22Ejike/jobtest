import 'package:flutter/material.dart';



void showSnackBar(BuildContext context, String text){
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(text),
      )
  );
}
class GlobalVariables{
  static const Color greyBackgroundCOlor = Color(0xffebecee);
  static var selectedNavBarColor = Colors.cyan[800]!;
  static const BarColor = Color.fromARGB(255, 222, 222, 223);
  static const primaryColor = Color.fromARGB(255, 103, 160, 184);
  static const secondaryColor = Color.fromARGB(255, 24, 111, 147);
  static const backgroundColor = Colors.white;

  static const List<Map<String, String>> Information = [
    {
      'title': 'Address',
      'body': '14 Ogboko Street, Mgbuoba',
    },
    {
      'title': 'L.G.A',
      'body': 'Obio-Akpor',
    },
    {
      'title': 'Ward',
      'body': 'Obio-Akpor',
    },
    {
      'title': 'Phone',
      'body': '08012345678',
    },
    {
      'title': 'Email',
      'body': '08012345678',
    },
  ];
  static  List<Map<String, dynamic>> Dashboard = [
    {
      'title': '1',
      'body': 'Applications',
      'icon': Icons.my_library_books_outlined,
      'color': Colors.red[100]
    },
    {
      'title': '50,675',
      'body': 'My Businesses',
      'icon': Icons.other_houses_outlined,
      'color': Color.fromARGB(255, 248, 227, 177)
    },
    {
      'title': '12',
      'body': 'Sub-Agents',
      'icon': Icons.people_outline,
      'color': const Color.fromARGB(255, 209, 247, 196)
    },

  ];
}


