import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mostaql_hq_project/colors/app_colors.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        centerTitle: true,
        title: Text(
          "Chats",
          style: GoogleFonts.lato(
            textStyle: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return chatItemBuilder(index);
                },
                separatorBuilder: (context, index) => const SizedBox(
                  height: 16.0,
                ),
                itemCount: 2 * DataChat.userChat.length - 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.emoji_emotions),
                  hintText: "Write your message",
                  suffixIcon: Icon(Icons.send),
                  suffixIconColor: Colors.blue,
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget chatItemBuilder(int index) {
    if (index.isEven) {
      // User's chat
      return UserItemChat(message: DataChat.userChat[index ~/ 2]);
    } else {
      // AI's chat
      return MyItemChat(message: DataChat.myItemChat[index ~/ 2]);
    }
  }
}



class UserItemChat extends StatelessWidget {

  const UserItemChat({super.key, required this.message});
  final String message;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 10.0,
            ),
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadiusDirectional.only(
                bottomEnd: Radius.circular(
                  50,
                ),
                bottomStart: Radius.circular(
                  50,
                ),
                topStart: Radius.circular(
                  50,
                ),
              ),
            ),
            child: Text(
              message,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
class MyItemChat extends StatelessWidget {
  const MyItemChat({super.key, required this.message});
  final String message;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 10,
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          myItemChatIcon(),
          const SizedBox(
            width: 5,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 10.0,
            ),
            decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadiusDirectional.only(
                bottomEnd: Radius.circular(
                  50,
                ),
                topStart: Radius.circular(
                  50,
                ),
                topEnd: Radius.circular(
                  50,
                ),
              ),
            ),
            child: Text(
              message,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }

  Column myItemChatIcon() {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              radius: 15,
              //backgroundColor: AppColors.primary,
              child: Icon(
                size: 20,
                Icons.wechat_sharp,
                color: Colors.white,
              ),
            ),
            CircleAvatar(
              radius: 6,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 5,
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }
}


class DataChat {
  static List<String> userChat = [
    "Hi",
    "Please help",
    "Can you speak arabic",
    "Thanks",
    "",
  ];
  static List<String> myItemChat = [
    "Hello Dear , Welcome",
    "Chat AI Dr Pharma ☺",
    "No , English only",
    "Your Welcome 😍",
  ];

}