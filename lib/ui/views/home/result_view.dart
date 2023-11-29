import 'package:pozzo_predict/core/utils/exports.dart';
import 'package:pozzo_predict/ui/views/auth/auth_viewmodel.dart';

class ResultView extends StatefulWidget {
  final AuthViewModel model;
  final PageController pageController;

  const ResultView({
    super.key,
    required this.model,
    required this.pageController,
  });

  @override
  State<ResultView> createState() => _ResultViewState();
}

class _ResultViewState extends State<ResultView> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (orientation == Orientation.landscape) ...{
              ResultPageLandscape(pageController: widget.pageController),
            } else ...{
              ResultPagePortrait(pageController: widget.pageController)
            },
          ],
        ),
      );
    });
  }
}

class ResultPageLandscape extends StatelessWidget {
  final PageController pageController;
  const ResultPageLandscape({
    super.key,
    required this.pageController,
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
            width: 856.w,
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
                    Container(
                      width: 100.h,
                      height: 100.h,
                      decoration: const ShapeDecoration(
                        color: Color(0xffFFFFFF),
                        shape: OvalBorder(),
                      ),
                      child: Center(
                        child: Image.asset(
                          'Analysis'.png,
                        ),
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
                      '50.2',
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
                Text(
                  'To conclude, all parameters remaining identical, concrete compression strength will be higher for concrete made using fine aggregates having lesser finer fines, aggregates having maximum aggregate size, aggregates having rounded shape and/or aggregates having less porosity/ having density.\n\nTo conclude, all parameters remaining identical, concrete compression strength will be higher for concrete made using fine aggregates having lesser finer fines, aggregates having maximum aggregate size, aggregates having rounded shape and/or aggregates having less porosity/ having density.\n\nTo conclude, all parameters remaining identical, concrete compression strength will be higher for concrete made using fine aggregates having lesser finer fines, aggregates having maximum aggregate size, aggregates having rounded shape and/or aggregates having less porosity/ having density.\n\nTo conclude, all parameters remaining identical, concrete compression strength will be higher for concrete made using fine aggregates having lesser finer fines, aggregates having maximum aggregate size, aggregates having rounded shape and/or aggregates having less porosity/ having density.\n\nTo conclude, all parameters remaining identical, concrete compression strength will be higher for concrete made using fine aggregates having lesser finer fines, aggregates having maximum aggregate size, aggregates having rounded shape and/or aggregates having less porosity/ having density.',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: GoogleFonts.inter().fontFamily,
                    color: const Color(0xFF291515),
                  ),
                ),
                102.szbh,
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

class ResultPagePortrait extends StatelessWidget {
  final PageController pageController;
  const ResultPagePortrait({
    super.key,
    required this.pageController,
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
                Text(
                  'To conclude, all parameters remaining identical, concrete compression strength will be higher for concrete made using fine aggregates having lesser finer fines, aggregates having maximum aggregate size, aggregates having rounded shape and/or aggregates having less porosity/ having density.\n\nTo conclude, all parameters remaining identical, concrete compression strength will be higher for concrete made using fine aggregates having lesser finer fines, aggregates having maximum aggregate size, aggregates having rounded shape and/or aggregates having less porosity/ having density.\n\nTo conclude, all parameters remaining identical, concrete compression strength will be higher for concrete made using fine aggregates having lesser finer fines, aggregates having maximum aggregate size, aggregates having rounded shape and/or aggregates having less porosity/ having density.\n\nTo conclude, all parameters remaining identical, concrete compression strength will be higher for concrete made using fine aggregates having lesser finer fines, aggregates having maximum aggregate size, aggregates having rounded shape and/or aggregates having less porosity/ having density.\n\nTo conclude, all parameters remaining identical, concrete compression strength will be higher for concrete made using fine aggregates having lesser finer fines, aggregates having maximum aggregate size, aggregates having rounded shape and/or aggregates having less porosity/ having density.',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: GoogleFonts.inter().fontFamily,
                    color: const Color(0xFF291515),
                  ),
                ),
                102.szbh,
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
