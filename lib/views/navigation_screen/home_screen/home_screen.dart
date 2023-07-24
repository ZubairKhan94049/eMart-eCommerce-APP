import 'package:e_commerce/consts/consts.dart';
import 'package:e_commerce/widget_common/custom_icon_btn_widget.dart';
import 'package:e_commerce/widget_common/largetext_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    const brandsSlider = [
      imgSlider1,
      imgSlider2,
      imgSlider3,
      imgSlider4,
    ];
    const brandsSSlider = [
      imgSs1,
      imgSs2,
      imgSs3,
      imgSs4,
    ];
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 12, right: 12, left: 12),
        color: lightGrey,
        height: size.height,
        width: size.width,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                color: lightGrey,
                height: 60,
                alignment: Alignment.center,
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none  ,
                    filled: true,
                    fillColor: whiteColor,
                    hintText: "Search anthing...",
                    hintStyle: TextStyle(color: textfieldGrey),
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 150,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: brandsSlider.length,
                          itemBuilder: (context, index) {
                            return Container(
                              width: size.width - 15,
                              padding: const EdgeInsets.only(right: 10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  brandsSlider[index],
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          homeButton(
                            height: size.height * 0.15,
                            width: size.width / 2.5,
                            icon: icTodaysDeal,
                            title: "Today's deal",
                          ),
                          homeButton(
                            height: size.height * 0.15,
                            width: size.width / 2.5,
                            icon: icFlashDeal,
                            title: "Flash Sale",
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      //  Second Slider
                      SizedBox(
                        height: 150,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: brandsSSlider.length,
                          itemBuilder: (context, index) {
                            return Container(
                              width: size.width - 15,
                              padding: const EdgeInsets.only(right: 10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  brandsSSlider[index],
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            );
                          },
                        ),
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: homeButton(
                              height: size.height * 0.15,
                              width: size.width / 3.5,
                              icon: icTopCategories,
                              title: "Top Categories",
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: homeButton(
                              height: size.height * 0.15,
                              width: size.width / 3.5,
                              icon: icBrands,
                              title: "Brand",
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: homeButton(
                              height: size.height * 0.15,
                              width: size.width / 3.5,
                              icon: icTopSeller,
                              title: "Top Sellers",
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const LargeText(
                        text: "Featured Categories",
                        fontFamily: semibold,
                        fontSize: 18,
                        color: darkFontGrey,
                      ),
                      
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
