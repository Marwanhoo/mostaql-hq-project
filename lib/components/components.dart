import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mostaql_hq_project/colors/app_colors.dart';
import 'package:mostaql_hq_project/styles/app_styles.dart';

ListTile buildListTile({
  String? title,
  Function()? onTap,
}) {
  return ListTile(
    onTap: onTap,
    title: Text(
      "$title",
      style: AppStyles.style14Black,
    ),
    trailing: const Icon(Icons.arrow_forward_ios),
  );
}

Expanded buildExpandedPageNike({
  String? imageAsset,
  String? textPrice,
  String? textName,
}) {
  return Expanded(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.center,
          child: CircleAvatar(
            radius: 50,
            backgroundColor: Colors.transparent,
            child: Image.asset("$imageAsset"),
          ),
        ),
        Text(
          "$textPrice",
          style: AppStyles.style14Black,
        ),
        Text(
          "$textName",
          style: AppStyles.style13,
        ),
      ],
    ),
  );
}

void scaffoldMessengerText(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
}

AppBar buildAppBar(BuildContext context, String title) {
  return AppBar(
    leading: InkWell(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        child: SvgPicture.asset("assets/svg/arrow-left.svg"),
      ),
    ),
    title: Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset("assets/svg/shopping-cart.svg"),
      ),
    ],
  );
}


Divider buildDivider() {
  return Divider(
    color: AppColors.greyColor3,
  );
}
