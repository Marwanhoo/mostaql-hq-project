import 'package:flutter/material.dart';
import 'package:mostaql_hq_project/colors/app_colors.dart';
import 'package:mostaql_hq_project/styles/app_styles.dart';

class SelectTheDoughPizzaWidget extends StatefulWidget {
  const SelectTheDoughPizzaWidget({super.key});

  @override
  State<SelectTheDoughPizzaWidget> createState() =>
      _SelectTheDoughPizzaWidgetState();
}

class _SelectTheDoughPizzaWidgetState extends State<SelectTheDoughPizzaWidget> {
  String selectedDough = "The Original Dough";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildRadioListTile(
          value: "The Original Dough",
          text: "the original dough",
        ),
        buildRadioListTile(
          value: "Thin Crispy",
          text: "Thin crispy",
          textPrice: "(+3 SAR)",
        ),
        buildRadioListTile(
          value: "Thin",
          text: "Thin",
          textPrice: "(+3 SAR)",
        ),
      ],
    );
  }

  RadioListTile<String> buildRadioListTile({
    required String value,
    required String text,
    String? textPrice,
  }) {
    return RadioListTile<String>(
      activeColor: AppColors.primaryColor,
      contentPadding: EdgeInsets.zero,
      visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
      dense: true,
      title: Row(
        children: [
          Text(text),
          const SizedBox(width: 10),
          Text(
            textPrice ?? "",
            style: TextStyle(
              color: AppColors.greyColor2,
            ),
          ),
        ],
      ),
      value: value,
      groupValue: selectedDough,
      onChanged: (value) {
        setState(() {
          selectedDough = value!;
        });
      },
    );
  }

  Radio<String> buildRadio({
    required String value,
  }) {
    return Radio(
      value: value,
      groupValue: selectedDough,
      onChanged: (value) {
        setState(() {
          selectedDough = value!;
        });
      },
    );
  }
}

class SelectSauceTypePizzaWidget extends StatefulWidget {
  const SelectSauceTypePizzaWidget({super.key});

  @override
  State<SelectSauceTypePizzaWidget> createState() =>
      _SelectSauceTypePizzaWidgetState();
}

class _SelectSauceTypePizzaWidgetState
    extends State<SelectSauceTypePizzaWidget> {
  String selectedSauceType = "Barbecue Sauce";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildRadioListTile(value: "Barbecue sauce", text: "Barbecue Sauce"),
        buildRadioListTile(value: "Pizza Sauce", text: "Pizza Sauce"),
        buildRadioListTile(value: "Ranch sauce", text: "Ranch Sauce"),
      ],
    );
  }

  RadioListTile<String> buildRadioListTile({
    required String value,
    required String text,
  }) {
    return RadioListTile<String>(
      activeColor: AppColors.primaryColor,
      contentPadding: EdgeInsets.zero,
      visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
      dense: true,
      title: Row(
        children: [
          Text(text),
          const SizedBox(width: 10,),
          Text(
            "(+3 SAR)",
            style: TextStyle(
              color: AppColors.greyColor2,
            ),
          ),
        ],
      ),
      value: value,
      groupValue: selectedSauceType,
      onChanged: (value) {
        setState(() {
          selectedSauceType = value!;
        });
      },
    );
  }
}
