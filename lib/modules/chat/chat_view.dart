import 'package:flutter/material.dart';
import 'package:shopedia_danu/modules/chat/widgets/chat_tab_buying.dart';
import 'package:shopedia_danu/modules/chat/widgets/chat_tab_selling.dart';

import 'widgets/chat_tab_all.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text(
              'Chats',
              style: TextStyle(color: Colors.black),
            ),
            actions: [
              Icon(
                Icons.search,
                color: Colors.black,
              ),
              SizedBox(
                width: 10.0,
              ),
              Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
              SizedBox(
                width: 10.0,
              ),
            ],
            bottom: TabBar(
              labelColor: Colors.black,
              indicatorColor: Colors.blue,
              tabs: [
                Tab(text: 'ALL'),
                Tab(text: 'BUYING'),
                Tab(text: 'SELLING'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ChatTabAll(),
              ChatTabBuying(),
              ChatTabSelling(),
            ],
          ),
        ),
      ),
    );
  }
}
