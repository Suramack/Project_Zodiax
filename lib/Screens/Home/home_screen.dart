import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:zodiax/Screens/Home/Components/style.dart';
import 'package:zodiax/Screens/Home/zodiac_sign.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime selectedDate = DateTime.now();
  DateTime minDate = DateTime(1800);
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text(
          'ZODIAX.',
          style: homeappBarTitleStyle(),
        ),
        elevation: 0.5,
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xffad73ff),
                Color(0xffce8fff),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ),
      body: Container(
        width: screenSize.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffad73ff),
              Color(0xffdbaeff),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 200),
            Text(
              'select your',
              style: selectTitleStyle(),
            ),
            Text(
              'DATE OF BIRTH',
              style: dobTitleStyle(),
            ),
            const SizedBox(height: 10),
            Container(
              width: screenSize.width * 0.8,
              height: 200,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xffad73ff),
                    Color(0xffdbaeff),
                    Color(0xffdbaeff),
                    Color(0xffad73ff),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 3,
                    color: Colors.black12,
                  )
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,
                initialDateTime: DateTime.now(),
                maximumDate: DateTime.now(),
                minimumDate: minDate,
                onDateTimeChanged: (onDateTimeChanged) {
                  selectedDate = onDateTimeChanged;
                },
              ),
            ),
            SizedBox(height: screenSize.height * 0.15),
            SizedBox(
              width: screenSize.width * 0.7,
              child: NeumorphicButton(
                child: Center(
                  child: Text(
                    'GO',
                    style: goButtonTitleStyle(),
                  ),
                ),
                onPressed: () async {
                  await Future.delayed(const Duration(milliseconds: 250));
                  zodiacBottomSheet(context, selectedDate);
                },
                style: NeumorphicStyle(
                    boxShape: NeumorphicBoxShape.roundRect(
                      BorderRadius.circular(100),
                    ),
                    color: const Color(0xffdbaeff)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
