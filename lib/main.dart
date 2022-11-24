import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:sneakers_track/theme.dart';
import 'package:sneakers_track/ui/home/view/home_page.dart';
import 'package:sneakers_track/utils/app_bloc_observer.dart';

import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:bloc/bloc.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: theming,
            debugShowCheckedModeBanner: false,
            home: const HomePage(),
          );
        }
    );
  }
}

