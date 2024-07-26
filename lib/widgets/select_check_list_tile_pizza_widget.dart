import 'package:flutter/material.dart';
import 'package:mostaql_hq_project/colors/app_colors.dart';

class AdditionalChoicesPizzaWidget extends StatefulWidget {
  const AdditionalChoicesPizzaWidget({super.key});

  @override
  State<AdditionalChoicesPizzaWidget> createState() =>
      _AdditionalChoicesPizzaWidgetState();
}

class _AdditionalChoicesPizzaWidgetState
    extends State<AdditionalChoicesPizzaWidget> {
  bool extraCheese = false;
  bool sausage = false;
  bool garlicBread = false;
  bool ketchup = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CheckboxListTile(
          side: MaterialStateBorderSide.resolveWith((states) {
            if(states.contains(MaterialState.selected)){
              return BorderSide.none;
            }else{
              return  BorderSide(
                color: AppColors.greyColor,
              );
            }

          }),
          checkboxShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          activeColor: AppColors.primaryColor,
          title: Row(
            children: [
              const Text(
                "Extra Cheese",
                style: TextStyle(fontSize: 12), // Reduce text size
              ),
              const SizedBox(width: 10),
              Text(
                "(+3 SAR)",
                style: TextStyle(
                  color: AppColors.greyColor2,
                ),
              ),
            ],
          ),
          contentPadding: EdgeInsets.zero,
          controlAffinity: ListTileControlAffinity.leading,
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          dense: true,
          value: extraCheese,
          onChanged: (bool? checked) {
            setState(() {
              extraCheese = checked!;
            });
          },
        ),
        CheckboxListTile(
          side: MaterialStateBorderSide.resolveWith((states) {
            if(states.contains(MaterialState.selected)){
              return BorderSide.none;
            }else{
              return  BorderSide(
                color: AppColors.greyColor,
              );
            }

          }),
          checkboxShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          activeColor: AppColors.primaryColor,
          title: Row(
            children: [
              const Text(
                "Sausage",
                style: TextStyle(fontSize: 12), // Reduce text size
              ),
              const SizedBox(width: 10),
              Text(
                "(+3 SAR)",
                style: TextStyle(
                  color: AppColors.greyColor2,
                ),
              ),
            ],
          ),
          contentPadding: EdgeInsets.zero,
          controlAffinity: ListTileControlAffinity.leading,
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          dense: true,
          value: sausage,
          onChanged: (bool? checked) {
            setState(() {
              sausage = checked!;
            });
          },
        ),
        CheckboxListTile(
          side: MaterialStateBorderSide.resolveWith((states) {
            if(states.contains(MaterialState.selected)){
              return BorderSide.none;
            }else{
              return  BorderSide(
                color: AppColors.greyColor,
              );
            }

          }),
          checkboxShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          activeColor: AppColors.primaryColor,
          title: Row(
            children: [
              const Text(
                "Garlic Bread ",
                style: TextStyle(fontSize: 12), // Reduce text size
              ),
              const SizedBox(width: 10),
              Text(
                "(1 Pieces +3 SAR)",
                style: TextStyle(
                  color: AppColors.greyColor2,
                ),
              ),
            ],
          ),
          contentPadding: EdgeInsets.zero,
          controlAffinity: ListTileControlAffinity.leading,
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          dense: true,
          value: garlicBread,
          onChanged: (bool? checked) {
            setState(() {
              garlicBread = checked!;
            });
          },
        ),
        CheckboxListTile(
          side: MaterialStateBorderSide.resolveWith((states) {
            if(states.contains(MaterialState.selected)){
              return BorderSide.none;
            }else{
              return  BorderSide(
                color: AppColors.greyColor,
              );
            }

          }),
          checkboxShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          activeColor: AppColors.primaryColor,
          title: const Text(
            "Ketchup",
            style: TextStyle(fontSize: 12), // Reduce text size
          ),
          contentPadding: EdgeInsets.zero,
          controlAffinity: ListTileControlAffinity.leading,
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          dense: true,
          value: ketchup,
          onChanged: (bool? checked) {
            setState(() {
              ketchup = checked!;
            });
          },
        ),
      ],
    );
  }
}

class RemoveChoicesPizzaWidget extends StatefulWidget {
  const RemoveChoicesPizzaWidget({super.key});

  @override
  State<RemoveChoicesPizzaWidget> createState() =>
      _RemoveChoicesPizzaWidgetState();
}

class _RemoveChoicesPizzaWidgetState extends State<RemoveChoicesPizzaWidget> {
  bool tomato = false;
  bool sausage = false;
  bool garlicBread = false;
  bool ketchup = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CheckboxListTile(
          side: MaterialStateBorderSide.resolveWith((states) {
            if(states.contains(MaterialState.selected)){
              return BorderSide.none;
            }else{
              return  BorderSide(
                color: AppColors.greyColor,
              );
            }

          }),
          checkboxShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          activeColor: AppColors.primaryColor,
          title: const Text(
            "Tomato",
            style: TextStyle(fontSize: 12), // Reduce text size
          ),
          contentPadding: EdgeInsets.zero,
          controlAffinity: ListTileControlAffinity.leading,
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          dense: true,
          value: tomato,
          onChanged: (bool? checked) {
            setState(() {
              tomato = checked!;
            });
          },
        ),
        CheckboxListTile(
          side: MaterialStateBorderSide.resolveWith((states) {
            if(states.contains(MaterialState.selected)){
              return BorderSide.none;
            }else{
              return  BorderSide(
                color: AppColors.greyColor,
              );
            }

          }),
          checkboxShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          activeColor: AppColors.primaryColor,
          title: const Text(
            "Sausage",
            style: TextStyle(fontSize: 12), // Reduce text size
          ),
          contentPadding: EdgeInsets.zero,
          controlAffinity: ListTileControlAffinity.leading,
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          dense: true,
          value: sausage,
          onChanged: (bool? checked) {
            setState(() {
              sausage = checked!;
            });
          },
        ),
        CheckboxListTile(
          side: MaterialStateBorderSide.resolveWith((states) {
            if(states.contains(MaterialState.selected)){
              return BorderSide.none;
            }else{
              return  BorderSide(
                color: AppColors.greyColor,
              );
            }

          }),
          checkboxShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          activeColor: AppColors.primaryColor,
          title: const Text(
            "Garlic Bread ",
            style: TextStyle(fontSize: 12), // Reduce text size
          ),
          contentPadding: EdgeInsets.zero,
          controlAffinity: ListTileControlAffinity.leading,
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          dense: true,
          value: garlicBread,
          onChanged: (bool? checked) {
            setState(() {
              garlicBread = checked!;
            });
          },
        ),
        CheckboxListTile(
          side: MaterialStateBorderSide.resolveWith((states) {
            if(states.contains(MaterialState.selected)){
              return BorderSide.none;
            }else{
              return  BorderSide(
                color: AppColors.greyColor,
              );
            }

          }),
          checkboxShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          activeColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          title: const Text(
            "Ketchup",
            style: TextStyle(fontSize: 12), // Reduce text size
          ),
          contentPadding: EdgeInsets.zero,
          controlAffinity: ListTileControlAffinity.leading,
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          dense: true,
          value: ketchup,
          onChanged: (bool? checked) {
            setState(() {
              ketchup = checked!;
            });
          },
        ),
      ],
    );
  }
}
