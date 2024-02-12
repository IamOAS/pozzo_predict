import 'package:pozzo_predict/core/utils/exports.dart';

class AuthViewModel extends BaseViewModel {
  bool isPasswordShownInSignUpView = false;
  bool isPasswordShownInLoginView = false;

  void showPasswordInSignUpView() {
    isPasswordShownInSignUpView = !isPasswordShownInSignUpView;
    notifyListeners();
  }

  void showPasswordInLoginView() {
    isPasswordShownInLoginView = !isPasswordShownInLoginView;
    notifyListeners();
  }

  Future<void> verifyEmail({required User? user, required BuildContext context, required PageController pageController}) async {
    try {
      await runBusyFuture(
        authService.verifyEmail(user),
        throwException: true,
      );

      void showAlert() async {
        await customAlertDialog(
          isError: false,
          context: context,
          message: 'Kindly check your email to verify your email address',
        );

        if (pageController.page?.toInt() != 1) {
          pageController.jumpToPage(1);
        }
      }

      showAlert();
    } on FirebaseAuthException catch (e) {
      void handleAuthException() {
        AuthExceptionHandler.handleAuthException(e, context);
      }

      handleAuthException();
    } catch (e) {
      void showError() async {
        await customAlertDialog(
          context: context,
          message: e.toString(),
        );
      }

      showError();
    }
  }

  Future<void> signUp({
    required String email,
    required String password,
    required BuildContext context,
    required PageController pageController,
  }) async {
    try {
      final User? user = await runBusyFuture(
        authService.signUp(email, password),
        throwException: true,
      );

      Future<void> verifyEmail_() async {
        await verifyEmail(
          user: user,
          context: context,
          pageController: pageController,
        );
      }

      if (user != null) {
        if (!user.emailVerified) {
          await verifyEmail_();
        }
      }
    } on FirebaseAuthException catch (e) {
      void handleAuthException() {
        AuthExceptionHandler.handleAuthException(e, context);
      }

      handleAuthException();
    } catch (e) {
      void showError() async {
        await customAlertDialog(
          context: context,
          message: e.toString(),
        );
      }

      showError();
    }
  }

  Future<void> signIn({
    required String email,
    required String password,
    required BuildContext context,
    required PageController pageController,
  }) async {
    try {
      final User? user = await runBusyFuture(
        authService.signIn(email, password),
        throwException: true,
      );

      Future<void> verifyEmail_() async {
        await verifyEmail(
          user: FirebaseAuth.instance.currentUser,
          context: context,
          pageController: pageController,
        );
      }

      if (user != null) {
        if (user.emailVerified != true) {
          await verifyEmail_();
        } else {
          pageController.jumpToPage(2);
        }
      }
    } on FirebaseAuthException catch (e) {
      void handleAuthException() {
        AuthExceptionHandler.handleAuthException(e, context);
      }

      handleAuthException();
    } catch (e) {
      void showError() async {
        await customAlertDialog(
          context: context,
          message: e.toString(),
        );
      }

      showError();
    }
  }

  Future<void> signOut({required BuildContext context}) async {
    try {
      await runBusyFuture(
        authService.signOut(),
        throwException: true,
      );
    } on FirebaseAuthException catch (e) {
      void handleAuthException() {
        AuthExceptionHandler.handleAuthException(e, context);
      }

      handleAuthException();
    }
  }
}
