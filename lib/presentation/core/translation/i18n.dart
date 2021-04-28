// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, prefer_single_quotes

import 'dart:async';

import 'package:flutter/widgets.dart';

/// A class generated by flappy_translator package containing localized strings
class I18n {
  static String get appTitle => _getText('appTitle');

  static String get settings => _getText('settings');

  static String get login => _getText('login');

  static String get invalidLogin => _getText('invalidLogin');

  static String get password => _getText('password');

  static String get showPassword => _getText('showPassword');

  static String get invalidPassword => _getText('invalidPassword');

  static String get shortPassword => _getText('shortPassword');

  static String get nickName => _getText('nickName');

  static String get invalidNickName => _getText('invalidNickName');

  static String get name => _getText('name');

  static String get invalidName => _getText('invalidName');

  static String get surname => _getText('surname');

  static String get invalidSurname => _getText('invalidSurname');

  static String get signIn => _getText('signIn');

  static String get signInWithGoogle => _getText('signInWithGoogle');

  static String get proxySettings => _getText('proxySettings');

  static String get domain => _getText('domain');

  static String get url => _getText('url');

  static String get save => _getText('save');

  static String get registration => _getText('registration');

  static String get register => _getText('register');

  static String get eMail => _getText('eMail');

  static String get invalidEMail => _getText('invalidEMail');

  static String get next => _getText('next');

  static String get unexpectedError => _getText('unexpectedError');

  static String get noConnectionError => _getText('noConnectionError');

  static String get invalidEmailAndPasswordCombinationError =>
      _getText('invalidEmailAndPasswordCombinationError');

  static String get userAlreadyExists => _getText('userAlreadyExists');

  static String get serverError => _getText('serverError');

  static String get rooms => _getText('rooms');

  static String get createNewRoom => _getText('createNewRoom');

  static String get creatingNewRoom => _getText('creatingNewRoom');

  static String get roomCreated => _getText('roomCreated');

  static String get profile => _getText('profile');

  static String get calendar => _getText('calendar');

  static String get toMainMenu => _getText('toMainMenu');

  static String get conferenceOnAir => _getText('conferenceOnAir');

  static String get conferenceEnded => _getText('conferenceEnded');

  static String get conferenceLoading => _getText('conferenceLoading');

  static String get couldNotEnterConference =>
      _getText('couldNotEnterConference');

  static String get join => _getText('join');

  static String get signOut => _getText('signOut');

  static late Map<String, String> _localizedValues;

  static const _enValues = {
    'appTitle': 'Mocsi',
    'settings': 'Settings',
    'login': 'Login',
    'invalidLogin': 'Invalid Login',
    'password': 'Password',
    'showPassword': 'Show Password',
    'invalidPassword': 'Invalid Password',
    'shortPassword': 'Short Password',
    'nickName': 'Nickname',
    'invalidNickName': 'Invalid Nickame',
    'name': 'Name',
    'invalidName': 'Invalid Name',
    'surname': 'Surname',
    'invalidSurname': 'Invalid Surname',
    'signIn': 'Sign in',
    'signInWithGoogle': 'Sign in with Google',
    'proxySettings': 'Proxy settings',
    'domain': 'Domain',
    'url': 'URL',
    'save': 'Save',
    'registration': 'Registration',
    'register': 'Register',
    'eMail': 'E-mail',
    'invalidEMail': 'Invalid E-mail',
    'next': 'Next',
    'unexpectedError': 'Unexpected Error',
    'noConnectionError': 'Check your internet connection',
    'invalidEmailAndPasswordCombinationError':
        'Invalid email and password combination',
    'userAlreadyExists': 'User already exists',
    'serverError': 'Server Error',
    'rooms': 'Rooms',
    'createNewRoom': 'Create new room',
    'creatingNewRoom': 'Creating new room',
    'roomCreated': 'New room has been created',
    'profile': 'Profile',
    'calendar': 'Calendar',
    'toMainMenu': 'To main menu',
    'conferenceOnAir': 'Conference is on air',
    'conferenceEnded': 'Conference has ended',
    'conferenceLoading': 'Conference is loading...',
    'couldNotEnterConference': 'Could not enter a conference',
    'join': 'Join',
    'signOut': 'Sign out',
  };

  static const _ruValues = {
    'appTitle': 'Mocsi',
    'settings': 'Настройки',
    'login': 'Логин',
    'invalidLogin': 'Неверный логин',
    'password': 'Пароль',
    'showPassword': 'Показать пароль',
    'invalidPassword': 'Неверный пароль',
    'shortPassword': 'Короткий пароль',
    'nickName': 'Логин',
    'invalidNickName': 'Неверный логин',
    'name': 'Имя',
    'invalidName': 'Неверное имя',
    'surname': 'Фамилия',
    'invalidSurname': 'Неверная фамилия',
    'signIn': 'Вход',
    'signInWithGoogle': 'Вход через Google',
    'proxySettings': 'Настройка прокси',
    'domain': 'Домен',
    'url': 'URL',
    'save': 'Сохранить',
    'registration': 'Регистрация',
    'register': 'Зарегистрироваться',
    'eMail': 'Электронная почта',
    'invalidEMail': 'Неверная электронная почта',
    'next': 'Далее',
    'unexpectedError': 'Непредвиденная ошибка',
    'noConnectionError': 'Проверьте ваше интернет-соединение',
    'invalidEmailAndPasswordCombinationError':
        'Неверная комбинация адреса электронной почты и пароля',
    'userAlreadyExists': 'Такой пользователь уже есть',
    'serverError': 'Ошибка сервера',
    'rooms': 'Комнаты',
    'createNewRoom': 'Создать новую комнату',
    'creatingNewRoom': 'Создание новой комнаты',
    'roomCreated': 'Создана новая комната',
    'profile': 'Профиль',
    'calendar': 'Календарь',
    'toMainMenu': 'Возврат в главное меню',
    'conferenceOnAir': 'Конференция идёт',
    'conferenceEnded': 'Конференция закончилась',
    'conferenceLoading': 'Конференция прогружается...',
    'couldNotEnterConference': 'Неудачная попытка входа в конференцию',
    'join': 'Присоединиться',
    'signOut': 'Выйти из аккаунта',
  };

  static const _allValues = {
    'en': _enValues,
    'ru': _ruValues,
  };

  I18n(Locale locale) {
    _locale = locale;
    _localizedValues = {};
  }

  static late Locale _locale;

  static String _getText(String key) =>
      _localizedValues[key] ?? '** $key not found';

  static Locale get currentLocale => _locale;

  static String get currentLanguage => _locale.languageCode;

  static Future<I18n> load(Locale locale) async {
    final translations = I18n(locale);
    _localizedValues = _allValues[locale.toString()]!;
    return translations;
  }
}

class I18nDelegate extends LocalizationsDelegate<I18n> {
  const I18nDelegate();

  static final Set<Locale> supportedLocals = {
    Locale('en'),
    Locale('ru'),
  };

  @override
  bool isSupported(Locale locale) => supportedLocals.contains(locale);

  @override
  Future<I18n> load(Locale locale) => I18n.load(locale);

  @override
  bool shouldReload(I18nDelegate old) => false;
}
