import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mostaql_hq_project/colors/app_colors.dart';
import 'package:mostaql_hq_project/components/components.dart';
import 'package:mostaql_hq_project/styles/app_styles.dart';

class BagStoreScreen extends StatelessWidget {
  const BagStoreScreen({super.key});

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
                      "assets/image/bag_store.jpg",
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
              buildListTile(title: "Select Specifications And Quantity"),
              buildDivider(),
              buildListTile(
                title: "Product Details",
                onTap: () {
                  showModalBottomSheet(context: context, builder: (context) {
                    return Container(
                      padding: const EdgeInsets.all(16),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("Product Details"),
                              CloseButton(
                                onPressed: (){
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          ),
                          const Text("Handle Height : 8cm"),
                          SizedBox(height: 2.5),
                          const Text("Strap length : 85cm"),
                          SizedBox(height: 2.5),
                          const Text("Bag Height : 42 cm"),
                          SizedBox(height: 2.5),
                          const Text("Bag Width : 42 cm"),
                          SizedBox(height: 2.5),
                          const Text("Bag Length : 42 cm"),
                          SizedBox(height: 2.5),
                          const Text("Color : Red"),
                          SizedBox(height: 2.5),
                          const Text("Strap Type : Adjustable"),
                          SizedBox(height: 2.5),
                          const Text("Composition : 100% Naylon"),
                          SizedBox(height: 2.5),
                          const Text("Type : Classic Backpack"),
                          SizedBox(height: 2.5),
                          const Text("Bag Size : Medium"),
                          SizedBox(height: 2.5),
                          const Text("Product Number : 122334575"),
                        ],
                      ),
                    );
                  },);
                },
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
