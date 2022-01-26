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
        fontSize: 36,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        height: 0.99,
        shadows: [
          Shadow(
            blurRadius: 3,
            color: Colors.black12,
          )
        ]);
TextStyle goButtonTitleStyle() => const TextStyle(
      fontFamily: 'Bungee',
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );

TextStyle bottomsheetBarTitleStyle() => const TextStyle(
        color: Colors.white,
        fontFamily: 'DeliusSwash',
        fontSize: 22,
        fontWeight: FontWeight.bold,
        shadows: [
          Shadow(
            color: Colors.black12,
            blurRadius: 30,
          )
        ]);

TextStyle zodiacSignTextStyle() => TextStyle(
      color: Colors.grey.shade400,
      fontSize: 20,
      fontFamily: 'DMMono',
    );
TextStyle dobTextStyle() => TextStyle(
      color: Colors.grey.shade400,
      fontSize: 16,
      fontFamily: 'DMMono',
      height: 0.5,
    );

TextStyle zodiacSentanceTitleStyle() => const TextStyle(
        fontFamily: 'Bungee',
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        shadows: [
          Shadow(
            color: Colors.black26,
            blurRadius: 30,
          )
        ]);
TextStyle anotherDateButtonTextStyle() => TextStyle(
        color: Colors.grey.shade100,
        fontSize: 20,
        fontFamily: 'DMMono',
        shadows: [
          Shadow(
            color: Colors.black26,
            blurRadius: 30,
          )
        ]);
