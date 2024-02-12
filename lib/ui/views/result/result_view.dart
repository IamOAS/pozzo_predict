import 'package:pozzo_predict/core/utils/exports.dart';

import 'resultPages/landscape.dart';
import 'resultPages/portrait.dart';
import 'result_viewmodel.dart';

class ResultView extends StatefulWidget {
  final PageController pageController;

  const ResultView({
    super.key,
    required this.pageController,
  });

  @override
  State<ResultView> createState() => _ResultViewState();
}

class _ResultViewState extends State<ResultView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ResultViewModel>.reactive(
        viewModelBuilder: () => ResultViewModel(),
        builder: (context, model, child) {
          return OrientationBuilder(builder: (context, orientation) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (orientation == Orientation.landscape) ...{
                    ResultPageLandscape(
                      pageController: widget.pageController,
                      model: model,
                    ),
                  } else ...{
                    ResultPagePortrait(
                      pageController: widget.pageController,
                      model: model,
                    )
                  },
                ],
              ),
            );
          });
        });
  }
}
