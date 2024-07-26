import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mostaql_hq_project/colors/app_colors.dart';
import 'package:mostaql_hq_project/styles/app_styles.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        centerTitle: true,
        title: Text(
          "Orders",
          style: GoogleFonts.lato(
            textStyle: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Text(
                      "Waiting Confirmation",
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: AppColors.greyColor4,
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Text(
                      "In Progress",
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Text(
                      "Completed",
                      style: AppStyles.style14interW500,
                    ),
                    const SizedBox(width: 15),
                    Text(
                      "Cancel",
                      style: AppStyles.style14interW500,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        backgroundColor: AppColors.brownColor,
                        side: BorderSide(
                          color: AppColors.brownColor,
                        ),
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {},
                      child: Text(
                        "Schools(3)",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        side: BorderSide(
                          color: AppColors.brownColor,
                        ),
                        foregroundColor: AppColors.brownColor,
                      ),
                      onPressed: () {},
                      child: Text(
                        "University(3)",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        side: BorderSide(
                          color: AppColors.brownColor,
                        ),
                        foregroundColor: AppColors.brownColor,
                      ),
                      onPressed: () {},
                      child: Text(
                        "Works",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        side: BorderSide(
                          color: AppColors.brownColor,
                        ),
                        foregroundColor: AppColors.brownColor,
                      ),
                      onPressed: () {},
                      child: Text(
                        "Sporting",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.greyColor3,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("7 passengers" , style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                        Text("School",style: TextStyle(
                          color: AppColors.brownColor,
        
                        ),),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Text("Departure Address",style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.primaryColor,
                      ),
                    ),),
                    const SizedBox(height: 2.5),
                    Text("Jadah , Riyadh , Al-Jouf",style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),),
                    const SizedBox(height: 5),
                    Text("Arrival Address & Time",style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.primaryColor,
                      ),
                    ),),
                    const SizedBox(height: 2.5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("2972 Westheimer Rd. Santa Ana",style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),),
                        SvgPicture.asset("assets/svg/map.svg"),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Text("10:30 Pm",style: GoogleFonts.poppins(
                      textStyle : const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Text("Days: ",style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: AppColors.primaryColor,
                          ),
                        ),),
                        Text("All Days ",style: AppStyles.style13popW400,),
                        Text("(Except Friday &Sturdy)",style: TextStyle(
                          color: AppColors.greyColor4,
                        ),),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              backgroundColor: AppColors.primaryColor,
                              side: BorderSide(
                                color: AppColors.primaryColor,
                              ),
                              foregroundColor: Colors.white,
                            ),
                            onPressed: () {},
                            child: Text(
                              "Details",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
        
                              side: const BorderSide(
                                color: Colors.red,
                              ),
                              foregroundColor: Colors.red,
                            ),
                            onPressed: () {},
                            child: Text(
                              "Refund Requests",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                          
                              side:  BorderSide(
                                color: AppColors.primaryColor,
                              ),
                              foregroundColor: AppColors.primaryColor,
                            ),
                            onPressed: () {},
                            child: Text(
                              "Notice",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
        
                  ],
                ),
              ),
              const Divider(
                color: Colors.transparent,
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.greyColor3,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("7 passengers" , style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                        Text("School",style: TextStyle(
                          color: AppColors.brownColor,
        
                        ),),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Text("Departure Address",style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.primaryColor,
                      ),
                    ),),
                    const SizedBox(height: 2.5),
                    Text("Jadah , Riyadh , Al-Jouf",style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),),
                    const SizedBox(height: 5),
                    Text("Arrival Address & Time",style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.primaryColor,
                      ),
                    ),),
                    const SizedBox(height: 2.5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("2972 Westheimer Rd. Santa Ana",style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),),
                        SvgPicture.asset("assets/svg/map.svg"),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Text("10:30 Pm",style: GoogleFonts.poppins(
                      textStyle : const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Text("Days: ",style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: AppColors.primaryColor,
                          ),
                        ),),
                        Text("All Days ",style: AppStyles.style13popW400,),
                        Text("(Except Friday &Sturdy)",style: TextStyle(
                          color: AppColors.greyColor4,
                        ),),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              backgroundColor: AppColors.primaryColor,
                              side: BorderSide(
                                color: AppColors.primaryColor,
                              ),
                              foregroundColor: Colors.white,
                            ),
                            onPressed: () {},
                            child: Text(
                              "Details",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
        
                              side: const BorderSide(
                                color: Colors.red,
                              ),
                              foregroundColor: Colors.red,
                            ),
                            onPressed: () {},
                            child: Text(
                              "Refund Requests",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
        
                              side:  BorderSide(
                                color: AppColors.primaryColor,
                              ),
                              foregroundColor: AppColors.primaryColor,
                            ),
                            onPressed: () {},
                            child: Text(
                              "Notice",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
        
                  ],
                ),
              ),
              const Divider(
                color: Colors.transparent,
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.greyColor3,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("7 passengers" , style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                        Text("School",style: TextStyle(
                          color: AppColors.brownColor,
        
                        ),),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Text("Departure Address",style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.primaryColor,
                      ),
                    ),),
                    const SizedBox(height: 2.5),
                    Text("Jadah , Riyadh , Al-Jouf",style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),),
                    const SizedBox(height: 5),
                    Text("Arrival Address & Time",style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.primaryColor,
                      ),
                    ),),
                    const SizedBox(height: 2.5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("2972 Westheimer Rd. Santa Ana",style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),),
                        SvgPicture.asset("assets/svg/map.svg"),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Text("10:30 Pm",style: GoogleFonts.poppins(
                      textStyle : const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Text("Days: ",style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: AppColors.primaryColor,
                          ),
                        ),),
                        Text("All Days ",style: AppStyles.style13popW400,),
                        Text("(Except Friday &Sturdy)",style: TextStyle(
                          color: AppColors.greyColor4,
                        ),),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              backgroundColor: AppColors.primaryColor,
                              side: BorderSide(
                                color: AppColors.primaryColor,
                              ),
                              foregroundColor: Colors.white,
                            ),
                            onPressed: () {},
                            child: Text(
                              "Details",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
        
                              side:  BorderSide(
                                color: AppColors.primaryColor,
                              ),
                              foregroundColor: AppColors.primaryColor,
                            ),
                            onPressed: () {},
                            child: Text(
                              "Notice",
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
        
                  ],
                ),
              ),
        
            ],
          ),
        ),
      ),
    );
  }
}
