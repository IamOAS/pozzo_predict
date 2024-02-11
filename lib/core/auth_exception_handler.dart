import 'package:pozzo_predict/core/utils/exports.dart';

class AuthExceptionHandler {
  static handleAuthException(FirebaseAuthException e, BuildContext context) async {
    switch (e.code) {
      case "unknown":
        if (e.message ==
            "An unknown error occurred: FirebaseError: Firebase: A network AuthError (such as timeout, interrupted connection or unreachable host) has occurred. (auth/network-request-failed).") {
          await customAlertDialog(
            context: context,
            message: "Network error. Check your internet connection.",
          );
          break;
        } else if (e.message ==
            "An unknown error occurred: FirebaseError: Firebase: Password should be at least 6 characters (auth/weak-password).") {
          await customAlertDialog(
            context: context,
            message: "Weak password. Use at least 8 characters for better security.",
          );
          break;
        } else {
          await customAlertDialog(
            context: context,
            message: "An error occurred. Please try again later.",
          );
          break;
        }
      case "user-disabled":
        await customAlertDialog(
          context: context,
          message: "User has been disabled.",
        );
        break;
      case "user-not-found":
        await customAlertDialog(
          context: context,
          message: "Account not found. Please check your email or register.",
        );
        break;
      case "invalid-email":
        await customAlertDialog(
          context: context,
          message: "Invalid email address. Please enter a valid email.",
        );
        break;
      case "wrong-password":
        await customAlertDialog(
          context: context,
          message: "Incorrect password. Please try again.",
        );
        break;
      case "weak-password":
        await customAlertDialog(
          context: context,
          message: "Weak password. Use at least 8 characters for better security.",
        );
        break;
      case "email-already-in-use":
        await customAlertDialog(
          context: context,
          message: "Email already in use. Please use a different email address.",
        );
        break;
      default:
        await customAlertDialog(
          context: context,
          message: "An error occurred. Please try again later.",
        );
    }
  }
}
