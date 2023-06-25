import 'package:e_commerce/consts/lists.dart';
import 'package:e_commerce/widget_common/applogo_widget.dart';
import 'package:e_commerce/widget_common/bg_widget.dart';
import 'package:e_commerce/widget_common/custom_button_widget.dart';
import 'package:e_commerce/widget_common/customtextfield_widget.dart';
import 'package:e_commerce/widget_common/largetext_widget.dart';
import 'package:e_commerce/widget_common/smalltext_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

import '../../consts/consts.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
              text: "Join the $appname",
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
                      title: "Name",
                      hintText: "jhontheripper",
                      controller: TextEditingController()),
                  const SizedBox(
                    height: 10,
                  ),
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
                  const SizedBox(
                    height: 10,
                  ),
                  customTextField(
                      title: "Confirm Password",
                      hintText: "******",
                      controller: TextEditingController()),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Checkbox(
                          checkColor: redColor,
                          value: false,
                          onChanged: (val) {}),
                      const SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                              text: "I agree to the ",
                              style: TextStyle(
                                color: fontGrey,
                                fontFamily: bold,
                              )),
                          TextSpan(
                              text: "Terms and Conditions ",
                              style: TextStyle(
                                color: redColor,
                                fontFamily: bold,
                              )),
                          TextSpan(
                              text: " and",
                              style: TextStyle(
                                color: fontGrey,
                                fontFamily: bold,
                              )),
                          TextSpan(
                              text: " Privacy and Poiciy",
                              style: TextStyle(
                                color: fontGrey,
                                fontFamily: bold,
                              )),
                        ])),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    width: size.width - 50,
                    child: customButton(
                      title: "Sign up",
                      bgColor: redColor,
                      titleColor: whiteColor,
                      onPress: () {},
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                          text: "Already have an account? ",
                          style: TextStyle(
                            color: fontGrey,
                            fontFamily: bold,
                          )),
                      TextSpan(
                          text: "sign in ",
                          style: TextStyle(
                            color: redColor,
                            fontFamily: bold,
                          )),
                    ])),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
