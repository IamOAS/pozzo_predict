import 'package:pozzo_predict/core/utils/exports.dart';
import 'package:pozzo_predict/ui/views/auth/auth_viewmodel.dart';
import 'package:pozzo_predict/ui/views/home/about_pages.dart';
import 'home_pages.dart';

class HomeView extends StatefulWidget {
  final AuthViewModel model;
  final PageController pageController;

  const HomeView({
    super.key,
    required this.model,
    required this.pageController,
  });

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  final TextEditingController _pozzolansController = TextEditingController();
  final TextEditingController _curingAgeController = TextEditingController();
  final TextEditingController _waterCementRatioController = TextEditingController();
  final TextEditingController _weightFineAggregateController = TextEditingController();
  final TextEditingController _weightCementController = TextEditingController();
  final TextEditingController _weightCoarseAggregateController = TextEditingController();
  final TextEditingController _weightWaterController = TextEditingController();
  final TextEditingController _weightPozzolanController = TextEditingController();

  final FocusNode _pozzolansFocusNode = FocusNode();
  final FocusNode _curingAgeFocusNode = FocusNode();
  final FocusNode _waterCementRatioFocusNode = FocusNode();
  final FocusNode _weightFineAggregateFocusNode = FocusNode();
  final FocusNode _weightCementFocusNode = FocusNode();
  final FocusNode _weightCoarseAggregateFocusNode = FocusNode();
  final FocusNode _weightWaterFocusNode = FocusNode();
  final FocusNode _weightPozzolanFocusNode = FocusNode();

  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _pozzolansController.dispose();
    _curingAgeController.dispose();
    _waterCementRatioController.dispose();
    _weightFineAggregateController.dispose();
    _weightCementController.dispose();
    _weightCoarseAggregateController.dispose();
    _weightWaterController.dispose();
    _weightPozzolanController.dispose();

    _pozzolansFocusNode.dispose();
    _curingAgeFocusNode.dispose();
    _waterCementRatioFocusNode.dispose();
    _weightFineAggregateFocusNode.dispose();
    _weightCementFocusNode.dispose();
    _weightCoarseAggregateFocusNode.dispose();
    _weightWaterFocusNode.dispose();
    _weightPozzolanFocusNode.dispose();

    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: orientation == Orientation.landscape ? 25.h : 15.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: 100.w),
                  InkWell(
                    onTap: () {
                      tabController.animateTo(0);
                      setState(() {});
                    },
                    child: Text(
                      'HOME',
                      style: tabController.index != 0
                          ? CustomTextStyle.small.regular.withColor(const Color(0xFF1B1818))
                          : CustomTextStyle.small.regular.withColor(Theme.of(context).primaryColor),
                    ),
                  ),
                  SizedBox(width: 30.w),
                  InkWell(
                    onTap: () {
                      tabController.animateTo(1);
                      setState(() {});
                    },
                    child: Text(
                      'ABOUT',
                      style: tabController.index != 1
                          ? CustomTextStyle.small.regular.withColor(
                              const Color(0xFF1B1818),
                            )
                          : CustomTextStyle.small.regular.withColor(Theme.of(context).primaryColor),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  if (orientation == Orientation.landscape) ...{
                    HomePageLandscape(
                      pageController: widget.pageController,
                      pozzolansController: _pozzolansController,
                      curingAgeController: _curingAgeController,
                      waterCementRatioController: _waterCementRatioController,
                      weightFineAggregateController: _weightFineAggregateController,
                      weightCementController: _weightCementController,
                      weightCoarseAggregateController: _weightCoarseAggregateController,
                      weightWaterController: _weightWaterController,
                      weightPozzolanController: _weightPozzolanController,
                      pozzolansFocusNode: _pozzolansFocusNode,
                      curingAgeFocusNode: _curingAgeFocusNode,
                      waterCementRatioFocusNode: _waterCementRatioFocusNode,
                      weightFineAggregateFocusNode: _weightFineAggregateFocusNode,
                      weightCementFocusNode: _weightCementFocusNode,
                      weightCoarseAggregateFocusNode: _weightCoarseAggregateFocusNode,
                      weightWaterFocusNode: _weightWaterFocusNode,
                      weightPozzolanFocusNode: _weightPozzolanFocusNode,
                    ),
                    const AboutPageLandscape(),
                  } else ...{
                    HomePagePortrait(
                      pageController: widget.pageController,
                      pozzolansController: _pozzolansController,
                      curingAgeController: _curingAgeController,
                      waterCementRatioController: _waterCementRatioController,
                      weightFineAggregateController: _weightFineAggregateController,
                      weightCementController: _weightCementController,
                      weightCoarseAggregateController: _weightCoarseAggregateController,
                      weightWaterController: _weightWaterController,
                      weightPozzolanController: _weightPozzolanController,
                      pozzolansFocusNode: _pozzolansFocusNode,
                      curingAgeFocusNode: _curingAgeFocusNode,
                      waterCementRatioFocusNode: _waterCementRatioFocusNode,
                      weightFineAggregateFocusNode: _weightFineAggregateFocusNode,
                      weightCementFocusNode: _weightCementFocusNode,
                      weightCoarseAggregateFocusNode: _weightCoarseAggregateFocusNode,
                      weightWaterFocusNode: _weightWaterFocusNode,
                      weightPozzolanFocusNode: _weightPozzolanFocusNode,
                    ),
                    const AboutPagePortrait(),
                  },
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
