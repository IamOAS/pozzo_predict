import 'package:pozzo_predict/core/utils/exports.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  final Color? buttonColor;
  final Color? appProgressIndicatorColor;
  final Color? textColor;
  final bool? isLoading;
  const CustomButton({
    super.key,
    required this.text,
    this.onTap,
    this.buttonColor,
    this.isLoading,
    this.appProgressIndicatorColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ButtonStyle(
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
