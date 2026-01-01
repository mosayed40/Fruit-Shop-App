abstract class AuthRepo {
  Future loginWithGoogle();
  Future loginWithFacebook();
  Future completeInformation({String name, String phoneNumber, String address});
}
