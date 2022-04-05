import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth_bloc/repository/auth_repository.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepositoryBase _authRepository;
  late StreamSubscription _authSubscription;

  AuthCubit(this._authRepository) : super(AuthInitialState());

  Future<void> init() async {
    _authSubscription =
        _authRepository.onAuthStateChanged.listen(_authStateChanged);
  }

  // ignore: lines_longer_than_80_chars
  void _authStateChanged(AuthUser? user) =>
      user == null ? emit(AuthSignedOut()) : emit(AuthSignedIn(user));

  // Funcion para iniciar sesion anonimamente
  Future<void> signInAnonymously() =>
      _signIn(_authRepository.singnInAnonymously());

  Future<void> _signIn(Future<AuthUser?> authUser) async {
    try {
      emit(AuthSigningIn());
      final user = await authUser;

      // Si el usuarios es nulo, que muestre el siguiente mensaje
      if (user == null) {
        emit(const AuthError('Unkown error,  try again later'));
      } else {
        emit(AuthSignedIn(user));
      }
    } catch (e) {
      emit(AuthError('Error: ${e.toString()}'));
    }
  }

  // Funcion para cerrar sesion
  Future<void> signOut() async {
    await _authRepository.signOut();
    emit(AuthSignedOut());
  }

  // Cerramos el estado
  @override
  Future<void> close() {
    _authSubscription.cancel();
    return super.close();
  }
}

abstract class AuthEvent extends Equatable {
  @override
  List<Object> get props => [];
}

// Estdos de inicialización

class AuthInitialState extends AuthState {}

class AuthSignedOut extends AuthState {}

// En este estado cuando mostramos un loadeded
class AuthSigningIn extends AuthState {}

// En este estado cuando aya un error
class AuthError extends AuthState {
  const AuthError(this.message);

  final String message;

  @override
  List<Object> get props => [message];
}

// En este estado cuando el user ya este logeado

class AuthSignedIn extends AuthState {
  final AuthUser user;

  AuthSignedIn(this.user);

  @override
  List<Object> get props => [user];
}
