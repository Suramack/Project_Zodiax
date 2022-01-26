import 'package:flutter/material.dart';

TextStyle cupertinoTextStyle() => TextStyle(
        color: Colors.grey.shade100,
        fontSize: 22,
        fontFamily: 'DMMono',
        shadows: const [
          Shadow(
            blurRadius: 3,
            color: Colors.black12,
          )
        ]);
