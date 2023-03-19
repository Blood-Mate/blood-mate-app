import 'package:bloodmate_app/data/repository/user_repository.dart';

class SignInViewModel {
  late final UserRepository _userRepository;

  SignInViewModel() {
    _userRepository = UserRepository();
  }

  Future signIn(String phoneNumber, String password) async {
    return await _userRepository.signIn(
        phoneNumber: phoneNumber, password: password);
  }
}
