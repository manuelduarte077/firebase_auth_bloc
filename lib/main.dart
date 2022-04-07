import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:firebase_auth_bloc/blocs/auth_cubit.dart';
import 'package:firebase_auth_bloc/firebase_options/firebase_options.dart';
import 'package:firebase_auth_bloc/repository/implementations/auth_repository.dart';
import 'package:firebase_auth_bloc/app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  final authCubit = AuthCubit(AuthRepository());

  runApp(
    BlocProvider(
      create: (_) => authCubit..init(),
      child: App.create(),
    ),
  );
}
