import 'package:pozzo_predict/core/utils/exports.dart';

import '../about/aboutPages/landscape.dart';
import '../about/aboutPages/portrait.dart';
import 'homePages/landscape.dart';
import 'homePages/portrait.dart';
import 'home_viewmodel.dart';

class HomeView extends StatefulWidget {
  final PageController pageController;

  const HomeView({
    super.key,
    required this.pageController,
  });

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  final TextEditingController _waterBinderRatioController = TextEditingController();
  final TextEditingController _percAddController = TextEditingController();
  final TextEditingController _cementController = TextEditingController();
  final TextEditingController _pofaController = TextEditingController();
  final TextEditingController _fineAggController = TextEditingController();
  final TextEditingController _coarseAggController = TextEditingController();
  final TextEditingController _waterController = TextEditingController();
  final TextEditingController _sio2Controller = TextEditingController();
  final TextEditingController _al2o3Controller = TextEditingController();
  final TextEditingController _fe2o3Controller = TextEditingController();
  final TextEditingController _caoController = TextEditingController();
  final TextEditingController _loiController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _superplasticiserController = TextEditingController();

  final FocusNode _waterBinderRatioFocusNode = FocusNode();
  final FocusNode _percAddFocusNode = FocusNode();
  final FocusNode _cementFocusNode = FocusNode();
  final FocusNode _pofaFocusNode = FocusNode();
  final FocusNode _fineAggFocusNode = FocusNode();
  final FocusNode _coarseAggFocusNode = FocusNode();
  final FocusNode _waterFocusNode = FocusNode();
  final FocusNode _sio2FocusNode = FocusNode();
  final FocusNode _al2o3FocusNode = FocusNode();
  final FocusNode _fe2o3FocusNode = FocusNode();
  final FocusNode _caoFocusNode = FocusNode();
  final FocusNode _loiFocusNode = FocusNode();
  final FocusNode _ageFocusNode = FocusNode();
  final FocusNode _superplasticiserFocusNode = FocusNode();

  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _waterBinderRatioController.dispose();
    _percAddController.dispose();
    _cementController.dispose();
    _pofaController.dispose();
    _fineAggController.dispose();
    _coarseAggController.dispose();
    _waterController.dispose();
    _sio2Controller.dispose();
    _al2o3Controller.dispose();
    _fe2o3Controller.dispose();
    _caoController.dispose();
    _loiController.dispose();
    _ageController.dispose();
    _superplasticiserController.dispose();

    _waterBinderRatioFocusNode.dispose();
    _percAddFocusNode.dispose();
    _cementFocusNode.dispose();
    _pofaFocusNode.dispose();
    _fineAggFocusNode.dispose();
    _coarseAggFocusNode.dispose();
    _waterFocusNode.dispose();
    _sio2FocusNode.dispose();
    _al2o3FocusNode.dispose();
    _fe2o3FocusNode.dispose();
    _caoFocusNode.dispose();
    _loiFocusNode.dispose();
    _ageFocusNode.dispose();
    _superplasticiserFocusNode.dispose();

    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) {
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
                          model: model,
                          pageController: widget.pageController,
                          waterBinderRatioController: _waterBinderRatioController,
                          percAddController: _percAddController,
                          cementController: _cementController,
                          pofaController: _pofaController,
                          fineAggController: _fineAggController,
                          coarseAggController: _coarseAggController,
                          waterController: _waterController,
                          sio2Controller: _sio2Controller,
                          al2o3Controller: _al2o3Controller,
                          fe2o3Controller: _fe2o3Controller,
                          caoController: _caoController,
                          loiController: _loiController,
                          ageController: _ageController,
                          superplasticiserController: _superplasticiserController,
                          waterBinderRatioFocusNode: _waterBinderRatioFocusNode,
                          percAddFocusNode: _percAddFocusNode,
                          cementFocusNode: _cementFocusNode,
                          pofaFocusNode: _pofaFocusNode,
                          fineAggFocusNode: _fineAggFocusNode,
                          coarseAggFocusNode: _coarseAggFocusNode,
                          waterFocusNode: _waterFocusNode,
                          sio2FocusNode: _sio2FocusNode,
                          al2o3FocusNode: _al2o3FocusNode,
                          fe2o3FocusNode: _fe2o3FocusNode,
                          caoFocusNode: _caoFocusNode,
                          loiFocusNode: _loiFocusNode,
                          ageFocusNode: _ageFocusNode,
                          superplasticiserFocusNode: _superplasticiserFocusNode,
                        ),
                        const AboutPageLandscape(),
                      } else ...{
                        HomePagePortrait(
                          model: model,
                          pageController: widget.pageController,
                          waterBinderRatioController: _waterBinderRatioController,
                          percAddController: _percAddController,
                          cementController: _cementController,
                          pofaController: _pofaController,
                          fineAggController: _fineAggController,
                          coarseAggController: _coarseAggController,
                          waterController: _waterController,
                          sio2Controller: _sio2Controller,
                          al2o3Controller: _al2o3Controller,
                          fe2o3Controller: _fe2o3Controller,
                          caoController: _caoController,
                          loiController: _loiController,
                          ageController: _ageController,
                          superplasticiserController: _superplasticiserController,
                          waterBinderRatioFocusNode: _waterBinderRatioFocusNode,
                          percAddFocusNode: _percAddFocusNode,
                          cementFocusNode: _cementFocusNode,
                          pofaFocusNode: _pofaFocusNode,
                          fineAggFocusNode: _fineAggFocusNode,
                          coarseAggFocusNode: _coarseAggFocusNode,
                          waterFocusNode: _waterFocusNode,
                          sio2FocusNode: _sio2FocusNode,
                          al2o3FocusNode: _al2o3FocusNode,
                          fe2o3FocusNode: _fe2o3FocusNode,
                          caoFocusNode: _caoFocusNode,
                          loiFocusNode: _loiFocusNode,
                          ageFocusNode: _ageFocusNode,
                          superplasticiserFocusNode: _superplasticiserFocusNode,
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
      },
    );
  }
}
