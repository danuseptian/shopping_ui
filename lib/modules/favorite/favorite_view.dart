import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../dummy/favorite_data.dart';
import 'widgets/favorite_ads.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text(
              'My Favorite',
              style: TextStyle(color: Colors.black),
            ),
            bottom: TabBar(
              labelColor: Colors.black,
              indicatorColor: Colors.blue,
              tabs: [
                Tab(text: 'MY ADS'),
                Tab(text: 'MY FAVOURITES'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              FavoriteAds(),
              SingleChildScrollView(
                child: Column(
                  children: List.generate(my_favorite_data.length, (index) {
                    return Container(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10)),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                      my_favorite_data[index].image,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Container(
                                height: 100,
                                width: 250,
                                child: Column(
                                  children: [
                                    Container(
                                      height: Get.height * 0.04,
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          my_favorite_data[index].name,
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
                                          my_favorite_data[index].price,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          my_favorite_data[index].location,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 1,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
