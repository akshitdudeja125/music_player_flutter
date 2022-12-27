import 'package:flutter/material.dart';

BoxDecoration bgBoxDecoration() {
  return BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Colors.grey.shade900.withOpacity(0.7),
        Colors.grey.shade500.withOpacity(0.7),
      ],
    ),
  );
}
