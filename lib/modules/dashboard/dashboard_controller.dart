import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopedia_danu/modules/favorite/favorite_view.dart';
import 'package:shopedia_danu/modules/profile/profile_view.dart';

import '../chat/chat_view.dart';
import '../home/home_view.dart';

class DashboardController extends GetxController {
  final selectedIndex = 0.obs;
  void onItemTapped(int index) => selectedIndex.value = index;

  List<Widget> bottomTabView = [
    HomeView(),
    ChatView(),
    FavoriteView(),
    ProfileView(),
  ];
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
