import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopedia_danu/dummy/profile_data.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: List.generate(
                ProfileData.optionList.length,
                (index) {
                  var item = ProfileData.optionList[index];
                  return Column(
                    children: [
                      if (index == 0)
                        Container(
                          child: Column(
                            children: [
                              Container(
                                height: Get.height * 0.3,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://image.freepik.com/free-photo/curly-chinese-woman-taking-selfie-front-view-asian-model-hat-posing-beige-background_197531-14548.jpg'),
                                  ),
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Container(
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Nico Olivia',
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 32,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    '+62 888 322 455',
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      Divider(
                        height: 16,
                        thickness: 1,
                        color: Colors.grey[400],
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  item['name'],
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  item['description'],
                                  style: TextStyle(
                                    color: Colors.grey,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
