import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepo {
  Future<UserCredential> loginWithGoogle();
  Future<UserCredential> loginWithFacebook();
  Future completeInformation({String name, String phoneNumber, String address});
}
