import 'package:flutter/material.dart';

import 'package:whatsapp_ui_clone/components/contacts_list.dart';
import 'package:whatsapp_ui_clone/constants/color.dart';
import 'package:whatsapp_ui_clone/constants/strings.dart';
import 'package:whatsapp_ui_clone/core/widgets/custom_icon_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: buildAppBar(context),
          body: TabBarView(children: [
            ContactList(),
            Container(),
            Container(),
          ]),
          floatingActionButton: myFAB(),
        ));
  }

  FloatingActionButton myFAB() {
    return FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.comment, color: Colors.white),
        );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(
        appBarTitle,
        style: TextStyle(fontSize: 20),
      ),
      actions: [
        CustomIconButton(
          icon: Icon(Icons.search),
        ),
        CustomIconButton(
          icon: Icon(Icons.more_vert),
        ),
      ],
      bottom: buildTabBar(),
    );
  }

  TabBar buildTabBar() {
    return TabBar(
      indicatorWeight: 3.5,
      tabs: [
        Tab(text: tabBarOne),
        Tab(text: tabBarTwo),
        Tab(text: tabBarThree)
      ],
    );
  }
}
