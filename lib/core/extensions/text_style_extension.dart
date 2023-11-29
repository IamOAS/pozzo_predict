import 'package:pozzo_predict/core/utils/exports.dart';

class CustomTextStyle {
  static TextStyle h1 = TextStyle(
    fontSize: 64,
    fontFamily: GoogleFonts.inter().fontFamily,
  );

  static TextStyle h2 = TextStyle(
    fontSize: 36,
    fontFamily: GoogleFonts.inter().fontFamily,
  );

  static TextStyle medium = TextStyle(
    fontSize: 16,
    fontFamily: GoogleFonts.inter().fontFamily,
  );

  static TextStyle small = TextStyle(
    fontSize: 14,
    fontFamily: GoogleFonts.inter().fontFamily,
  );
}

extension TextStyleExtensions on TextStyle {
  TextStyle get regular => copyWith(fontWeight: FontWeight.w400);

  TextStyle get medium => copyWith(fontWeight: FontWeight.w500);

  TextStyle get semiBold => copyWith(fontWeight: FontWeight.w600);

  TextStyle get bold => copyWith(fontWeight: FontWeight.w700);

  TextStyle withColor(Color color) {
    return copyWith(color: color);
  }

  TextStyle withSize(double size) {
    return copyWith(fontSize: size);
  }

  TextStyle withWeight(FontWeight weight) {
    return copyWith(fontWeight: weight);
  }
}
