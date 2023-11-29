import 'package:pozzo_predict/core/utils/exports.dart';

extension SizedBoxExtension on num {
  SizedBox get szbh => SizedBox(
        height: toDouble().h,
      );

  SizedBox get szbw => SizedBox(
        width: toDouble().w,
      );
}

extension SymmetricPadding on num {
  EdgeInsets get hp => EdgeInsets.symmetric(
        horizontal: toDouble().w,
      );

  EdgeInsets get vp => EdgeInsets.symmetric(
        vertical: toDouble().h,
      );
}
