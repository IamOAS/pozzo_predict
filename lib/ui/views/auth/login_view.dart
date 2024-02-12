import 'package:pozzo_predict/core/utils/exports.dart';
import 'package:pozzo_predict/ui/views/auth/auth_viewmodel.dart';
import 'package:pozzo_predict/ui/widgets/custom_form_field.dart';

class LoginView extends StatefulWidget {
  final PageController pageController;

  const LoginView({
    super.key,
    required this.pageController,
  });

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();

    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AuthViewModel>.reactive(
        viewModelBuilder: () => AuthViewModel(),
        builder: (context, model, child) {
          Future<void> signIn() async {
            await model.signIn(
              context: context,
              email: _emailController.text.trim(),
              password: _passwordController.text.trim(),
              pageController: widget.pageController,
            );
          }

          return OrientationBuilder(builder: (context, orientation) {
            return Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (orientation == Orientation.landscape) ...{
                      26.szbh,
                      Row(
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(30.r),
                                  child: Stack(
                                    children: [
                                      Image.asset(
                                        'african-american-lady-safety-helmet-working-near-model-building'.png,
                                        width: 737.w,
                                        height: 977.h,
                                        fit: BoxFit.cover,
                                      ),
                                      Container(
                                        width: 737.w,
                                        height: 977.h,
                                        decoration: ShapeDecoration(
                                          gradient: LinearGradient(
                                            begin: const Alignment(0.00, -1.00),
                                            end: const Alignment(0, 1),
                                            colors: [
                                              const Color(0x001B1818),
                                              const Color(0xFF1B1818).withOpacity(0.7),
                                              const Color(0xFF1B1818),
                                            ],
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(30.r),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  bottom: 77.h,
                                  left: 50.w,
                                  right: 50.w,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      // TODO: Ask Deola
                                      Text(
                                        '"Getting the best result structures with pozzolanic Strength Predictions"',
                                        style: TextStyle(
                                          fontSize: 60.sp,
                                          fontFamily: customFontFamily,
                                          fontWeight: FontWeight.w700,
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 118.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Log in with your email
                                  Text(
                                    'Log in with your email',
                                    style: CustomTextStyle.h2.bold.withColor(
                                      const Color(0xFF1B1818),
                                    ),
                                  ),
                                  32.szbh,
                                  // Email Address textformfield
                                  CustomTextFormField(
                                    label: 'Email Address',
                                    contentPadding: 16.hp,
                                    controller: _emailController,
                                    focusNode: _emailFocusNode,
                                    secondFocusNode: _passwordFocusNode,
                                    keyboardType: TextInputType.emailAddress,
                                    hintText: 'Email address',
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Type in your email address';
                                      } else if (EmailValidator.validate(value.trim()) == false) {
                                        return 'Please input a valid email';
                                      }
                                      return null;
                                    },
                                  ),
                                  16.szbh,
                                  // Password textformfield
                                  CustomTextFormField(
                                    label: 'Password',
                                    contentPadding: 16.hp,
                                    controller: _passwordController,
                                    focusNode: _passwordFocusNode,
                                    keyboardType: TextInputType.visiblePassword,
                                    hintText: 'Set password',
                                    obscureText: !model.isPasswordShownInLoginView,
                                    suffixIcon: InkWell(
                                      onTap: () {
                                        model.showPasswordInLoginView();
                                      },
                                      child: model.isPasswordShownInLoginView
                                          ? const Icon(
                                              Icons.visibility_rounded,
                                              color: Color(0xFF606783),
                                              size: 20,
                                            )
                                          : const Icon(
                                              Icons.visibility_off_rounded,
                                              color: Color(0xFF606783),
                                              size: 20,
                                            ),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Type in your password';
                                      } else if (value.length < 8) {
                                        return 'Password must be at least 8 characters long';
                                      }
                                      return null;
                                    },
                                  ),
                                  32.szbh,
                                  // Login button
                                  CustomListenableButton(
                                    formKey: _formKey,
                                    isLoading: model.isBusy,
                                    textEditingControllers: [
                                      _emailController,
                                      _passwordController,
                                    ],
                                    text: 'Login',
                                    onTap: () async {
                                      await signIn();
                                    },
                                  ),
                                  24.szbh,
                                  // Are you new here? Create an account
                                  Row(
                                    children: [
                                      Text(
                                        'Are you new here?',
                                        style: CustomTextStyle.small.regular.withColor(
                                          const Color(0xFF645C5C),
                                        ),
                                      ),
                                      5.szbw,
                                      InkWell(
                                        onTap: () {
                                          widget.pageController.jumpToPage(0);
                                        },
                                        child: Text(
                                          'Sign up',
                                          style: CustomTextStyle.small.semiBold.withColor(
                                            const Color(0xFFFBAF1B),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  30.szbh,
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      26.szbh,
                    } else ...{
                      40.szbh,
                      // TODO: Ask Deola
                      Text(
                        '"Getting the best result Structures with Pozzolanic Strength Predictions"',
                        style: CustomTextStyle.medium.bold.withColor(Theme.of(context).primaryColor),
                        textAlign: TextAlign.center,
                      ),
                      40.szbh,
                      // Log in with your email
                      Text(
                        'Log in with your email',
                        style: CustomTextStyle.medium.bold.withColor(
                          const Color(0xFF1B1818),
                        ),
                      ),
                      32.szbh,
                      // Email Address textformfield
                      CustomTextFormField(
                        label: 'Email Address',
                        contentPadding: 16.hp,
                        controller: _emailController,
                        focusNode: _emailFocusNode,
                        secondFocusNode: _passwordFocusNode,
                        keyboardType: TextInputType.emailAddress,
                        hintText: 'Email address',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Type in your email address';
                          } else if (EmailValidator.validate(value.trim()) == false) {
                            return 'Please input a valid email';
                          }
                          return null;
                        },
                      ),
                      16.szbh,
                      // Password textformfield
                      CustomTextFormField(
                        label: 'Password',
                        contentPadding: 16.hp,
                        controller: _passwordController,
                        focusNode: _passwordFocusNode,
                        keyboardType: TextInputType.visiblePassword,
                        hintText: 'Set password',
                        obscureText: !model.isPasswordShownInLoginView,
                        suffixIcon: InkWell(
                          onTap: () {
                            model.showPasswordInLoginView();
                          },
                          child: model.isPasswordShownInLoginView
                              ? const Icon(
                                  Icons.visibility_rounded,
                                  color: Color(0xFF606783),
                                  size: 20,
                                )
                              : const Icon(
                                  Icons.visibility_off_rounded,
                                  color: Color(0xFF606783),
                                  size: 20,
                                ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Type in your password';
                          } else if (value.length < 8) {
                            return 'Password must be at least 8 characters long';
                          }
                          return null;
                        },
                      ),
                      32.szbh,
                      // Login button
                      CustomListenableButton(
                        formKey: _formKey,
                        isLoading: model.isBusy,
                        textEditingControllers: [
                          _emailController,
                          _passwordController,
                        ],
                        text: 'Login',
                        onTap: () async {
                          await signIn();
                        },
                      ),
                      24.szbh,
                      // Are you new here? Create an account
                      Row(
                        children: [
                          Text(
                            'Are you new here?',
                            style: CustomTextStyle.small.regular.withColor(
                              const Color(0xFF645C5C),
                            ),
                          ),
                          5.szbw,
                          InkWell(
                            onTap: () {
                              widget.pageController.jumpToPage(0);
                            },
                            child: Text(
                              'Sign up',
                              style: CustomTextStyle.small.semiBold.withColor(
                                const Color(0xFFFBAF1B),
                              ),
                            ),
                          ),
                        ],
                      ),
                      30.szbh,
                    },
                  ],
                ),
              ),
            );
          });
        });
  }
}
