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
          Text(
            "¡La Ruleta del Atrevimiento ha llegado Gira y desafía los límites!",
            style: TextStyle(fontFamily: 'Montserrat', fontSize: 18.0, fontWeight: FontWeight.normal, color: Colors.white), textAlign: TextAlign.center,
          ),
          Text(
            "Boozy",
            style: TextStyle(fontFamily: 'Righteous', fontSize: 50, fontWeight: FontWeight.normal, color: Colors.white), textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Jugar",
              style: TextStyle(fontFamily: 'Righteous', fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.purple),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: items.map((i) => IconButton(onPressed: () {}, icon: Icon(i))).toList(),
          )
        ],
      ),
    );
  }
}
