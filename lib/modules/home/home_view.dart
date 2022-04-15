import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';
import 'widgets/home_car_list.dart';
import 'widgets/home_carousel_banner.dart';
import 'widgets/home_categories.dart';
import 'widgets/home_food_list.dart';
import 'widgets/home_house_list.dart';
import 'widgets/home_location.dart';
import 'widgets/home_recommendation_list.dart';
import 'widgets/home_search.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeLocation(),
              HomeSearch(),
              HomeCarouselBanner(),
              HomeCategories(),
              HomeRecommendationList(),
              HomeCarList(),
              HomeFoodList(),
              HomeHouseList(),
            ],
          ),
        ),
      ),
    );
  }
}
