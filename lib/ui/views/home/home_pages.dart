import 'package:pozzo_predict/core/utils/exports.dart';
import 'package:pozzo_predict/ui/widgets/custom_form_field.dart';

class HomePageLandscape extends StatefulWidget {
  final PageController pageController;
  final TextEditingController pozzolansController;
  final TextEditingController curingAgeController;
  final TextEditingController waterCementRatioController;
  final TextEditingController weightFineAggregateController;
  final TextEditingController weightCementController;
  final TextEditingController weightCoarseAggregateController;
  final TextEditingController weightWaterController;
  final TextEditingController weightPozzolanController;

  final FocusNode pozzolansFocusNode;
  final FocusNode curingAgeFocusNode;
  final FocusNode waterCementRatioFocusNode;
  final FocusNode weightFineAggregateFocusNode;
  final FocusNode weightCementFocusNode;
  final FocusNode weightCoarseAggregateFocusNode;
  final FocusNode weightWaterFocusNode;
  final FocusNode weightPozzolanFocusNode;

  const HomePageLandscape({
    super.key,
    required this.pageController,
    required this.pozzolansController,
    required this.curingAgeController,
    required this.waterCementRatioController,
    required this.weightFineAggregateController,
    required this.weightCementController,
    required this.weightCoarseAggregateController,
    required this.weightWaterController,
    required this.weightPozzolanController,
    required this.pozzolansFocusNode,
    required this.curingAgeFocusNode,
    required this.waterCementRatioFocusNode,
    required this.weightFineAggregateFocusNode,
    required this.weightCementFocusNode,
    required this.weightCoarseAggregateFocusNode,
    required this.weightWaterFocusNode,
    required this.weightPozzolanFocusNode,
  });

  @override
  State<HomePageLandscape> createState() => _HomePageLandscapeState();
}

class _HomePageLandscapeState extends State<HomePageLandscape> {
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
                  'Welcome',
                  style: CustomTextStyle.h1.bold.withColor(
                    const Color(0xffffffff),
                  ),
                ),
                10.szbh,
                Text(
                  'Kindly input the information correctly',
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
                // Pozzolans information
                Text(
                  'Pozzolans information',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    fontFamily: GoogleFonts.inter().fontFamily,
                    color: const Color(0xFF291515),
                  ),
                ),
                16.szbh,
                Divider(
                  color: const Color(0xff008042).withOpacity(0.29),
                ),
                35.szbh,
                // Pozzolans and Curing age
                Row(
                  children: [
                    // Pozzolans
                    Flexible(
                      child: CustomTextFormField(
                        label: 'Pozzolans',
                        controller: widget.pozzolansController,
                        focusNode: widget.pozzolansFocusNode,
                        secondFocusNode: widget.curingAgeFocusNode,
                        contentPadding: 16.hp,
                        keyboardType: TextInputType.text,
                        hintText: 'Select e.g flyash',
                        onChanged: (value) {
                          setState(() {});
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Pozzolans is required';
                          }
                          return null;
                        },
                      ),
                    ),
                    45.szbw,
                    // Curing Age
                    Flexible(
                      child: CustomTextFormField(
                        label: 'Curing Age',
                        controller: widget.curingAgeController,
                        focusNode: widget.curingAgeFocusNode,
                        secondFocusNode: widget.waterCementRatioFocusNode,
                        contentPadding: 16.hp,
                        keyboardType: TextInputType.text,
                        hintText: 'Select e.g flyash',
                        onChanged: (value) {
                          setState(() {});
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Curing Age is required';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
                20.szbh,
                // Water/cement ratio and Weight of fine aggregate used (kg/m^3)
                Row(
                  children: [
                    // Water/cement ratio
                    Flexible(
                      child: CustomTextFormField(
                        label: 'Water/cement ratio',
                        controller: widget.waterCementRatioController,
                        focusNode: widget.waterCementRatioFocusNode,
                        secondFocusNode: widget.weightFineAggregateFocusNode,
                        contentPadding: 16.hp,
                        keyboardType: TextInputType.text,
                        hintText: 'Select e.g 3.0',
                        onChanged: (value) {
                          setState(() {});
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Water/cement ratio is required';
                          }
                          return null;
                        },
                      ),
                    ),
                    45.szbw,
                    // Weight of fine aggregate used (kg/m^3)
                    Flexible(
                      child: CustomTextFormField(
                        label: 'Weight of fine aggregate used (kg/m^3)',
                        controller: widget.weightFineAggregateController,
                        focusNode: widget.weightFineAggregateFocusNode,
                        secondFocusNode: widget.weightCementFocusNode,
                        contentPadding: 16.hp,
                        keyboardType: TextInputType.text,
                        hintText: 'e.g 100',
                        onChanged: (value) {
                          setState(() {});
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Weight of fine aggregate used (kg/m^3) is required';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
                20.szbh,
                // Weight of cement (kg/m^3) and Weight of coarse aggregate used (kg/m^3)
                Row(
                  children: [
                    // Weight of cement (kg/m^3)
                    Flexible(
                      child: CustomTextFormField(
                        label: 'Weight of cement (kg/m^3)',
                        controller: widget.weightCementController,
                        focusNode: widget.weightCementFocusNode,
                        secondFocusNode: widget.weightCoarseAggregateFocusNode,
                        contentPadding: 16.hp,
                        keyboardType: TextInputType.text,
                        hintText: 'e.g 100',
                        onChanged: (value) {
                          setState(() {});
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Weight of cement (kg/m^3) is required';
                          }
                          return null;
                        },
                      ),
                    ),
                    45.szbw,
                    // Weight of coarse aggregate used (kg/m^3)
                    Flexible(
                      child: CustomTextFormField(
                        label: 'Weight of coarse aggregate used (kg/m^3)',
                        controller: widget.weightCoarseAggregateController,
                        focusNode: widget.weightCoarseAggregateFocusNode,
                        secondFocusNode: widget.weightWaterFocusNode,
                        contentPadding: 16.hp,
                        keyboardType: TextInputType.text,
                        hintText: 'e.g 100',
                        onChanged: (value) {
                          setState(() {});
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Weight of coarse aggregate used (kg/m^3) is required';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
                20.szbh,
                // Weight of water used (kg/m^3) and Weight of pozzolan used (kg/m^3)
                Row(
                  children: [
                    // Weight of water used (kg/m^3)
                    Flexible(
                      child: CustomTextFormField(
                        label: 'Weight of water used (kg/m^3)',
                        controller: widget.weightWaterController,
                        focusNode: widget.weightWaterFocusNode,
                        secondFocusNode: widget.weightPozzolanFocusNode,
                        contentPadding: 16.hp,
                        keyboardType: TextInputType.text,
                        hintText: 'e.g 100',
                        onChanged: (value) {
                          setState(() {});
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Weight of water used (kg/m^3) is required';
                          }
                          return null;
                        },
                      ),
                    ),
                    45.szbw,
                    // Weight of pozzolan used (kg/m^3)
                    Flexible(
                      child: CustomTextFormField(
                        label: 'Weight of pozzolan used (kg/m^3)',
                        controller: widget.weightPozzolanController,
                        focusNode: widget.weightPozzolanFocusNode,
                        contentPadding: 16.hp,
                        keyboardType: TextInputType.text,
                        hintText: 'e.g 100',
                        onChanged: (value) {
                          setState(() {});
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Weight of pozzolan used (kg/m^3) is required';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
                59.szbh,
                // Submit button
                CustomButton(
                  text: 'Submit',
                  onTap: () {
                    widget.pageController.jumpToPage(3);
                  },
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

class HomePagePortrait extends StatefulWidget {
  final PageController pageController;
  final TextEditingController pozzolansController;
  final TextEditingController curingAgeController;
  final TextEditingController waterCementRatioController;
  final TextEditingController weightFineAggregateController;
  final TextEditingController weightCementController;
  final TextEditingController weightCoarseAggregateController;
  final TextEditingController weightWaterController;
  final TextEditingController weightPozzolanController;

  final FocusNode pozzolansFocusNode;
  final FocusNode curingAgeFocusNode;
  final FocusNode waterCementRatioFocusNode;
  final FocusNode weightFineAggregateFocusNode;
  final FocusNode weightCementFocusNode;
  final FocusNode weightCoarseAggregateFocusNode;
  final FocusNode weightWaterFocusNode;
  final FocusNode weightPozzolanFocusNode;

  const HomePagePortrait({
    super.key,
    required this.pageController,
    required this.pozzolansController,
    required this.curingAgeController,
    required this.waterCementRatioController,
    required this.weightFineAggregateController,
    required this.weightCementController,
    required this.weightCoarseAggregateController,
    required this.weightWaterController,
    required this.weightPozzolanController,
    required this.pozzolansFocusNode,
    required this.curingAgeFocusNode,
    required this.waterCementRatioFocusNode,
    required this.weightFineAggregateFocusNode,
    required this.weightCementFocusNode,
    required this.weightCoarseAggregateFocusNode,
    required this.weightWaterFocusNode,
    required this.weightPozzolanFocusNode,
  });

  @override
  State<HomePagePortrait> createState() => _HomePagePortraitState();
}

class _HomePagePortraitState extends State<HomePagePortrait> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                  'Kindly input the information correctly',
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
                // Pozzolans information
                Text(
                  'Pozzolans information',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: GoogleFonts.inter().fontFamily,
                    color: const Color(0xFF291515),
                  ),
                ),
                16.szbh,
                Divider(
                  color: const Color(0xff008042).withOpacity(0.29),
                ),
                20.szbh,
                // Pozzolans
                CustomTextFormField(
                  label: 'Pozzolans',
                  controller: widget.pozzolansController,
                  focusNode: widget.pozzolansFocusNode,
                  secondFocusNode: widget.curingAgeFocusNode,
                  contentPadding: 16.hp,
                  keyboardType: TextInputType.text,
                  hintText: 'Select e.g flyash',
                  onChanged: (value) {
                    setState(() {});
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Pozzolans is required';
                    }
                    return null;
                  },
                ),
                20.szbh,
                // Curing Age
                CustomTextFormField(
                  label: 'Curing Age',
                  controller: widget.curingAgeController,
                  focusNode: widget.curingAgeFocusNode,
                  secondFocusNode: widget.waterCementRatioFocusNode,
                  contentPadding: 16.hp,
                  keyboardType: TextInputType.text,
                  hintText: 'Select e.g flyash',
                  onChanged: (value) {
                    setState(() {});
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Curing Age is required';
                    }
                    return null;
                  },
                ),
                20.szbh,
                // Water/cement ratio
                CustomTextFormField(
                  label: 'Water/cement ratio',
                  controller: widget.waterCementRatioController,
                  focusNode: widget.waterCementRatioFocusNode,
                  secondFocusNode: widget.weightFineAggregateFocusNode,
                  contentPadding: EdgeInsets.all(16.w),
                  keyboardType: TextInputType.text,
                  hintText: 'Select e.g 3.0',
                  onChanged: (value) {
                    setState(() {});
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Water/cement ratio is required';
                    }
                    return null;
                  },
                ),
                20.szbh,
                // Weight of fine aggregate used (kg/m^3)
                CustomTextFormField(
                  label: 'Weight of fine aggregate used (kg/m^3)',
                  controller: widget.weightFineAggregateController,
                  focusNode: widget.weightFineAggregateFocusNode,
                  secondFocusNode: widget.weightCementFocusNode,
                  contentPadding: EdgeInsets.all(16.w),
                  keyboardType: TextInputType.text,
                  hintText: 'e.g 100',
                  onChanged: (value) {
                    setState(() {});
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Weight of fine aggregate used (kg/m^3) is required';
                    }
                    return null;
                  },
                ),
                20.szbh,
                // Weight of cement (kg/m^3)
                CustomTextFormField(
                  label: 'Weight of cement (kg/m^3)',
                  controller: widget.weightCementController,
                  focusNode: widget.weightCementFocusNode,
                  secondFocusNode: widget.weightCoarseAggregateFocusNode,
                  contentPadding: EdgeInsets.all(16.w),
                  keyboardType: TextInputType.text,
                  hintText: 'e.g 100',
                  onChanged: (value) {
                    setState(() {});
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Weight of cement (kg/m^3) is required';
                    }
                    return null;
                  },
                ),
                20.szbh,
                // Weight of coarse aggregate used (kg/m^3)
                CustomTextFormField(
                  label: 'Weight of coarse aggregate used (kg/m^3)',
                  controller: widget.weightCoarseAggregateController,
                  focusNode: widget.weightCoarseAggregateFocusNode,
                  secondFocusNode: widget.weightWaterFocusNode,
                  contentPadding: EdgeInsets.all(16.w),
                  keyboardType: TextInputType.text,
                  hintText: 'e.g 100',
                  onChanged: (value) {
                    setState(() {});
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Weight of coarse aggregate used (kg/m^3) is required';
                    }
                    return null;
                  },
                ),
                20.szbh,
                // Weight of water used (kg/m^3)
                CustomTextFormField(
                  label: 'Weight of water used (kg/m^3)',
                  controller: widget.weightWaterController,
                  focusNode: widget.weightWaterFocusNode,
                  secondFocusNode: widget.weightPozzolanFocusNode,
                  contentPadding: EdgeInsets.all(16.w),
                  keyboardType: TextInputType.text,
                  hintText: 'e.g 100',
                  onChanged: (value) {
                    setState(() {});
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Weight of water used (kg/m^3) is required';
                    }
                    return null;
                  },
                ),
                20.szbh,
                // Weight of pozzolan used (kg/m^3)
                CustomTextFormField(
                  label: 'Weight of pozzolan used (kg/m^3)',
                  controller: widget.weightPozzolanController,
                  focusNode: widget.weightPozzolanFocusNode,
                  contentPadding: EdgeInsets.all(16.w),
                  keyboardType: TextInputType.text,
                  hintText: 'e.g 100',
                  onChanged: (value) {
                    setState(() {});
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Weight of pozzolan used (kg/m^3) is required';
                    }
                    return null;
                  },
                ),
                59.szbh,
                // Submit button
                CustomButton(
                  text: 'Submit',
                  onTap: () {
                    widget.pageController.jumpToPage(3);
                  },
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
