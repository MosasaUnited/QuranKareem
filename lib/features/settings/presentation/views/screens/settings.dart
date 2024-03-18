import 'package:flutter/material.dart';
import 'package:quraan_app/core/constants/constant.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Settings',
          ),
          backgroundColor: const Color.fromARGB(255, 56, 115, 59),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Text(
                    'Arabic Font Size',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Slider(
                    value: arabicFontSize,
                    min: 20,
                    max: 40,
                    onChanged: (value) {
                      setState(() {
                        arabicFontSize = value;
                      });
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Divider(),
                  ),
                  const Text(
                    'Mushaf Mode Font Size',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Slider(
                    value: mushufFontSize,
                    min: 20,
                    max: 50,
                    onChanged: (value) {
                      setState(() {
                        mushufFontSize = value;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "‏ ‏‏ ‏‏‏‏ ‏‏‏‏‏‏ ‏",
                    style: TextStyle(
                        fontFamily: 'quran', fontSize: mushufFontSize),
                    textDirection: TextDirection.rtl,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
