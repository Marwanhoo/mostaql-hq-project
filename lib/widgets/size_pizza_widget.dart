import 'package:flutter/material.dart';
import 'package:mostaql_hq_project/colors/app_colors.dart';


class SizePizzaWidget extends StatefulWidget {
  const SizePizzaWidget({
    super.key,
  });

  @override
  State<SizePizzaWidget> createState() => _SizePizzaWidgetState();
}

class _SizePizzaWidgetState extends State<SizePizzaWidget> {
  String selectedSize = "small";

  void chooseSize(String size) {
    setState(() {
      selectedSize = size;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {
            chooseSize("small");
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: selectedSize == "small"
                    ? AppColors.blueColor
                    : Colors.transparent,
              ),
            ),
            child: Text(
              "Small",
              style: TextStyle(
                color: AppColors.greyColor2,
              ),
            ),
          ),
        ),
        const SizedBox(width: 5),
        InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {
            chooseSize("Medium");
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: selectedSize == "Medium"
                    ? AppColors.blueColor
                    : Colors.transparent,
              ),
            ),
            child: Text(
              "Medium",
              style: TextStyle(
                color: AppColors.greyColor2,
              ),
            ),
          ),
        ),
        const SizedBox(width: 5),
        InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {
            chooseSize("Large");
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: selectedSize == "Large"
                    ? AppColors.blueColor
                    : Colors.transparent,
              ),
            ),
            child: Text(
              "Large",
              style: TextStyle(
                color: AppColors.greyColor2,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
