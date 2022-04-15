import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../dummy/home_data.dart';

class HomeHouseList extends StatelessWidget {
  const HomeHouseList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 8, top: 8, bottom: 8),
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'House',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 10.0),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                HomeData.carouselHouse.length,
                (index) {
                  var item = HomeData.carouselHouse[index];
                  return Container(
                    width: 250,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(right: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey.shade500,
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                item['image'],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2.0,
                        ),
                        Column(
                          children: [
                            Container(
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  item['price'],
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  item['name'],
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(),
                                ),
                              ),
                            ),
                            Container(
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  item['location'],
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
