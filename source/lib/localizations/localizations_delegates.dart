import 'package:flutter/material.dart';
import 'package:task/localizations/language/en.dart';
import 'package:task/localizations/language/es.dart';
import 'package:task/localizations/language/all.dart';

class AppLocalizationsDelegate extends LocalizationsDelegate<Languages> {

  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      ['en', 'es'].contains(locale.languageCode);

  @override
  Future<Languages> load(Locale locale) => _load(locale);

  static Future<Languages> _load(Locale locale) async {
    switch (locale.languageCode) {
      case 'en':
        return LanguageEN();
      case 'es':
        return LanguageES();
      default:
        return LanguageEN();
    }
  }

  @override
  bool shouldReload(LocalizationsDelegate<Languages> old) => false;
}