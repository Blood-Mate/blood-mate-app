import 'package:bloodmate_app/data/repository/user_repository.dart';

class SignInViewModel {
  late final UserRepository _userRepository;

  SignInViewModel() {
    _userRepository = UserRepository();
  }

  Future signIn(String phoneNumber, String password) async {
    String combinedNumber = combinePhoneAndCountry(phoneNumber, "+82");
    print(combinedNumber);
    return await _userRepository.signIn(
        phoneNumber: combinedNumber, password: password);
  }

  // convert phoneNumber
  combinePhoneAndCountry(String phoneNumber, String countryCode) {
    // 입력된 전화번호 문자열에서 하이픈 및 공백 제거, 0으로 시작 시 0제거
    phoneNumber = phoneNumber.replaceAll('-', '');
    phoneNumber = phoneNumber.replaceAll(' ', '');
    phoneNumber = phoneNumber.startsWith('0')
        ? phoneNumber.replaceFirst('0', '')
        : phoneNumber;

    // 전화번호와 국가 코드를 합쳐서 전체 전화번호 문자열을 생성
    String combinedNumber =
        phoneNumber.startsWith('+') ? phoneNumber : countryCode + phoneNumber;

    return combinedNumber;
  }
}
