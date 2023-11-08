import 'package:boozy/infrastructure/models/rule_local.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'rules_provider.g.dart';

@riverpod
List<RuleLocal> rules(RulesRef ref) {
  return [
    RuleLocal(
      title: "Gira la Ruleta",
      description:
          "Los jugadores se turnan para girar la ruleta y enfrentar el desafío que les toque.",
    ),
    RuleLocal(
      title: "Cumplir el Desafío",
      description:
          "Cuando un jugador gira la ruleta, debe cumplir el desafío que aparece. Los desafíos pueden ser desde contar una anécdota embarazosa hasta realizar una tarea atrevida.",
      svgUrl: "assets/images/icons/fire.svg",
    ),
    RuleLocal(
      title: "Elección o Castigo",
      description:
          "En algunos casos, los jugadores pueden tener la opción de elegir entre dos desafíos o aceptar un castigo (por ejemplo, tomar un trago si no quieren realizar el desafío).",
    ),
    RuleLocal(
      title: "Voto de la Audiencia",
      description:
          "Si un desafío es particularmente entretenido o atrevido, los demás jugadores pueden votar para darle puntos al jugador que lo realizó.",
      svgUrl: "assets/images/icons/emoji.svg",
    ),
    RuleLocal(
      title: "Ganador y Premio",
      description:
          "Al final del juego, el jugador con más puntos (obtenidos por completar desafíos y recibir votos de la audiencia) puede recibir un premio o un reconocimiento especial.",
    ),
    RuleLocal(
      title: "Tiempo Límite",
      description:
          "Establece un tiempo límite para cada desafío. Si un jugador no lo completa dentro del tiempo asignado, puede recibir un castigo adicional.",
      svgUrl: "assets/images/icons/shot.svg",
    ),
    RuleLocal(
      title: "Castigos Creativos",
      description:
          "Diseña castigos divertidos y creativos para aquellos que no completen los desafíos. Esto puede incluir cantar una canción embarazosa o hacer una imitación cómica.",
    ),
    RuleLocal(
      title: "Respeto y Límites",
      description:
          "Asegúrate de que todos los jugadores se sientan cómodos y respetados. Si alguien no quiere realizar un desafío específico, respeta su decisión y permite que el juego continúe.",
      svgUrl: "assets/images/icons/question.svg",
    ),
  ];
}
