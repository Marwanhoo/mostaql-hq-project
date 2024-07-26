import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mostaql_hq_project/colors/app_colors.dart';
import 'package:mostaql_hq_project/components/components.dart';
import 'package:mostaql_hq_project/styles/app_styles.dart';
import 'package:mostaql_hq_project/widgets/quantity_add_and_remove_widget.dart';
import 'package:mostaql_hq_project/widgets/size_pizza_widget.dart';

class PizzaTabonScreen extends StatelessWidget {
  const PizzaTabonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, "Pizza Tabon"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.centerRight,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(14),
                    child: Image.asset(
                      "assets/image/pizza_tabon.jpg",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: SvgPicture.asset("assets/svg/heart.svg"),
                        ),
                        const SizedBox(height: 5),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: SvgPicture.asset("assets/svg/repeat.svg"),
                        ),
                        const SizedBox(height: 5),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: SvgPicture.asset("assets/svg/share.svg"),
                        ),
                        const SizedBox(height: 5),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: SvgPicture.asset("assets/svg/flag.svg"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Text(
                "100 SAR",
                style: AppStyles.style16dmBold,
              ),
              const SizedBox(height: 5),
              Text(
                "Air Jordan",
                style: AppStyles.style16dm400,
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  RatingBar.builder(
                    itemSize: 20,
                    initialRating: 5,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {},
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "5.0",
                      style: TextStyle(
                        color: AppColors.yellowColor,
                      ),
                    ),
                  ),
                  Text(
                    "5 Reviews",
                    style: TextStyle(
                      color: AppColors.greyColor2,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Row(
                    children: [
                      Text("Orders : ",
                          style: TextStyle(
                            color: AppColors.greyColor2,
                          )),
                      const Text("17",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text("|"),
                  ),
                  Row(
                    children: [
                      Text("Available Quantity : ",
                          style: TextStyle(
                            color: AppColors.greyColor2,
                          )),
                      const Text("17",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 5),
              buildDivider(),
              buildListTile(
                title: "Select Specifications And Quantity",
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) {
                      return Container(
                        padding: const EdgeInsets.all(16),
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.75,
                        child:  Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                 const Text("Select Specifications And Quantity"),
                                CloseButton(
                                  onPressed: (){
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            ),
                            const Text("Quantity"),
                            const SizedBox(height: 5),
                             const QuantityAddAndRemoveWidget(),
                            const SizedBox(height: 10),
                            const Text("Size"),
                            const SizePizzaWidget(),

                          ],
                        ),
                      );
                    },
                  );
                },
              ),
              buildDivider(),
              buildListTile(
                title: "Product Details",
              ),
              buildDivider(),
              buildListTile(title: "Return Policy"),
              buildDivider(),
            ],
          ),
        ),
      ),
    );
  }
}



