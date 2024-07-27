import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlanCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String price;
  final String discount;
  final bool isSelected;

  const PlanCard({
    super.key,
    required this.icon,
    required this.title,
    required this.price,
    this.discount = '',
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: isSelected
            ? const Color(0XFF624DE6).withOpacity(0.8)
            : const Color(0XFF624DE6).withOpacity(0.2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(icon, color: isSelected ? Colors.white : Colors.grey),
                  const SizedBox(width: 5),
                  Text(
                    title,
                    style: GoogleFonts.ibmPlexSans(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 19,
                        color: isSelected ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              if (discount.isNotEmpty)
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0XFFFF5B27),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Text(
                    discount,
                    style: GoogleFonts.ibmPlexSans(
                      textStyle: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          Text(
            price,
            style: GoogleFonts.ibmPlexSans(
              textStyle: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
