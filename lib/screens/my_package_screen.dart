import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mostaql_hq_project/colors/app_colors.dart';
import 'package:mostaql_hq_project/screens/bag_store_screen.dart';
import 'package:mostaql_hq_project/screens/page_nike_screen.dart';
import 'package:mostaql_hq_project/screens/pizza_tabon_screen.dart';
import 'package:mostaql_hq_project/styles/app_styles.dart';

class MyPackageScreen extends StatelessWidget {
  const MyPackageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        centerTitle: true,
        title: Text(
          "LOGO",
          style: AppStyles.style14White,
        ),
        actions: [
          PopupMenuButton(
            // onOpened: (){
            //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("opens")));
            // },
            // onCanceled: (){
            //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("cancel")));
            // },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.add,
                      color: AppColors.brownColor,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    "New Package",
                    style: AppStyles.style12,
                  ),
                ],
              ),
            ),
            onSelected: (value) {
              if (value == "Page") {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const PageNikeScreen()));
              }
              if (value == "Pizza") {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => const PizzaTabonScreen()));
              }
              if (value == "Bag") {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const BagStoreScreen()));
              }
            },
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  value: "Page",
                  child: Text("Page Nike"),
                ),
                const PopupMenuItem(
                  value: "Pizza",
                  child: Text("Pizza Tabon"),
                ),
                const PopupMenuItem(
                  value: "Bag",
                  child: Text("Bag Store"),
                ),
              ];
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Askar School",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "School",
                      style: AppStyles.style12Brown,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Available: ",
                          style: AppStyles.style13Primary,
                        ),
                        Text(
                          "30 Passengers",
                          style: AppStyles.style13,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Transform.scale(
                          scale: 0.7,
                          child: CupertinoSwitch(
                            value: false,
                            onChanged: (bool value) {},
                          ),
                        ),
                        SvgPicture.asset("assets/svg/edit.svg"),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Booked: ",
                      style: AppStyles.style13Primary,
                    ),
                    Text(
                      "20 Passengers",
                      style: AppStyles.style13,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset("assets/svg/location.svg"),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: "From ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColors.primaryColor,
                              ),
                              children: const <TextSpan>[
                                TextSpan(
                                  text:
                                      "2972 Westheimer Rd. Santa Ana, Illinois 85486 ",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          RichText(
                            text: TextSpan(
                              text: "To ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColors.primaryColor,
                              ),
                              children: const <TextSpan>[
                                TextSpan(
                                  text:
                                      "2972 Westheimer Rd. Santa Ana, Illinois",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    SvgPicture.asset("assets/svg/clock.svg"),
                    const SizedBox(width: 10),
                    Text(
                      "Exit Time: ",
                      style: AppStyles.style13Primary,
                    ),
                    Text(
                      "9.00 Am",
                      style: AppStyles.style13,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    SvgPicture.asset("assets/svg/clock.svg"),
                    const SizedBox(width: 10),
                    Text(
                      "Return Time: ",
                      style: AppStyles.style13Primary,
                    ),
                    Text(
                      "2.00 Pm",
                      style: AppStyles.style13,
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Askar School",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "School",
                      style: AppStyles.style12Brown,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Available: ",
                          style: AppStyles.style13Primary,
                        ),
                        Text(
                          "30 Passengers",
                          style: AppStyles.style13,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Transform.scale(
                          scale: 0.7,
                          child: CupertinoSwitch(
                            value: true,
                            onChanged: (bool value) {},
                          ),
                        ),
                        SvgPicture.asset("assets/svg/edit.svg"),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Booked: ",
                      style: AppStyles.style13Primary,
                    ),
                    Text(
                      "20 Passengers",
                      style: AppStyles.style13,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset("assets/svg/location.svg"),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: "From ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColors.primaryColor,
                              ),
                              children: const <TextSpan>[
                                TextSpan(
                                  text:
                                      "2972 Westheimer Rd. Santa Ana, Illinois 85486 ",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          RichText(
                            text: TextSpan(
                              text: "To ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColors.primaryColor,
                              ),
                              children: const <TextSpan>[
                                TextSpan(
                                  text:
                                      "2972 Westheimer Rd. Santa Ana, Illinois",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    SvgPicture.asset("assets/svg/clock.svg"),
                    const SizedBox(width: 10),
                    Text(
                      "Exit Time: ",
                      style: AppStyles.style13Primary,
                    ),
                    Text(
                      "9.00 Am",
                      style: AppStyles.style13,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    SvgPicture.asset("assets/svg/clock.svg"),
                    const SizedBox(width: 10),
                    Text(
                      "Return Time: ",
                      style: AppStyles.style13Primary,
                    ),
                    Text(
                      "2.00 Pm",
                      style: AppStyles.style13,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
