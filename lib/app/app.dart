// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:firebase_auth_bloc/blocs/auth_cubit.dart';
import 'package:firebase_auth_bloc/config/app_routes.dart';
import 'package:firebase_auth_bloc/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final _navigatorKey = GlobalKey<NavigatorState>();

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  static Widget create() {
    return BlocListener<AuthCubit, AuthState>(
      listener: ((context, state) {
        if (state is AuthSignedOut) {
          _navigatorKey.currentState?.pushNamedAndRemoveUntil(
            IntroScreen.routeName,
            (route) => false,
          );
        } else if (state is AuthSignedIn) {
          _navigatorKey.currentState?.pushNamedAndRemoveUntil(
            HomeScreen.routeName,
            (route) => false,
          );
        }
      }),
      child: const App(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: _navigatorKey,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.indigo),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: Colors.indigo,
        ),
      ),
      onGenerateRoute: AppRoute.onGenerateRoute,
      initialRoute: SplashScreen.routeName,
    );
  }
}
