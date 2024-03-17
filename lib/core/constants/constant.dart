import 'package:shared_preferences/shared_preferences.dart';

String arabicFonts = 'quran';

double arabicFontSize = 28;
double mushufFontSize = 40;

Uri quranAppUrl = Uri.parse('www.google.com');

Future saveSetting() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setInt('arabicFontSize', arabicFontSize.toInt());
  await prefs.setInt('mushufFontSize', mushufFontSize.toInt());
}

Future getSettings() async {
  try {
    final prefs = await SharedPreferences.getInstance();
    arabicFontSize = prefs.getInt('arabicFontSize')!.toDouble();
    mushufFontSize = prefs.getInt('mushufFontSize')!.toDouble();
  } catch (_) {
    arabicFontSize = 28;
    mushufFontSize = 40;
  }
}
