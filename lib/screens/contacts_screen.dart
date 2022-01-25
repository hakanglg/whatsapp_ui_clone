import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/constants/color.dart';
import 'package:whatsapp_ui_clone/constants/info.dart';

import 'chat_screen.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: info.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.all(MediaQuery.of(context).size.height * 0.005),
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ChatScreen(),
                  ));
                },
                title: Text(
                  info[index]["name"].toString(),
                  style: Theme.of(context).textTheme.headline6,
                ),
                subtitle: Text(
                  info[index]["message"].toString(),
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage(info[index]["profilePic"].toString()),
                ),
                trailing: Text(
                  info[index]["time"].toString(),
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
