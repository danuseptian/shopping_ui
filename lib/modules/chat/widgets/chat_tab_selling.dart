import 'package:flutter/material.dart';

import '../../../dummy/chat_data.dart';

class ChatTabSelling extends StatelessWidget {
  const ChatTabSelling({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(8),
        child: Column(
          children: List.generate(
            selling_chat_data.length,
            (index) {
              return Column(
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
                              selling_chat_data[index].image,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        height: 100,
                        width: 230,
                        child: Column(
                          children: [
                            Container(
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  selling_chat_data[index].name,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  selling_chat_data[index].product,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  selling_chat_data[index].chat,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  selling_chat_data[index].time,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
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
              );
            },
          ),
        ),
      ),
    );
  }
}
