import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  CarouselController carouselController = CarouselController();
  final currentCarouselIndex = 0.obs;

  final selected = 'Please choose a location'.obs;

  void setSelected(String value) {
    selected.value = value;
  }

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
