import 'package:e_commerce/consts/consts.dart';
import 'package:e_commerce/widget_common/bg_widget.dart';
import 'package:e_commerce/widget_common/largetext_widget.dart';

class CategoryDetailes extends StatelessWidget {
  const CategoryDetailes({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      appBar: AppBar(
        title: LargeText(
          text: title,
          fontFamily: bold,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              children: [
                
              ],
            )
          ],
        ),
      ),
    ));
  }
}
