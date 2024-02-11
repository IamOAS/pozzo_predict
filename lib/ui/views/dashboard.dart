import 'package:pozzo_predict/core/utils/exports.dart';
import 'package:pozzo_predict/ui/views/home/result_view.dart';
import 'auth/auth_viewmodel.dart';
import 'auth/login_view.dart';
import 'auth/sign_up_view.dart';
import 'home/home_view.dart';

class AuthView extends StatefulWidget {
  const AuthView({super.key});

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  final PageController _pageController = PageController(initialPage: 1);

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AuthViewModel>.reactive(
      viewModelBuilder: () => AuthViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          backgroundColor: const Color(0xffffffff),
          body: SafeArea(
            child: PageView(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Padding(
                  padding: 28.hp,
                  child: SignUpView(
                    model: model,
                    pageController: _pageController,
                  ),
                ),
                Padding(
                  padding: 28.hp,
                  child: LoginView(
                    model: model,
                    pageController: _pageController,
                  ),
                ),
                HomeView(
                  model: model,
                  pageController: _pageController,
                ),
                ResultView(
                  model: model,
                  pageController: _pageController,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
