import 'package:pozzo_predict/core/utils/exports.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  final Color? buttonColor;
  final Color? appProgressIndicatorColor;
  final bool? isLoading;

  const CustomButton({
    super.key,
    required this.text,
    this.onTap,
    this.buttonColor,
    this.isLoading,
    this.appProgressIndicatorColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ButtonStyle(
        elevation: MaterialStateProperty.all<double>(5),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.r),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(buttonColor ?? Theme.of(context).primaryColor),
      ),
      child: Padding(
        padding: 16.vp,
        child: Center(
          child: isLoading != true
              ? Text(
                  text,
                  style: CustomTextStyle.medium.semiBold.withColor(
                    const Color(0xffffffff),
                  ),
                )
              : SizedBox(
                  height: 20.h,
                  width: 20.h,
                  child: CircularProgressIndicator.adaptive(
                    backgroundColor: appProgressIndicatorColor ?? const Color(0xFFFFFFFF),
                  ),
                ),
        ),
      ),
    );
  }
}

class CustomListenableButton extends StatelessWidget {
  final List<TextEditingController> textEditingControllers;
  final bool isLoading;
  final VoidCallback onTap;
  final String text;
  final bool? otherValidation;
  final GlobalKey<FormState> formKey;

  const CustomListenableButton({
    super.key,
    required this.textEditingControllers,
    required this.isLoading,
    required this.onTap,
    required this.text,
    required this.formKey,
    this.otherValidation,
  });

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: Listenable.merge(textEditingControllers),
      builder: (context, child) {
        bool allTextFieldsNotEmpty() {
          return textEditingControllers.every((element) => element.text.isNotEmpty);
        }

        bool isValid() {
          if (otherValidation != false && allTextFieldsNotEmpty()) {
            return true;
          }

          return false;
        }

        return CustomButton(
          isLoading: isLoading,
          onTap: () {
            if (isValid() && formKey.currentState!.validate() && !isLoading) {
              if (!FocusScope.of(context).hasPrimaryFocus) {
                FocusScope.of(context).unfocus();
              }

              onTap();
            }
          },
          buttonColor: isValid() ? Theme.of(context).primaryColor : const Color(0xffACA6AF),
          text: text,
        );
      },
    );
  }
}
