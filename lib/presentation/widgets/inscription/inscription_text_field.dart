import 'package:flutter/material.dart';

class InscriptionTextField extends StatelessWidget {
  final int index;
  final Function(String)? onChanged;
  final double width;

  const InscriptionTextField({
    super.key,
    required this.index,
    this.onChanged,
    this.width = 200,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        width: width,
        child: TextFormField(
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            border: InputBorder.none,
            icon: const Icon(Icons.star),
            iconColor: Colors.white,
            hintText: "JUGADOR $index",
          ),
          style: const TextStyle(color: Colors.white),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
