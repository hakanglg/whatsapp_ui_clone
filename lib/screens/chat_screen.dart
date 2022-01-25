import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/components/chat_list.dart';
import 'package:whatsapp_ui_clone/constants/color.dart';
import 'package:whatsapp_ui_clone/constants/info.dart';
import 'package:whatsapp_ui_clone/core/widgets/custom_icon_button.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: appBarTitle(context),
        actions: [appBarActions()],
      ),
      body: Column(
        children: [Expanded(child: ChatList()), myTextFieldAndMic(context)],
      ),
    );
  }

  Row myTextFieldAndMic(BuildContext context) {
    return Row(
      children: [
        myTextFieldMessage(context),
        myMicButton(),
      ],
    );
  }

  Flexible myTextFieldMessage(BuildContext context) {
    return Flexible(
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            hintText: "Type a message",
            hintStyle: TextStyle(color: Colors.grey),
            filled: true,
            fillColor: mobileChatBoxColor,
            prefixIcon: myPrefixIcon(),
            suffixIcon: mySuffixIcons(context)),
      ),
    );
  }

  Icon myPrefixIcon() {
    return Icon(
      Icons.emoji_emotions,
      color: Colors.grey,
    );
  }

  Padding mySuffixIcons(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Padding(
        padding:
            EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.03),
        child: Wrap(
          children: [
            Icon(
              Icons.attach_file,
              color: Colors.grey,
            ),
            Icon(
              Icons.camera_alt,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }

  Ink myMicButton() {
    return Ink(
        decoration: const ShapeDecoration(
          color: tabColor,
          shape: CircleBorder(),
        ),
        child: CustomIconButton(
          icon: Icon(Icons.mic),
          color: textColor,
        ));
  }

  Row appBarActions() {
    return Row(
      children: [
        CustomIconButton(
          icon: Icon(
            Icons.video_call,
          ),
          color: Colors.white,
        ),
        CustomIconButton(
          icon: Icon(Icons.call),
          color: Colors.white,
        ),
        CustomIconButton(
          icon: Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Wrap appBarTitle(BuildContext context) {
    return Wrap(
      spacing: 10,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_outlined)),
        CircleAvatar(
            backgroundImage: NetworkImage(info[0]["profilePic"].toString())),
        Text(
          info[0]["name"].toString(),
          style: Theme.of(context).textTheme.headline6,
        )
      ],
    );
  }
}
