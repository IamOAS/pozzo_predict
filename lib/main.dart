import 'package:pozzo_predict/core/utils/exports.dart';
import 'package:pozzo_predict/ui/views/dashboard.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const App(),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      return ScreenUtilInit(
        designSize: orientation == Orientation.landscape ? const Size(1440, 1024) : const Size(375, 812),
        builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: appThemeData,
          title: 'Pozzo Predict',
          home: const AuthView(),
        ),
      );
    });
  }
}
