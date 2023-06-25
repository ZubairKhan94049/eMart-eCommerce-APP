import 'package:e_commerce/consts/consts.dart';
import 'package:e_commerce/consts/lists.dart';
import 'package:e_commerce/widget_common/applogo_widget.dart';
import 'package:e_commerce/widget_common/bg_widget.dart';
import 'package:e_commerce/widget_common/largetext_widget.dart';
import 'package:e_commerce/widget_common/smalltext_widget.dart';

import '../../widget_common/custom_button_widget.dart';
import '../../widget_common/customtextfield_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return bgWidget(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
            body: Center(
        child: Column(
          children: [
            // 10 % height
            SizedBox(height: size.height * 0.1),
            appLogoWidget(),
            const SizedBox(height: 10),
        
            const LargeText(
              text: "Log in to $appname",
              fontSize: 18,
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 3,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              width: size.width - 70,
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  customTextField(
                      title: "Email",
                      hintText: "zubair@gmail.com",
                      controller: TextEditingController()),
                  const SizedBox(
                    height: 10,
                  ),
                  customTextField(
                      title: "Password",
                      hintText: "******",
                      controller: TextEditingController()),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const SmallText(
                        text: "Forget password",
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width - 50,
                    child: customButton(
                      title: "Log In",
                      bgColor: redColor,
                      titleColor: whiteColor,
                      onPress: () {},
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const SmallText(
                    text: "or create a new account",
                    color: fontGrey,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    width: size.width - 50,
                    child: customButton(
                      title: "Sign up",
                      bgColor: lightGolden,
                      titleColor: redColor,
                      onPress: () {},
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SmallText(
                    text: "Login with ",
                    color: fontGrey,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(socialIconsList.length, (index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: lightGrey,
                            radius: 25,
                            child: Image.asset(
                              socialIconsList[index],
                              width: 30,
                            ),
                          ),
                        );
                      }).toList()),
                ],
              ),
            ),
          ],
        ),
            ),
          ));
  }
}
