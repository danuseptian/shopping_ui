import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../dummy/home_data.dart';
import '../home_controller.dart';

class HomeLocation extends StatelessWidget {
  const HomeLocation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Padding(
      padding: EdgeInsets.all(12),
      child: Row(
        children: [
          Icon(
            Icons.location_on,
          ),
          SizedBox(
            width: 10.0,
          ),
          Obx(
            () => Container(
              height: Get.height * 0.03,
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  onChanged: (newValue) {
                    controller.setSelected(newValue as String);
                  },
                  value: controller.selected.value,
                  items: HomeData.locations.map(
                    (selectedType) {
                      return DropdownMenuItem(
                        child: Text(
                          selectedType,
                        ),
                        value: selectedType,
                      );
                    },
                  ).toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
