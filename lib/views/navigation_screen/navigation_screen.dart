import 'package:e_commerce/consts/consts.dart';
import 'package:e_commerce/controller/navigation_screen_controller.dart';
import 'package:e_commerce/views/navigation_screen/cart_screen/cart_screen.dart';
import 'package:e_commerce/views/navigation_screen/category_screen/category_screen.dart';
import 'package:e_commerce/views/navigation_screen/home_screen/home_screen.dart';
import 'package:e_commerce/views/navigation_screen/profile_screen/profile_screen.dart';
import 'package:get/get.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ///init HomeScreenControoler
    NavigationScreenController controller = Get.put(NavigationScreenController());

    List<BottomNavigationBarItem> navItemList = [
      BottomNavigationBarItem(
          icon: Image.asset(icHome, width: 26), label: "Home"),
      BottomNavigationBarItem(
          icon: Image.asset(icCategories, width: 26), label: "Categories"),
      BottomNavigationBarItem(
          icon: Image.asset(icCart, width: 26), label: "Cart"),
      BottomNavigationBarItem(
          icon: Image.asset(icProfile, width: 26), label: "Account"),
    ];

    List<Widget> navBody = [
      const HomeScreen(),
      const CategoryScreen(),
      const CartScreen(),
      const ProfileScreen(),
      
    ];
    return Obx(
      () => Scaffold(
        body: navBody[controller.currentNavIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
          items: navItemList,
          selectedItemColor: redColor,
          selectedLabelStyle: const TextStyle(fontFamily: semibold),
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColor,
          onTap: (value) {
            controller.currentNavIndex.value = value;
          },
        ),
      ),
    );
  }
}
