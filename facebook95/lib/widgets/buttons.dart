import 'package:flutter/material.dart';
import 'package:flutter95/flutter95.dart';

class ButtonWidgets {
  static button95WithText(text) => Button95(
        onTap: () {},
        child: Center(
          child: Text(text),
        ),
      );

  static button95WithIcon(icon, onTap) => Button95(
        onTap: onTap,
        height: 40,
        padding: const EdgeInsets.all(8),
        child: Center(
          child: Icon(icon),
        ),
      );
}
