import 'package:flutter/material.dart';

Widget categoreis({text, selected}) {
  return AspectRatio(
    aspectRatio: 2.2 / 1,
    child: Container(
      margin: const EdgeInsets.all(10.0),
      child: Center(
        child: Text(
          "$text",
          style: const TextStyle(
            fontSize: 17,
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: selected ? Colors.grey[200] : Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
    ),
  );
}
