import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static Page<void> page() => const MaterialPage<void>(child: HomePage());


  @override
  Widget build(BuildContext context) {
    return const Align(
      child: Text('Is connected'),
    );
  }
}
