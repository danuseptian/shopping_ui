import 'package:flutter/material.dart';

import '../../../dummy/home_data.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 8,
        top: 8,
        bottom: 8,
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              right: 8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Browse Categories',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  height: 130,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: HomeData.categories.length,
                    itemBuilder: (context, index) {
                      var item = HomeData.categories[index];
                      return Padding(
                        padding: const EdgeInsets.only(right: 5, top: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network(
                              item['image'],
                              height: 50,
                              width: 75,
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 90,
                              child: Text(
                                item['name'],
                                style:
                                    TextStyle(overflow: TextOverflow.ellipsis),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
