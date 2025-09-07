// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `خطأ`
  String get error {
    return Intl.message('خطأ', name: 'error', desc: '', args: []);
  }

  /// `الرئيسيـة`
  String get home {
    return Intl.message('الرئيسيـة', name: 'home', desc: '', args: []);
  }

  /// `عني`
  String get aboutMe {
    return Intl.message('عني', name: 'aboutMe', desc: '', args: []);
  }

  /// `مشاريعي`
  String get myProjects {
    return Intl.message('مشاريعي', name: 'myProjects', desc: '', args: []);
  }

  /// `السيرة الذاتية`
  String get resume {
    return Intl.message('السيرة الذاتية', name: 'resume', desc: '', args: []);
  }

  /// `داكن`
  String get dark {
    return Intl.message('داكن', name: 'dark', desc: '', args: []);
  }

  /// `فاتح`
  String get light {
    return Intl.message('فاتح', name: 'light', desc: '', args: []);
  }

  /// `الشعار`
  String get logo {
    return Intl.message('الشعار', name: 'logo', desc: '', args: []);
  }

  /// `وظفني`
  String get hireMe {
    return Intl.message('وظفني', name: 'hireMe', desc: '', args: []);
  }

  /// `تواصل معي`
  String get contactMe {
    return Intl.message('تواصل معي', name: 'contactMe', desc: '', args: []);
  }

  /// `اهلا, انا`
  String get hi {
    return Intl.message('اهلا, انا', name: 'hi', desc: '', args: []);
  }

  /// `عبدالرحمن امير`
  String get AbdoAmir {
    return Intl.message('عبدالرحمن امير', name: 'AbdoAmir', desc: '', args: []);
  }

  /// `مطور فلاتر`
  String get role {
    return Intl.message('مطور فلاتر', name: 'role', desc: '', args: []);
  }

  /// `تحميل السيرة الذاتية`
  String get downloadCV {
    return Intl.message(
      'تحميل السيرة الذاتية',
      name: 'downloadCV',
      desc: '',
      args: [],
    );
  }

  /// `خبرة`
  String get experience {
    return Intl.message('خبرة', name: 'experience', desc: '', args: []);
  }

  /// `مشاريع`
  String get projects {
    return Intl.message('مشاريع', name: 'projects', desc: '', args: []);
  }

  /// `عملاء سعيدون`
  String get happyClients {
    return Intl.message(
      'عملاء سعيدون',
      name: 'happyClients',
      desc: '',
      args: [],
    );
  }

}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ar'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
