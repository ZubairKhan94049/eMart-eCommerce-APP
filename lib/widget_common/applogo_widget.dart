import 'package:e_commerce/consts/consts.dart';

Widget appLogoWidget() {
  // It is a method chaining syntax that allows you to apply multiple consecutive operations or modifications to an object in a concise and readable manner.
  // return Image.asset(icAppLogo).box.white.size(77, 77).padding(const EdgeInsets.all(8)).rounded.make();
  return Container(
     height: 77,
      width: 77,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
    child: Image.asset(
      icAppLogo,
      height: 77,
      width: 77,
    ),
  );
}
