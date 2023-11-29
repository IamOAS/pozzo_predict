import 'package:pozzo_predict/core/utils/exports.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: const Tooltip(
        message: 'back',
        child: SizeXSVG(
          icon: 'arrow-back',
          size: 24,
        ),
      ),
    );
  }
}
