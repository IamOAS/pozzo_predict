import 'package:pozzo_predict/core/models/prediction_model.dart';
import 'package:pozzo_predict/core/utils/exports.dart';
import 'package:pozzo_predict/ui/views/home/home_viewmodel.dart';
import 'package:pozzo_predict/ui/widgets/custom_form_field.dart';

class HomePageLandscape extends StatefulWidget {
  final HomeViewModel model;
  final PageController pageController;

  final TextEditingController waterBinderRatioController;
  final TextEditingController percAddController;
  final TextEditingController cementController;
  final TextEditingController pofaController;
  final TextEditingController fineAggController;
  final TextEditingController coarseAggController;
  final TextEditingController waterController;
  final TextEditingController sio2Controller;
  final TextEditingController al2o3Controller;
  final TextEditingController fe2o3Controller;
  final TextEditingController caoController;
  final TextEditingController loiController;
  final TextEditingController ageController;
  final TextEditingController superplasticiserController;

  final FocusNode waterBinderRatioFocusNode;
  final FocusNode percAddFocusNode;
  final FocusNode cementFocusNode;
  final FocusNode pofaFocusNode;
  final FocusNode fineAggFocusNode;
  final FocusNode coarseAggFocusNode;
  final FocusNode waterFocusNode;
  final FocusNode sio2FocusNode;
  final FocusNode al2o3FocusNode;
  final FocusNode fe2o3FocusNode;
  final FocusNode caoFocusNode;
  final FocusNode loiFocusNode;
  final FocusNode ageFocusNode;
  final FocusNode superplasticiserFocusNode;

  const HomePageLandscape({
    super.key,
    required this.pageController,
    required this.waterBinderRatioController,
    required this.percAddController,
    required this.cementController,
    required this.pofaController,
    required this.fineAggController,
    required this.coarseAggController,
    required this.waterController,
    required this.sio2Controller,
    required this.al2o3Controller,
    required this.fe2o3Controller,
    required this.caoController,
    required this.loiController,
    required this.ageController,
    required this.superplasticiserController,
    required this.waterBinderRatioFocusNode,
    required this.percAddFocusNode,
    required this.cementFocusNode,
    required this.pofaFocusNode,
    required this.fineAggFocusNode,
    required this.coarseAggFocusNode,
    required this.waterFocusNode,
    required this.sio2FocusNode,
    required this.al2o3FocusNode,
    required this.fe2o3FocusNode,
    required this.caoFocusNode,
    required this.loiFocusNode,
    required this.ageFocusNode,
    required this.superplasticiserFocusNode,
    required this.model,
  });

  @override
  State<HomePageLandscape> createState() => _HomePageLandscapeState();
}

class _HomePageLandscapeState extends State<HomePageLandscape> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
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
                    'Welcome',
                    style: CustomTextStyle.h1.bold.withColor(
                      const Color(0xffffffff),
                    ),
                  ),
                  10.szbh,
                  Text(
                    'Kindly input the information below correctly.',
                    style: CustomTextStyle.h2.regular.withColor(
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
                  Row(
                    children: [
                      // Water/binder ratio
                      Flexible(
                        child: CustomTextFormField(
                          label: 'Water/binder ratio',
                          controller: widget.waterBinderRatioController,
                          focusNode: widget.waterBinderRatioFocusNode,
                          secondFocusNode: widget.percAddFocusNode,
                          contentPadding: 16.hp,
                          keyboardType: TextInputType.text,
                          hintText: 'Enter water/binder ratio',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Water/binder ratio is required';
                            }
                            return null;
                          },
                        ),
                      ),
                      45.szbw,
                      // Percentage of addition
                      Flexible(
                        child: CustomTextFormField(
                          label: 'Percentage of addition',
                          controller: widget.percAddController,
                          focusNode: widget.percAddFocusNode,
                          secondFocusNode: widget.cementFocusNode,
                          contentPadding: 16.hp,
                          keyboardType: TextInputType.text,
                          hintText: 'Enter percentage of addition',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Percentage of addition is required';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                  20.szbh,
                  Row(
                    children: [
                      // Cement content (kg/m³)
                      Flexible(
                        child: CustomTextFormField(
                          label: 'Cement content (kg/m³)',
                          controller: widget.cementController,
                          focusNode: widget.cementFocusNode,
                          secondFocusNode: widget.pofaFocusNode,
                          contentPadding: 16.hp,
                          keyboardType: TextInputType.text,
                          hintText: 'Enter cement content',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Cement content (kg/m³) is required';
                            }
                            return null;
                          },
                        ),
                      ),
                      45.szbw,
                      // POFA content (kg/m³)
                      Flexible(
                        child: CustomTextFormField(
                          label: 'POFA content (kg/m³)',
                          controller: widget.pofaController,
                          focusNode: widget.pofaFocusNode,
                          secondFocusNode: widget.fineAggFocusNode,
                          contentPadding: 16.hp,
                          keyboardType: TextInputType.text,
                          hintText: 'Enter POFA content',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'POFA content (kg/m³) is required';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                  20.szbh,
                  Row(
                    children: [
                      // Fine aggregate content (kg/m³)
                      Flexible(
                        child: CustomTextFormField(
                          label: 'Fine aggregate content (kg/m³)',
                          controller: widget.fineAggController,
                          focusNode: widget.fineAggFocusNode,
                          secondFocusNode: widget.coarseAggFocusNode,
                          contentPadding: 16.hp,
                          keyboardType: TextInputType.text,
                          hintText: 'Enter fine aggregate content',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Fine aggregate content (kg/m³) is required';
                            }
                            return null;
                          },
                        ),
                      ),
                      45.szbw,
                      // Coarse aggregate content (kg/m³)
                      Flexible(
                        child: CustomTextFormField(
                          label: 'Coarse aggregate content (kg/m³)',
                          controller: widget.coarseAggController,
                          focusNode: widget.coarseAggFocusNode,
                          secondFocusNode: widget.waterFocusNode,
                          contentPadding: 16.hp,
                          keyboardType: TextInputType.text,
                          hintText: 'Enter coarse aggregate content',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Coarse aggregate content (kg/m³) is required';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                  20.szbh,
                  Row(
                    children: [
                      // Water content (kg/m³)
                      Flexible(
                        child: CustomTextFormField(
                          label: 'Water content (kg/m³)',
                          controller: widget.waterController,
                          focusNode: widget.waterFocusNode,
                          secondFocusNode: widget.sio2FocusNode,
                          contentPadding: 16.hp,
                          keyboardType: TextInputType.text,
                          hintText: 'Enter water content',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Water content (kg/m³) is required';
                            }
                            return null;
                          },
                        ),
                      ),
                      45.szbw,
                      // Silicon dioxide content
                      Flexible(
                        child: CustomTextFormField(
                          label: 'Silicon dioxide content',
                          controller: widget.sio2Controller,
                          focusNode: widget.sio2FocusNode,
                          secondFocusNode: widget.al2o3FocusNode,
                          contentPadding: 16.hp,
                          keyboardType: TextInputType.text,
                          hintText: 'Enter silicon dioxide content',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Silicon dioxide content is required';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                  20.szbh,
                  Row(
                    children: [
                      // Aluminium oxide content
                      Flexible(
                        child: CustomTextFormField(
                          label: 'Aluminium oxide content',
                          controller: widget.al2o3Controller,
                          focusNode: widget.al2o3FocusNode,
                          secondFocusNode: widget.fe2o3FocusNode,
                          contentPadding: 16.hp,
                          keyboardType: TextInputType.text,
                          hintText: 'Enter aluminium oxide content',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Aluminium oxide content is required';
                            }
                            return null;
                          },
                        ),
                      ),
                      45.szbw,
                      // Iron oxide content
                      Flexible(
                        child: CustomTextFormField(
                          label: 'Iron oxide content',
                          controller: widget.fe2o3Controller,
                          focusNode: widget.fe2o3FocusNode,
                          secondFocusNode: widget.caoFocusNode,
                          contentPadding: 16.hp,
                          keyboardType: TextInputType.text,
                          hintText: 'Enter iron oxide content',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Iron oxide content is required';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                  20.szbh,
                  Row(
                    children: [
                      // Calcium oxide content
                      Flexible(
                        child: CustomTextFormField(
                          label: 'Calcium oxide content',
                          controller: widget.caoController,
                          focusNode: widget.caoFocusNode,
                          secondFocusNode: widget.loiFocusNode,
                          contentPadding: 16.hp,
                          keyboardType: TextInputType.text,
                          hintText: 'Enter calcium oxide content',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Calcium oxide content is required';
                            }
                            return null;
                          },
                        ),
                      ),
                      45.szbw,
                      // Loss on ignition
                      Flexible(
                        child: CustomTextFormField(
                          label: 'Loss on ignition',
                          controller: widget.loiController,
                          focusNode: widget.loiFocusNode,
                          secondFocusNode: widget.ageFocusNode,
                          contentPadding: 16.hp,
                          keyboardType: TextInputType.text,
                          hintText: 'Enter loss on ignition',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Loss on ignition is required';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                  20.szbh,
                  Row(
                    children: [
                      // Curing age (days)
                      Flexible(
                        child: CustomTextFormField(
                          label: 'Curing age (days)',
                          controller: widget.ageController,
                          focusNode: widget.ageFocusNode,
                          secondFocusNode: widget.superplasticiserFocusNode,
                          contentPadding: 16.hp,
                          keyboardType: TextInputType.text,
                          hintText: 'Enter curing age',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Curing age (days) is required';
                            }
                            return null;
                          },
                        ),
                      ),
                      45.szbw,
                      // Superplasticiser content (kg/m³)
                      Flexible(
                        child: CustomTextFormField(
                          label: 'Superplasticiser content (kg/m³)',
                          controller: widget.superplasticiserController,
                          focusNode: widget.superplasticiserFocusNode,
                          contentPadding: 16.hp,
                          keyboardType: TextInputType.text,
                          hintText: 'Enter superplasticiser content',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Superplasticiser content (kg/m³) is required';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                  59.szbh,
                  CustomListenableButton(
                    formKey: _formKey,
                    isLoading: widget.model.isBusy,
                    textEditingControllers: [
                      widget.waterBinderRatioController,
                      widget.percAddController,
                      widget.cementController,
                      widget.pofaController,
                      widget.fineAggController,
                      widget.coarseAggController,
                      widget.waterController,
                      widget.sio2Controller,
                      widget.al2o3Controller,
                      widget.fe2o3Controller,
                      widget.caoController,
                      widget.loiController,
                      widget.ageController,
                      widget.superplasticiserController,
                    ],
                    text: 'Submit',
                    onTap: () async {
                      bool? response = await widget.model.getPrediction(
                        predictionModel: PredictionModel(
                          waterBinderRatio: widget.waterBinderRatioController.text.trim(),
                          percAdd: widget.percAddController.text.trim(),
                          cement: widget.cementController.text.trim(),
                          pofa: widget.pofaController.text.trim(),
                          fineAgg: widget.fineAggController.text.trim(),
                          coarseAgg: widget.coarseAggController.text.trim(),
                          water: widget.waterController.text.trim(),
                          sio2: widget.sio2Controller.text.trim(),
                          al2o3: widget.al2o3Controller.text.trim(),
                          fe2o3: widget.fe2o3Controller.text.trim(),
                          cao: widget.caoController.text.trim(),
                          loi: widget.loiController.text.trim(),
                          age: widget.ageController.text.trim(),
                          superplasticiser: widget.superplasticiserController.text.trim(),
                        ),
                        context: context,
                      );
                      if (response == true) {
                        widget.pageController.jumpToPage(3);
                      }
                    },
                  ),
                  30.szbh,
                ],
              ),
            ),
            60.szbh,
          ],
        ),
      ),
    );
  }
}
