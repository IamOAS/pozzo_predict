import 'package:pozzo_predict/core/utils/exports.dart';

Future customAlertDialog({
  required BuildContext context,
  required String message,
  bool isError = true,
  VoidCallback? onConfirm,
  bool isBarrierDismissible = false,
  Widget? secondButton,
  String? confirmationText,
}) async {
  await showDialog(
    barrierDismissible: isBarrierDismissible,
    context: context,
    builder: (BuildContext cxt) {
      return Align(
        alignment: Alignment.center,
        child: Container(
          width: MediaQuery.of(context).size.width / 1.5,
          margin: 32.hp,
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
          decoration: BoxDecoration(
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.circular(16.r),
            shape: BoxShape.rectangle,
          ),
          child: SingleChildScrollView(
            child: Material(
              color: const Color(0xffffffff),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Close icon
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.close_rounded,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ),
                  30.szbh,
                  // Title
                  Text(
                    isError ? 'Error!' : 'Success!',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      fontFamily: customFontFamily,
                      color: const Color(0xff000000),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  15.szbh,
                  // message
                  Text(
                    message,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontFamily: customFontFamily,
                      color: const Color(0xff000000),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  20.szbh,
                  CustomButton(
                    text: confirmationText ?? 'Okay',
                    onTap: () {
                      Navigator.pop(context);
                      if (onConfirm != null) {
                        onConfirm();
                      }
                    },
                  ),
                  if (secondButton != null) ...{
                    20.szbh,
                    secondButton,
                  },
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
