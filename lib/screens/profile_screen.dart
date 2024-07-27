import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mostaql_hq_project/colors/app_colors.dart';
import 'package:mostaql_hq_project/components/components.dart';
import 'package:mostaql_hq_project/widgets/bar_chart_sample_6.dart';
import 'package:mostaql_hq_project/widgets/plan_card_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        centerTitle: true,
        title: Text(
          "Profile",
          style: GoogleFonts.lato(
            textStyle: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "LOGO",
              style: GoogleFonts.ibmPlexSans(
                textStyle: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 34,
                ),
              ),
            ),
            const BarChartSample6(),
            Container(
              color: AppColors.greyColor3.withOpacity(0.5),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 15,
                        backgroundImage: NetworkImage(
                            "https://avatars.githubusercontent.com/u/125823028?v=4"),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "Personal",
                        style: GoogleFonts.ibmPlexSans(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 19,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      const CircleAvatar(
                        radius: 15,
                        backgroundImage: NetworkImage(
                            "https://avatars.githubusercontent.com/u/125823028?v=4"),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "Workspace",
                        style: GoogleFonts.ibmPlexSans(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 19,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 1,
                          color: Colors.black,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: 1,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const PlanCard(
                    icon: CupertinoIcons.checkmark_circle_fill,
                    title: "Annual",
                    price: "\$3.99/mo (\$47.99)",
                    discount: "-40%",
                    isSelected: true,
                  ),
                  const SizedBox(height: 5),
                  const PlanCard(
                    icon: CupertinoIcons.circle,
                    title: "Monthly",
                    price: "\$3.99/mo (\$47.99)",
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0XFF624DE6),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      minimumSize: const Size(double.infinity, 54),
                      textStyle: GoogleFonts.dmSans(
                        textStyle: GoogleFonts.ibmPlexSans(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 19,
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {
                      scaffoldMessengerText(context, "Done");
                    },
                    child: const Text("Start 7-day trial"),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Restore Purchase  •  Terms  •  Privacy Policy",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
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