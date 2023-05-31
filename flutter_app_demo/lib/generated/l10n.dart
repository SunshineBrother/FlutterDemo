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
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
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
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Home`
  String get tab_demo {
    return Intl.message(
      'Home',
      name: 'tab_demo',
      desc: '',
      args: [],
    );
  }

  /// `Base Widget`
  String get base_widget {
    return Intl.message(
      'Base Widget',
      name: 'base_widget',
      desc: '',
      args: [],
    );
  }

  /// `Layout Widget`
  String get layout_widget {
    return Intl.message(
      'Layout Widget',
      name: 'layout_widget',
      desc: '',
      args: [],
    );
  }

  /// `Interactive Event`
  String get interactive_event {
    return Intl.message(
      'Interactive Event',
      name: 'interactive_event',
      desc: '',
      args: [],
    );
  }

  /// `Scroll Widget`
  String get scroll_widget {
    return Intl.message(
      'Scroll Widget',
      name: 'scroll_widget',
      desc: '',
      args: [],
    );
  }

  /// `Router And Navigation`
  String get router_navigation {
    return Intl.message(
      'Router And Navigation',
      name: 'router_navigation',
      desc: '',
      args: [],
    );
  }

  /// `Transfer Fata`
  String get transfer_data {
    return Intl.message(
      'Transfer Fata',
      name: 'transfer_data',
      desc: '',
      args: [],
    );
  }

  /// `Widget Life Cycle`
  String get widget_life_cycle {
    return Intl.message(
      'Widget Life Cycle',
      name: 'widget_life_cycle',
      desc: '',
      args: [],
    );
  }

  /// `Future Asyn`
  String get future_asyn {
    return Intl.message(
      'Future Asyn',
      name: 'future_asyn',
      desc: '',
      args: [],
    );
  }

  /// `Flutter Native`
  String get future_native {
    return Intl.message(
      'Flutter Native',
      name: 'future_native',
      desc: '',
      args: [],
    );
  }

  /// `Flutter（Provider）`
  String get future_provider {
    return Intl.message(
      'Flutter（Provider）',
      name: 'future_provider',
      desc: '',
      args: [],
    );
  }

  /// `Library Test`
  String get lid_test {
    return Intl.message(
      'Library Test',
      name: 'lid_test',
      desc: '',
      args: [],
    );
  }

  /// `switch the language`
  String get switch_lan {
    return Intl.message(
      'switch the language',
      name: 'switch_lan',
      desc: '',
      args: [],
    );
  }

  /// `login`
  String get login {
    return Intl.message(
      'login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `UserInfo`
  String get personal_center {
    return Intl.message(
      'UserInfo',
      name: 'personal_center',
      desc: '',
      args: [],
    );
  }

  /// `showDialog`
  String get show_dialog {
    return Intl.message(
      'showDialog',
      name: 'show_dialog',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the '' key
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'zh'),
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
