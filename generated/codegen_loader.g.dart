// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "registration": "Registration Form",
  "name": "Full Name",
  "pname": "Please, write your Full Name",
  "phone": "Phone Number",
  "pphone": "Please, write your Phone Number",
  "email": "Email",
  "pemail": "Please, write your Email",
  "country": "Country",
  "pcountry": "Please, select your Country",
  "passwotd": "Password",
  "ppaswword": "Please, Write your Password",
  "send": "Send Form",
  "results": "Registration Results",
  "info": "Your Information",
  "successfully": "Registration completed successfully"
};
static const Map<String,dynamic> kk = {
  "registration": "Регистрация Формасы",
  "name": "Аты-Жөні",
  "pname": "Міндетті түрде Аты-Жөніңізді жазу керек",
  "phone": "Телефон Нөмірі",
  "pphone": "Міндетті түрде Телефон Нөмірін жазу керек",
  "email": "Пошта",
  "pemail": "Міндетті түрде Поштаңызды жазу керек",
  "country": "Мемлекет",
  "pcountry": "Міндетті түрде Мемлекетіңізді жазу керек",
  "passwotd": "Құпия Сөз",
  "ppaswword": "Міндетті түрде Құпия Сөзді жазу керек",
  "send": "Форманы Жіберу",
  "results": "Регистрация Жауаптары",
  "info": "Сіздің Информацияңыз",
  "successfully": "Регистрация сәтті өтті"
};
static const Map<String,dynamic> ru = {
  "registration": "Форма Регистрации",
  "name": "ФИО",
  "pname": "Пожалуйста, напишите свое ФИО",
  "phone": "Номер Телефона",
  "pphone": "Пожалуйста, напишите свой Номер Телефона",
  "email": "Почта",
  "pemail": "Пожалуйста, напишите свою Почту",
  "country": "Страна",
  "pcountry": "Пожалуйста, напишите свою Страну",
  "passwotd": "Пароль",
  "ppaswword": "Пожалуйста, напишите свой Пароль",
  "send": "Отправить Форму",
  "results": "Результаты Регистрации",
  "info": "Ваша Информация ",
  "successfully": "Регистрация прошла успешно"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "kk": kk, "ru": ru};
}
