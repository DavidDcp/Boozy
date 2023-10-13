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

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('/images/Inicio.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Boozy"),
          const Text("La Ruleta del Atrevimiento ha llegado !"),
          const Text("Gira y desafía los límites !"),
          ElevatedButton(onPressed: () {}, child: const Text("Jugar")),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: items.map((i) => IconButton(onPressed: () {}, icon: Icon(i))).toList(),
          )
        ],
      ),
    );
  }
}
