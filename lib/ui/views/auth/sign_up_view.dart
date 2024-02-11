import 'package:pozzo_predict/core/utils/exports.dart';
import 'package:pozzo_predict/ui/views/auth/auth_viewmodel.dart';
import 'package:pozzo_predict/ui/widgets/custom_form_field.dart';

class SignUpView extends StatefulWidget {
  final AuthViewModel model;
  final PageController pageController;

  const SignUpView({
    super.key,
    required this.model,
    required this.pageController,
  });

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final TextEditingController _emailController = TextEditingController(text: 'olonasheriffdeenadeola@gmail.com');
  final TextEditingController _passwordController = TextEditingController(text: 'password');

  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Future<void> signUp() async {
  await widget.model.signUp(
      context: context,
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
      pageController: widget.pageController,
    );

  
  }

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
                                  'Civil engineer and construction worker manager holding digital tablet and blueprints talking and planing about construction site cooperation teamwork concept'
                                      .png,
                                  width: 709.w,
                                  height: 982.h,
                                  fit: BoxFit.cover,
                                ),
                                Container(
                                  width: 709.w,
                                  height: 982.h,
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
                                )
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
                                Text(
                                  '"Unlocking the Future: Predicting Pozzolanic Cement Concrete Strength with Precision!"',
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
                            // Welcome
                            Text(
                              'Welcome',
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
                              obscureText: !widget.model.isPasswordShownInSignUpView,
                              suffixIcon: InkWell(
                                onTap: () {
                                  widget.model.showPasswordInSignUpView();
                                },
                                child: widget.model.isPasswordShownInSignUpView
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
                            // Sign up button
                            CustomListenableButton(
                              formKey: _formKey,
                              isLoading: widget.model.isBusy,
                              textEditingControllers: [
                                _emailController,
                                _passwordController,
                              ],
                              text: 'Sign Up',
                              onTap: () async {
                                await signUp();
                              },
                            ),
                            24.szbh,
                            // Already have an account? Sign in
                            Row(
                              children: [
                                Flexible(
                                  child: Text(
                                    'Already have an account?',
                                    style: CustomTextStyle.small.regular.withColor(
                                      const Color(0xFF645C5C),
                                    ),
                                  ),
                                ),
                                5.szbw,
                                Flexible(
                                  child: InkWell(
                                    onTap: () {
                                      widget.pageController.jumpToPage(1);
                                    },
                                    child: Text(
                                      'Sign in',
                                      style: CustomTextStyle.small.semiBold.withColor(
                                        const Color(0xFFFBAF1B),
                                      ),
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
                Text(
                  '"Unlocking the Future: Predicting Pozzolanic Cement Concrete Strength with Precision!"',
                  style: CustomTextStyle.medium.bold.withColor(Theme.of(context).primaryColor),
                  textAlign: TextAlign.center,
                ),
                40.szbh,
                // Welcome
                Text(
                  'Welcome',
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
                  obscureText: !widget.model.isPasswordShownInSignUpView,
                  suffixIcon: InkWell(
                    onTap: () {
                      widget.model.showPasswordInSignUpView();
                    },
                    child: widget.model.isPasswordShownInSignUpView
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
                // Sign up button
                CustomListenableButton(
                  formKey: _formKey,
                  isLoading: widget.model.isBusy,
                  textEditingControllers: [
                    _emailController,
                    _passwordController,
                  ],
                  text: 'Sign Up',
                  onTap: () async {
                    await signUp();
                  },
                ),
                24.szbh,
                // Already have an account? Sign in
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(
                        'Already have an account?',
                        style: CustomTextStyle.small.regular.withColor(
                          const Color(0xFF645C5C),
                        ),
                      ),
                    ),
                    5.szbw,
                    Flexible(
                      child: InkWell(
                        onTap: () {
                          widget.pageController.jumpToPage(1);
                        },
                        child: Text(
                          'Sign in',
                          style: CustomTextStyle.small.semiBold.withColor(
                            const Color(0xFFFBAF1B),
                          ),
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
  }
}
