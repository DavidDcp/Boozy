import 'package:flutter/material.dart';

class ReglasScreen extends StatelessWidget {
  const ReglasScreen({super.key});
  @override
  Widget build(BuildContext context) {
    const List<IconData> items = [Icons.people, Icons.replay, Icons.list_alt];
    // TODO: implement build
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('/images/RestoApp.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Expanded(
                child: ListView(
                children: [
                  Text(
                    "Reglas del Juego",
                    style: TextStyle(fontFamily: 'Righteous', fontSize: 55.0, fontWeight: FontWeight.normal, color: Colors.white,decoration:TextDecoration.none), textAlign: TextAlign.center,
                  ),Text(" "),Text(
                    "Gira la ruleta:Los jugadores se turnan para girar la ruleta y enfrentar el desafío que les toque.",
                    style: TextStyle(fontFamily: 'Montserrat', fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white,decoration:TextDecoration.none), textAlign: TextAlign.center,
                  ),Text(" "),Text(
                    "Cumplir el desafìo: Cuando un jugador gira la ruleta,debe cumplir el desafío que aparece.Los desafios pueden ser desde contar una anécdota embarazosa hasta realizar una tarea atrevida.",
                    style: TextStyle(fontFamily: 'Montserrat', fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white, decoration:TextDecoration.none),textAlign: TextAlign.center,
                  ),Text(" "),Text(
                    "Elección o Castigo: En algunos casos,los jugadores pueden tener la opción de elegir entre dos desafíos o aceptar un castigo (Por ejemplo, tomar un trago si no quieren realizar el desafío).",
                    style: TextStyle(fontFamily: 'Montserrat', fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white, decoration:TextDecoration.none),textAlign: TextAlign.center,
                  ),Text(" "),Text(
                    "Tiempo límite: Establece un tiempo límite para cada desafío. Si un jugador no lo completa dentro del tiempo asignado, puede recibir un castigo adicional.",
                    style: TextStyle(fontFamily: 'Montserrat', fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white, decoration:TextDecoration.none), textAlign: TextAlign.center,
                  ),Text(" "),Text(
                    "Castigos Creativos: Diseña castigos divertidos y creativos para aquellos que no completen los desafios. Esto puede incluir, cantar una canción embarazosa o hacer una imitación cómica.",
                    style: TextStyle(fontFamily: 'Montserrat', fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white,decoration:TextDecoration.none), textAlign: TextAlign.center,
                  ),Text(" "),Text(
                    "Ganador y Premio: Al final del juego, el jugador con más puntos (obtenidos por completar desafíos y recibir votos de la audiencia) puede recibir un premio o un reconocimiento especial.",
                    style: TextStyle(fontFamily: 'Montserrat', fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white ,decoration:TextDecoration.none), textAlign: TextAlign.center,
                  ),Text(" "),Text(
                    "Respeto y límites: Asegúrate de que todos los jugadores se sientan cómodos y respetados. Si alguien no quiere realizar un desafío específico, respeta su decisión y permite que el juego continúe.",
                    style: TextStyle(fontFamily: 'Montserrat', fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white, decoration: TextDecoration.none), textAlign: TextAlign.center,
                  ),
                ])
      )
        ),
    );
  }
}