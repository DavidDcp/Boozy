import 'package:flutter/material.dart';

class ReglasScreen extends StatelessWidget {
  const ReglasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const List<IconData> items = [Icons.people, Icons.replay, Icons.list_alt];
    // TODO: implement build
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('/images/RestoApp.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}