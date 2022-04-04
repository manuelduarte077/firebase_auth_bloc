import 'package:equatable/equatable.dart';

class AuthUser extends Equatable {
  final String uid;
  final String? email;
  final String? displayName;
  final String? photoUrl;

  AuthUser({
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

  Future<void> signOut(); // para cerra sesión

}
