import 'package:equatable/equatable.dart';

class AuthUser extends Equatable {
  final String uid;
  final String? email;
  final String? displayName;
  final String? photoUrl;

  const AuthUser({
    required this.uid,
    this.email,
    this.displayName,
    this.photoUrl,
  });

  @override
  List<Object?> get props => [uid];
}

abstract class AuthRepositoryBase {
  Stream<AuthUser?> get onAuthStateChanged;

  Future<AuthUser?> singnInAnonymously(); // Para usuarios anónimos

  Future<AuthUser?> signInWithGoogle(); // Para usuarios con Google

  Future<void> signOut(); // para cerra sesión
}
