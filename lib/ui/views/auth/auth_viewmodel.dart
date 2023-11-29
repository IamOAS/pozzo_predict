import 'package:pozzo_predict/core/utils/exports.dart';

class AuthViewModel extends BaseViewModel {
  bool isPasswordShownInSignUpView = false;
  bool isPasswordShownInLoginView = false;

  void showPasswordInSignUpView() {
    isPasswordShownInSignUpView = !isPasswordShownInSignUpView;
    notifyListeners();
  }


  void showPasswordInLoginView() {
    isPasswordShownInSignUpView = !isPasswordShownInSignUpView;
    notifyListeners();
  }
}
