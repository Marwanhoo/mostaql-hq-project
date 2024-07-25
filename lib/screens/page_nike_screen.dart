import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageNikeScreen extends StatelessWidget {
  const PageNikeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset("assets/svg/shopping-cart.svg"),
          ),
        ],
      ),
      body: Column(
        children: [
          ListTile(
            leading: Image.asset("assets/image/nike_logo.png"),
            title: Row(
              children: [
                const Text("Nike"),
                SvgPicture.asset("assets/svg/queen.svg"),
              ],
            ),
            subtitle: const Text("Fashion And Style | Dammam"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset("assets/svg/profile-add.svg"),
                const SizedBox(width: 10),
                SvgPicture.asset("assets/svg/message-2.svg"),
              ],
            ),
          ),
          Stack(
            alignment: Alignment.centerRight,
            children: [
              Image.asset("assets/image/shoes ps 1.png"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: SvgPicture.asset("assets/svg/heart.svg"),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: SvgPicture.asset("assets/svg/repeat.svg"),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: SvgPicture.asset("assets/svg/share.svg"),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: SvgPicture.asset("assets/svg/flag.svg"),
                    ),
                  ],
                ),
              ),

            ],
          ),
          Text("100 SAR",style: TextStyle(fontWeight: FontWeight.bold,),),
          Text("air jordan",),
          // stars
          //text span
          Divider(),
          ListTile(

          ),
        ],
      ),
    );
  }
}
