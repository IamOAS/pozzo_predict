import 'package:pozzo_predict/core/utils/exports.dart';
import 'package:pozzo_predict/ui/views/result/result_viewmodel.dart';

class ResultPageLandscape extends StatelessWidget {
  final ResultViewModel model;
  final PageController pageController;

  const ResultPageLandscape({
    super.key,
    required this.pageController,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 200.h,
            width: double.infinity,
            color: Theme.of(context).primaryColor,
            child: Column(
              children: [
                Row(
                  children: [
                    BackButton(
                      onPressed: () {
                        pageController.jumpToPage(2);
                      },
                    ),
                  ],
                ),
                Center(
                  child: Text(
                    'Result',
                    style: CustomTextStyle.h1.bold.withColor(
                      const Color(0xffffffff),
                    ),
                  ),
                ),
              ],
            ),
          ),
          68.szbh,
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
            decoration: BoxDecoration(
              color: const Color(0xFFFAFAFA),
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Center(
                      child: Image.asset(
                        'Analysis'.png,
                        width: 100.h,
                        height: 100.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                    23.szbw,
                    Expanded(
                      child: Text(
                        'Compressive strength',
                        style: CustomTextStyle.h2.semiBold.withColor(
                          const Color(0xFF000000),
                        ),
                      ),
                    ),
                    Text(
                      model.prediction()?.toStringAsFixed(2) ?? '--',
                      style: CustomTextStyle.h2.semiBold.withColor(
                        const Color(0xFF000000),
                      ),
                    ),
                  ],
                ),
                27.szbh,
                Divider(
                  color: const Color(0xff008042).withOpacity(0.29),
                ),
                27.szbh,
                // TODO: Ask Deola
                Text(
                  'To conclude, all parameters remaining identical, concrete compression strength will be higher for concrete made using fine aggregates having lesser finer fines, aggregates having maximum aggregate size, aggregates having rounded shape and/or aggregates having less porosity/ having density.\n\nTo conclude, all parameters remaining identical, concrete compression strength will be higher for concrete made using fine aggregates having lesser finer fines, aggregates having maximum aggregate size, aggregates having rounded shape and/or aggregates having less porosity/ having density.\n\nTo conclude, all parameters remaining identical, concrete compression strength will be higher for concrete made using fine aggregates having lesser finer fines, aggregates having maximum aggregate size, aggregates having rounded shape and/or aggregates having less porosity/ having density.\n\nTo conclude, all parameters remaining identical, concrete compression strength will be higher for concrete made using fine aggregates having lesser finer fines, aggregates having maximum aggregate size, aggregates having rounded shape and/or aggregates having less porosity/ having density.\n\nTo conclude, all parameters remaining identical, concrete compression strength will be higher for concrete made using fine aggregates having lesser finer fines, aggregates having maximum aggregate size, aggregates having rounded shape and/or aggregates having less porosity/ having density.',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: customFontFamily,
                    color: const Color(0xFF291515),
                  ),
                ),
                102.szbh,
                // TODO: Ask Deola
                SizedBox(
                  width: 454.w,
                  child: const CustomButton(text: 'Download result'),
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
