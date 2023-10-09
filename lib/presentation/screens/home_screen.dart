import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeBody(),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {

    const List<IconData> items = [Icons.people, Icons.replay, Icons.list_alt];

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Boozy"),
        const Text("Esot ilin rodador"),
        ElevatedButton(onPressed: () {}, child: const Text("¡Jugar!")),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: items.map((i) => IconButton(onPressed: () {}, icon: Icon(i))).toList(),
        )
      ],
    );
  }
}
