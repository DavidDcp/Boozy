import 'package:flutter/material.dart';

class UsuariosInicio extends StatelessWidget {
  const UsuariosInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: UserBody(),
    );
  }
}
class UserBody extends StatelessWidget {
  const UserBody({super.key});

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: items.map((i) =>
                IconButton(onPressed: () {}, icon: Icon(i))).toList(),
          ),
          const Text("JUGADORES"),
          Container(
            child: const Text(" Lista de jugadores"),
            height: 300,
            width: 350,

          decoration: BoxDecoration(
          color: Colors.lightBlueAccent,

          borderRadius: BorderRadius.circular(20),
          ),
          ),
          SizedBox(height: 20),
          ElevatedButton(onPressed: () {}, child: const Text("Empezar")),
        ],
      ),
    );
  }
}




