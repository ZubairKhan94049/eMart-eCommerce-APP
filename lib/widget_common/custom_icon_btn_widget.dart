import 'package:e_commerce/consts/consts.dart';
import 'package:e_commerce/widget_common/smalltext_widget.dart';

Widget homeButton({
  double? height,
  double? width,
  String? title,
  String? icon,
  VoidCallback? onTap,
}) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: whiteColor,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          icon!,
          width: 26,
        ),
        const SizedBox(
          height: 10,
        ),
        SmallText(
          text: title!,
          family: semibold,
          color: darkFontGrey,
        ),
      ],
    ),
  );
}
