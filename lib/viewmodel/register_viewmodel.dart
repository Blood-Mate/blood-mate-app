import 'package:bloodmate_app/data/repository/user_repository.dart';

class RegisterViewModel {
  late final UserRepository _userRepository;

  RegisterViewModel() {
    _userRepository = UserRepository();
  }

  Future register(String phoneNumber, String password, String name,
      String bloodType) async {
    return await _userRepository.register(
        phoneNumber: phoneNumber,
        password: password,
        name: name,
        bloodType: bloodType);
  }
}
