import 'package:firebase_auth_bloc/blocs/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => const HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: BlocBuilder<AuthCubit, AuthState>(
        buildWhen: (previous, current) => current is AuthSignedIn,
        builder: (_, state) {
          final authUser = (state as AuthSignedIn).user;
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Welcome ${authUser.displayName}'),
                const SizedBox(height: 20),
                ElevatedButton(
                  child: const Text('Sign Out'),
                  onPressed: () {
                    context.read<AuthCubit>().signOut();
                  },
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
