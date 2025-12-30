import 'package:ecommerce_app/features/Auth/domain/respotries/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  @override
  Future completeInformation({
    String? name,
    String? phoneNumber,
    String? address,
  }) {
    throw UnimplementedError();
  }

  @override
  Future loginWithFacebook() {
    throw UnimplementedError();
  }

  @override
  Future loginWithGoogle() {
    throw UnimplementedError();
  }
}
