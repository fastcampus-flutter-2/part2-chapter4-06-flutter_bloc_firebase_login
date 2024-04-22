import 'package:flutter/widgets.dart';
import 'package:flutter_bloc_firebase_login_final/app/app.dart';
import 'package:flutter_bloc_firebase_login_final/home/view/home_page.dart';
import 'package:flutter_bloc_firebase_login_final/login/login.dart';

List<Page<dynamic>> onGenerateAppViewPages(
  AppStatus state,
  List<Page<dynamic>> pages,
) {
  switch (state) {
    case AppStatus.authenticated:
      return [HomePage.page()];
    case AppStatus.unauthenticated:
      return [LoginPage.page()];
  }
}
