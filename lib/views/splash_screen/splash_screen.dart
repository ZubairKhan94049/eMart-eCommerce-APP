import 'package:e_commerce/consts/consts.dart';
import 'package:e_commerce/views/auth_screens/login_screen.dart';
import 'package:e_commerce/widget_common/applogo_widget.dart';
import 'package:e_commerce/widget_common/largetext_widget.dart';
import 'package:e_commerce/widget_common/smalltext_widget.dart';
import 'package:get/route_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen(){
    Future.delayed(const Duration(seconds: 3),(){
      Get.to(()=>const LoginScreen());
    });
  }
  @override
  void initState() {
    changeScreen();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                icSplashBg,
                width: 300,
              ),
            ),
            const SizedBox(height: 20),
            appLogoWidget(),
            const SizedBox(height: 10),
            const LargeText(text: appname),
            const SizedBox(height: 5),
            const SmallText(text: appversion),
            const Spacer(),
            const SmallText(text: credits, family: semibold,),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
