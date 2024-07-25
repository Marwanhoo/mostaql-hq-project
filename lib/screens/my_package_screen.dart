import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mostaql_hq_project/colors/app_colors.dart';
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
          TextButton.icon(
            onPressed: () {},
            icon: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.white,
              ),
              child: Icon(
                Icons.add,
                color: AppColors.brownColor,
              ),
            ),
            label: Text(
              "New Package",
              style: AppStyles.style12,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            Container(
              child: Column(
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
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset("assets/svg/location.svg"),
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
                                    text: "2972 Westheimer Rd. Santa Ana, Illinois 85486 ",
                                   style: TextStyle(
                                     color: Colors.black,
                                     fontWeight: FontWeight.normal,
                                   ),
                                  ),
                                ],
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                text: "To ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primaryColor,
                                ),
                                children: const <TextSpan>[
                                  TextSpan(
                                    text: "2972 Westheimer Rd. Santa Ana, Illinois",
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
            ),

          ],
        ),
      ),
    );
  }
}
