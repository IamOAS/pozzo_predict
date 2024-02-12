import 'package:pozzo_predict/core/models/prediction_model.dart';
import 'package:pozzo_predict/core/utils/exports.dart';
import 'package:pozzo_predict/ui/views/home/home_viewmodel.dart';
import 'package:pozzo_predict/ui/widgets/custom_form_field.dart';

class HomePagePortrait extends StatefulWidget {
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

  const HomePagePortrait({
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
  State<HomePagePortrait> createState() => _HomePagePortraitState();
}

class _HomePagePortraitState extends State<HomePagePortrait> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Container(
              height: 285 / 2.h,
              width: double.infinity,
              color: Theme.of(context).primaryColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome',
                    style: CustomTextStyle.h2.bold.withColor(
                      const Color(0xffffffff),
                    ),
                  ),
                  10.szbh,
                  Text(
                    'Kindly input the information below correctly.',
                    style: CustomTextStyle.medium.regular.withColor(
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
                  // Water/binder ratio
                  CustomTextFormField(
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
                  20.szbh,
                  // Percentage of addition
                  CustomTextFormField(
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
                  20.szbh,
                  // Cement content (kg/m³)
                  CustomTextFormField(
                    label: 'Cement content (kg/m³)',
                    controller: widget.cementController,
                    focusNode: widget.cementFocusNode,
                    secondFocusNode: widget.pofaFocusNode,
                    contentPadding: 16.hp,
                    keyboardType: TextInputType.text,
                    hintText: 'Enter cement content',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Cement content is required';
                      }
                      return null;
                    },
                  ),
                  20.szbh,
                  // POFA content (kg/m³)
                  CustomTextFormField(
                    label: 'POFA content (kg/m³)',
                    controller: widget.pofaController,
                    focusNode: widget.pofaFocusNode,
                    secondFocusNode: widget.fineAggFocusNode,
                    contentPadding: 16.hp,
                    keyboardType: TextInputType.text,
                    hintText: 'Enter POFA content',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'POFA content is required';
                      }
                      return null;
                    },
                  ),
                  20.szbh,
                  // Fine aggregate content (kg/m³)
                  CustomTextFormField(
                    label: 'Fine aggregate content (kg/m³)',
                    controller: widget.fineAggController,
                    focusNode: widget.fineAggFocusNode,
                    secondFocusNode: widget.coarseAggFocusNode,
                    contentPadding: 16.hp,
                    keyboardType: TextInputType.text,
                    hintText: 'Enter fine aggregate content',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Fine aggregate content is required';
                      }
                      return null;
                    },
                  ),
                  20.szbh,
                  // Coarse aggregate content (kg/m³)
                  CustomTextFormField(
                    label: 'Coarse aggregate content (kg/m³)',
                    controller: widget.coarseAggController,
                    focusNode: widget.coarseAggFocusNode,
                    secondFocusNode: widget.waterFocusNode,
                    contentPadding: 16.hp,
                    keyboardType: TextInputType.text,
                    hintText: 'Enter coarse aggregate content',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Coarse aggregate content is required';
                      }
                      return null;
                    },
                  ),
                  20.szbh,
                  // Water content (kg/m³)
                  CustomTextFormField(
                    label: 'Water content (kg/m³)',
                    controller: widget.waterController,
                    focusNode: widget.waterFocusNode,
                    secondFocusNode: widget.sio2FocusNode,
                    contentPadding: 16.hp,
                    keyboardType: TextInputType.text,
                    hintText: 'Enter water content',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Water content is required';
                      }
                      return null;
                    },
                  ),
                  20.szbh,
                  // Silicon dioxide content
                  CustomTextFormField(
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
                  20.szbh,
                  // Aluminium oxide content
                  CustomTextFormField(
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
                  20.szbh,
                  // Iron oxide content
                  CustomTextFormField(
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
                  20.szbh,
                  // Calcium oxide content
                  CustomTextFormField(
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
                  20.szbh,
                  // Loss on ignition
                  CustomTextFormField(
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
                  20.szbh,
                  // Curing age (days)
                  CustomTextFormField(
                    label: 'Curing age (days)',
                    controller: widget.ageController,
                    focusNode: widget.ageFocusNode,
                    secondFocusNode: widget.superplasticiserFocusNode,
                    contentPadding: 16.hp,
                    keyboardType: TextInputType.text,
                    hintText: 'Enter curing age',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Curing age is required';
                      }
                      return null;
                    },
                  ),
                  20.szbh,
                  // Superplasticiser content (kg/m³)
                  CustomTextFormField(
                    label: 'Superplasticiser content (kg/m³)',
                    controller: widget.superplasticiserController,
                    focusNode: widget.superplasticiserFocusNode,
                    contentPadding: 16.hp,
                    keyboardType: TextInputType.text,
                    hintText: 'Enter superplasticiser content',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Superplasticiser content is required';
                      }
                      return null;
                    },
                  ),
                  59.szbh,
                  // Submit button
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
