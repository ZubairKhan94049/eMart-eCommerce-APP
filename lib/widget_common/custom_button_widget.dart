import 'package:e_commerce/consts/consts.dart';
import 'package:e_commerce/widget_common/smalltext_widget.dart';

Widget customButton({onPress, title, titleColor, bgColor}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
        backgroundColor: bgColor, padding: const EdgeInsets.all(12)),
    onPressed: onPress,
    child: SmallText(
      text: title,
      color: titleColor,
    ),
  );
}
