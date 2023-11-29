import 'package:pozzo_predict/core/utils/exports.dart';

class SizeXSVG extends StatelessWidget {
  final String icon;
  final Color? color;
  final double size;

  const SizeXSVG({
    super.key,
    required this.icon,
    required this.size,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.h,
      width: size.h,
      child: Center(
        child: SvgPicture.asset(
          icon.svg,
          height: size.h,
          width: size.h,
          colorFilter: color != null
              ? ColorFilter.mode(
                  color!,
                  BlendMode.srcIn,
                )
              : null,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
