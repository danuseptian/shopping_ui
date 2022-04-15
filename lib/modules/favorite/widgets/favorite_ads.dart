import 'package:flutter/material.dart';

import '../../../dummy/favorite_data.dart';

class FavoriteAds extends StatelessWidget {
  const FavoriteAds({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(
          my_ads_data.length,
          (index) {
            return Container(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Container(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        my_ads_data[index].date,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
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
                              my_ads_data[index].image,
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
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  my_ads_data[index].name,
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
                                  my_ads_data[index].price,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.remove_red_eye_rounded,
                                  color: Colors.grey[600],
                                ),
                                Container(
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      my_ads_data[index].view,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 20,
                                  width: 2,
                                  color: Colors.grey[600],
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                                Container(
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      my_ads_data[index].like,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.more_vert,
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
          },
        ),
      ),
    );
  }
}
