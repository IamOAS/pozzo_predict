import 'package:pozzo_predict/core/utils/exports.dart';
import 'package:pozzo_predict/ui/views/result/result_viewmodel.dart';

class ResultPagePortrait extends StatelessWidget {
  final ResultViewModel model;
  final PageController pageController;

  const ResultPagePortrait({
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
            height: 200 / 2.h,
            width: double.infinity,
            color: Theme.of(context).primaryColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                Text(
                  'Result',
                  style: CustomTextStyle.h2.bold.withColor(
                    const Color(0xffffffff),
                  ),
                ),
              ],
            ),
          ),
          30.szbh,
          Container(
            margin: 15.hp,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            decoration: BoxDecoration(
              color: const Color(0xFFFAFAFA),
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Center(
                      child: Image.asset(
                        'Analysis'.png,
                        width: 50.h,
                        height: 50.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                    23.szbw,
                    Expanded(
                      child: Text(
                        'Compressive strength',
                        style: CustomTextStyle.medium.semiBold.withSize(20).withColor(
                              const Color(0xFF000000),
                            ),
                      ),
                    ),
                    Text(
                      model.prediction()?.toStringAsFixed(2) ?? '--',
                      style: CustomTextStyle.medium.semiBold.withSize(20).withColor(
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
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: customFontFamily,
                    color: const Color(0xFF291515),
                  ),
                ),
                102.szbh,
                // TODO: Ask Deola
                const CustomButton(text: 'Download result'),
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
