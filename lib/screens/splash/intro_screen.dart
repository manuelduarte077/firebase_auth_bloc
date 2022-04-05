import 'package:firebase_auth_bloc/widgets/widgets.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  static const String routeName = '/intro';

  static Route route() {
    return MaterialPageRoute<dynamic>(
      settings: const RouteSettings(name: routeName),
      builder: (context) => const IntroScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: IntroPage(),
    );
  }
}
