import 'package:flutter/widgets.dart';
import 'package:sneakers_track/ui/home/view/home_page.dart';
import 'package:sneakers_track/ui/splash_screen/splash_screen.dart';

import '../../ui/sign_in/view/sign_in_page.dart';
import '../bloc/app_bloc.dart';

List<Page<dynamic>> onGenerateAppViewPages(
  AppStatus state,
  List<Page<dynamic>> pages,
) {
  switch (state) {
    case AppStatus.authenticated:
      return [HomePage.page()];
    case AppStatus.unauthenticated:
      return [SplashScreen.page()];
  }
}
