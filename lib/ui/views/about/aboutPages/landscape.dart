import 'package:pozzo_predict/core/utils/exports.dart';

// TODO: Ask Deola

class AboutPageLandscape extends StatelessWidget {
  const AboutPageLandscape({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 285.h,
            width: double.infinity,
            color: Theme.of(context).primaryColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'About',
                  style: CustomTextStyle.h1.bold.withColor(
                    const Color(0xffffffff),
                  ),
                ),
              ],
            ),
          ),
          68.szbh,
          Container(
            width: 856.w,
            padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
            decoration: BoxDecoration(
              color: const Color(0xFFFAFAFA),
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'To conclude, all parameters remaining identical, concrete compression strength will be higher for concrete made using fine aggregates having lesser finer fines, aggregates having maximum aggregate size, aggregates having rounded shape and/or aggregates having less porosity/ having density.\n\nTo conclude, all parameters remaining identical, concrete compression strength will be higher for concrete made using fine aggregates having lesser finer fines, aggregates having maximum aggregate size, aggregates having rounded shape and/or aggregates having less porosity/ having density.\n\nTo conclude, all parameters remaining identical, concrete compression strength will be higher for concrete made using fine aggregates having lesser finer fines, aggregates having maximum aggregate size, aggregates having rounded shape and/or aggregates having less porosity/ having density.\n\nTo conclude, all parameters remaining identical, concrete compression strength will be higher for concrete made using fine aggregates having lesser finer fines, aggregates having maximum aggregate size, aggregates having rounded shape and/or aggregates having less porosity/ having density.\n\nTo conclude, all parameters remaining identical, concrete compression strength will be higher for concrete made using fine aggregates having lesser finer fines, aggregates having maximum aggregate size, aggregates having rounded shape and/or aggregates having less porosity/ having density.',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: customFontFamily,
                    color: const Color(0xFF291515),
                  ),
                ),
                30.szbh,
              ],
            ),
          ),
          60.szbh,
        ],
      ),
    );
  }
}
