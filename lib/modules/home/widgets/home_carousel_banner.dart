import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../dummy/home_data.dart';
import '../home_controller.dart';

class HomeCarouselBanner extends StatelessWidget {
  const HomeCarouselBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Container(
      child: Column(
        children: [
          CarouselSlider.builder(
            carouselController: controller.carouselController,
            itemCount: HomeData.carouselBanner.length,
            options: CarouselOptions(
              viewportFraction: 1,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 5),
              onPageChanged: (index, reason) {
                controller.currentCarouselIndex.value = index;
              },
            ),
            itemBuilder: (context, index, realIndex) {
              var item = HomeData.carouselBanner[index];
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      item,
                    ),
                  ),
                ),
              );
            },
          ),
          Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: HomeData.carouselBanner.asMap().entries.map(
                (entry) {
                  return GestureDetector(
                    onTap: () =>
                        controller.carouselController.animateToPage(entry.key),
                    child: Container(
                      width: 12.0,
                      height: 12.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? Colors.white
                                  : Colors.black)
                              .withOpacity(
                                  controller.currentCarouselIndex == entry.key
                                      ? 0.9
                                      : 0.4)),
                    ),
                  );
                },
              ).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
