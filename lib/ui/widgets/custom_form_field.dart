import 'package:pozzo_predict/core/utils/exports.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? hintText;
  final String? Function(String?)? validator;
  final FocusNode? secondFocusNode;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? obscureText;
  final TextStyle? style;
  final TextStyle? hintTextStyle;
  final bool? isAutoFocus;
  final Function(String)? onChanged;
  final bool? enabled;
  final Color? fillColor;
  final BorderSide? borderSide;
  final String? initialValue;
  final Key? textFormFieldKey;
  final EdgeInsetsGeometry? contentPadding;
  final void Function(String)? onFieldSubmitted;
  final double? borderRadius;
  final int? maxLines;
  final bool? expands;
  final TextAlignVertical? textAlignVertical;
  final InputBorder? border;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final InputBorder? errorBorder;
  final String? label;

  const CustomTextFormField({
    super.key,
    this.controller,
    this.validator,
    this.focusNode,
    this.hintText,
    this.secondFocusNode,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText,
    this.style,
    this.isAutoFocus,
    this.onChanged,
    this.enabled,
    this.fillColor,
    this.borderSide,
    this.hintTextStyle,
    this.initialValue,
    this.textFormFieldKey,
    this.contentPadding,
    this.onFieldSubmitted,
    this.prefixIcon,
    this.borderRadius,
    this.maxLines = 1,
    this.expands = false,
    this.textAlignVertical,
    this.border,
    this.enabledBorder,
    this.focusedBorder,
    this.errorBorder,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) ...{
          Text(
            label!,
            style: CustomTextStyle.small.medium.withColor(
              const Color(0xFF101828),
            ),
          ),
          4.szbh,
        },
        TextFormField(
          key: textFormFieldKey,
          initialValue: initialValue,
          expands: expands!,
          autofocus: isAutoFocus ?? false,
          textAlignVertical: textAlignVertical,
          enabled: enabled ?? true,
          validator: validator,
          controller: controller,
          keyboardType: keyboardType ?? TextInputType.text,
          maxLines: maxLines,
          obscureText: obscureText ?? false,
          focusNode: focusNode,
          cursorColor: Theme.of(context).primaryColor,
          onChanged: onChanged ?? (value) {},
          onFieldSubmitted: (value) {
            if (secondFocusNode != null) {
              secondFocusNode!.requestFocus();
            }
            if (onFieldSubmitted != null) {
              onFieldSubmitted!(value);
            }
          },
          style: style ??
              CustomTextStyle.small.regular.withColor(
                const Color(0xff000000),
              ),
          decoration: InputDecoration(
            contentPadding: contentPadding,
            fillColor: fillColor ?? const Color(0xffffffff),
            filled: border != null ? false : true,
            border: border ?? defaultCustomFormFieldBorder(borderRadius: borderRadius),
            enabledBorder: enabledBorder ?? defaultCustomFormFieldBorder(borderRadius: borderRadius),
            focusedBorder: focusedBorder ??
                OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadius ?? 6.r),
                  borderSide: BorderSide(
                    color: Theme.of(context).primaryColor,
                    width: 1.h,
                  ),
                ),
            errorBorder: errorBorder ??
                OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadius ?? 6.r),
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 1.h,
                  ),
                ),
            hintText: hintText,
            hintStyle: hintTextStyle ??
                CustomTextStyle.small.regular.withColor(
                  const Color(0xFF667185),
                ),
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
          ),
        ),
      ],
    );
  }
}

OutlineInputBorder defaultCustomFormFieldBorder({double? borderRadius}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(borderRadius ?? 6.r),
    borderSide: BorderSide(
      width: 1.h,
      color: const Color(0xFFD0D4DD),
    ),
  );
}
