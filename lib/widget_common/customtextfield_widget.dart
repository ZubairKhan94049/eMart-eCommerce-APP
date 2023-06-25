import 'package:e_commerce/consts/consts.dart';
import 'package:e_commerce/widget_common/smalltext_widget.dart';

Widget customTextField(
    {String title = "",
    String hintText = "",
    TextEditingController? controller}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SmallText(
        text: title,
        color: redColor,
      ),
      const SizedBox(height: 5),
      TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            fontFamily: semibold,
            color: textfieldGrey,
          ),
          isDense: true,
          fillColor: lightGrey,
          filled: true,
          border: InputBorder.none,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: redColor,
            ),
          ),
        ),
      ),
    ],
  );
}
