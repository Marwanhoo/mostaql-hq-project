import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mostaql_hq_project/colors/app_colors.dart';
import 'package:mostaql_hq_project/test_ui.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor,
          centerTitle: true,
          title:  Text("Profile",style: GoogleFonts.lato(
            textStyle: const TextStyle(
              color: Colors.white,
            ),
          ),),
        ),
        body: Column(
          children: [
            BarChartSample6(),
          ],
        ),
    );
  }
}
