import 'package:flutter/material.dart';
import 'package:mostaql_hq_project/colors/app_colors.dart';

class QuantityAddAndRemoveWidget extends StatefulWidget {
  const QuantityAddAndRemoveWidget({
    super.key,
  });

  @override
  State<QuantityAddAndRemoveWidget> createState() => _QuantityAddAndRemoveWidgetState();
}

class _QuantityAddAndRemoveWidgetState extends State<QuantityAddAndRemoveWidget> {
  int quantityNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppColors.greyColor3,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){
            quantityNumber --;
            setState(() {});
          },
            icon:  Icon(
              Icons.remove,
              color: AppColors.greyColor,
            ),
          ),
          Text("$quantityNumber",style: Theme.of(context).textTheme.headlineMedium,),
          IconButton(onPressed: (){
            quantityNumber ++;
            setState(() {});
          }, icon: const Icon(Icons.add)),
        ],
      ),
    );
  }
}
