import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'package:intl/intl.dart';
import 'package:zodiax/Screens/Home/Components/style.dart';

List<String> zodiacSignList = [
  'Aries',
  'Taurus',
  'Gemini',
  'Cancer',
  'Leo',
  'Virgo',
  'Libra',
  'Scorpio',
  'Sagittarius',
  'Capricorn',
  'Aquarius',
  'Pisces',
];
List<String> zodiacSentance = [
  'Gets angry, then forgets why they were angry, Thinks everything is a game they can win',
  'All or nothing, no in between, Wears the same outfit every day',
  'Uses humor as a crutch, Could talk to a brick wall, Arguments as flirting',
  'Forgives but never forgets, Only has one boundary, but it is very firm',
  'Exudes warmth and creativity, A little bit vain, Really big personality',
  'Has a quick fix for everything, Judgmental, but with good intentions',
  'Really good aesthetics, Conflict avoidant, Sees every side, Prone to fantasy',
  "OK with uncomfortable silence, Can't be sure if they're serious or joking",
  'Forms opinions off of pure emotion, Obsessed with self-improvement',
  'The responsible friend, Motivated by duty, Takes a while to warm up to people',
  "Doesn’t ‘do’ feelings, just concepts, Actually believes in conspiracy theories",
  'Thinks everything is a sign, Can’t remember if they dreamt it or it actually happened',
];

List<List<DateTime>> betweenDates = [
  [DateTime(0, 03, 21), DateTime(0, 04, 19)],
  [DateTime(0, 04, 20), DateTime(0, 05, 20)],
  [DateTime(0, 05, 21), DateTime(0, 06, 20)],
  [DateTime(0, 06, 21), DateTime(0, 07, 22)],
  [DateTime(0, 07, 23), DateTime(0, 08, 22)],
  [DateTime(0, 08, 23), DateTime(0, 09, 22)],
  [DateTime(0, 09, 23), DateTime(0, 10, 22)],
  [DateTime(0, 10, 23), DateTime(0, 11, 21)],
  [DateTime(0, 11, 22), DateTime(0, 12, 21)],
  [DateTime(0, 12, 22), DateTime(0, 01, 19)],
  [DateTime(0, 01, 20), DateTime(0, 02, 18)],
  [DateTime(0, 02, 19), DateTime(0, 03, 20)]
];
List<String> zodiacImageList = [
  'aries.png',
  'taurus.png',
  'gemini.png',
  'cancer.png',
  'leo.png',
  'virgo.png',
  'libra.png',
  'scorpeo.png',
  'sagittarius.png',
  'capricorn.png',
  'aquarius.png',
  'pisces.png'
];

zodiacBottomSheet(BuildContext context, DateTime selectedDate) {
  int month = selectedDate.month;
  int day = selectedDate.day;
  int year = 0;
  DateTime dob = DateTime(year, month, day);
  int? index;
  bool changed = false;
  var dateDormate = DateFormat('d-M-yyyy');
  var formatedDOB = dateDormate.format(selectedDate);
  for (int j = 0; j < betweenDates.length; j++) {
    for (int i = 0; i < 2; i++) {
      if (betweenDates[j][i] == dob ||
          betweenDates[j][0].isBefore(dob) && betweenDates[j][1].isAfter(dob) ||
          betweenDates[j][1] == dob) {
        index = j;
        changed = true;
        break;
      } else if (changed == false) {
        index = 9;
      }
    }
  }

  Size screenSize = MediaQuery.of(context).size;
  showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) => Container(
            height: 600,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(30),
              ),
            ),
            child: SizedBox(
              width: 100,
              height: 300,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Container(
                        width: screenSize.width,
                        height: 55,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xffad73ff),
                              Color(0xffdbaeff),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3,
                              color: Colors.grey.shade600,
                            )
                          ],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30)),
                        ),
                        child: Center(
                            child: Text(
                          'Your Zodiac Sign',
                          style: bottomsheetBarTitleStyle(),
                        )),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        width: 150,
                        height: 150,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.shade100,
                            border: Border.fromBorderSide(
                              BorderSide(
                                color: Colors.black.withOpacity(.1),
                              ),
                            ),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 1,
                                  color: Colors.grey.withOpacity(0.5)),
                            ]),
                        child: Center(
                            child: Image.asset(
                                      'images/' + zodiacImageList[index!],
                                    ) !=
                                    null
                                ? Image.asset(
                                    'images/' + zodiacImageList[index])
                                : const LinearProgressIndicator()),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        zodiacSignList[index],
                        style: zodiacSignTextStyle(),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        formatedDOB,
                        style: dobTextStyle(),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '"' + zodiacSentance[index] + '"',
                        maxLines: 5,
                        style: zodiacSentanceTitleStyle(),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: 200,
                        height: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100)),
                        child: NeumorphicButton(
                          onPressed: () async {
                            await Future.delayed(
                                const Duration(milliseconds: 250));
                            Navigator.pop(context);
                          },
                          style: NeumorphicStyle(
                            color: const Color(0xffdbaeff),
                            boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(100),
                            ),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                              size: 26,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
      // ),
      );
}
