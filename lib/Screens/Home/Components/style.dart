import 'package:flutter_neumorphic/flutter_neumorphic.dart';

TextStyle homeappBarTitleStyle() => const TextStyle(
        fontFamily: 'DeliusSwash',
        fontSize: 22,
        fontWeight: FontWeight.bold,
        shadows: [
          Shadow(
            color: Colors.black12,
            blurRadius: 30,
          )
        ]);

TextStyle selectTitleStyle() => TextStyle(
      fontFamily: 'Kurale',
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.grey.shade100,
    );
TextStyle dobTitleStyle() => const TextStyle(
      fontFamily: 'peddana',
      fontSize: 26,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
TextStyle goButtonTitleStyle() => const TextStyle(
      fontFamily: 'Bungee',
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
