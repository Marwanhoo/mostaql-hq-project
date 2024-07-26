import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mostaql_hq_project/colors/app_colors.dart';
import 'package:mostaql_hq_project/components/components.dart';
import 'package:mostaql_hq_project/styles/app_styles.dart';

class PageNikeScreen extends StatelessWidget {
  const PageNikeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context,"Page"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Image.asset("assets/image/nike_logo.png"),
                title: Row(
                  children: [
                    const Text("Nike"),
                    const SizedBox(width: 5),
                    SvgPicture.asset("assets/svg/queen.svg"),
                  ],
                ),
                subtitle:  Text("Fashion And Style | Dammam",style: AppStyles.style12ColorGrey2),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset("assets/svg/profile-add.svg"),
                    const SizedBox(width: 10),
                    SvgPicture.asset("assets/svg/message-2.svg"),
                  ],
                ),
              ),
              Stack(
                alignment: Alignment.centerRight,
                children: [
                  Image.asset("assets/image/shoes ps 1.png",),
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
                   child: Text("5.0",style: TextStyle(
                     color: AppColors.yellowColor,
                   ),),
                 ),
                 Text("5 Reviews",style: TextStyle(
                   color: AppColors.greyColor2,
                 ),),
               ],
             ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Row(
                    children: [
                      Text("Orders : ",style: TextStyle(
                        color: AppColors.greyColor2,
                      )),
                      const Text("17",style: TextStyle(
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
                      Text("Available Quantity : ",style: TextStyle(
                        color: AppColors.greyColor2,
                      )),
                      const Text("17",style: TextStyle(
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
              buildListTile(title: "Product Details",),
              buildDivider(),
              buildListTile(title: "Return Policy"),
              buildDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Reviews (2)",
                    style: AppStyles.style14Black,
                  ),
                  Text(
                    "Add Reiew",
                    style: TextStyle(
                      color: AppColors.greyColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Table(
                children: [
                  TableRow(
                    children: [
                      const Text("Client Reviews"),
                      SizedBox(
                        child: RatingBar.builder(
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
                      ),
                      Text("5.0",style: TextStyle(color: AppColors.yellowColor),),
                    ],
                  ),
                  TableRow(
                    children: [
                      Container(child: const Text("Product"),),
                      SizedBox(
                        child: RatingBar.builder(
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
                      ),
                      Text("5.0",style: TextStyle(color: AppColors.yellowColor),),
                    ],
                  ),
                  TableRow(
                    children: [
                      Container(child: const Text("Seller"),),
                      SizedBox(
                        child: RatingBar.builder(
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
                      ),
                      Text("5.0",style: TextStyle(color: AppColors.yellowColor),),
                    ],
                  ),
                  TableRow(
                    children: [
                      const Text("Delivery"),
                      SizedBox(
                        child: RatingBar.builder(
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
                      ),
                      Text("5.0",style: TextStyle(color: AppColors.yellowColor),),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const Align(
                alignment: Alignment.center,
                  child: Text(
                "You Must Log In First To Add A Review",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              )),
              buildDivider(),
              const Text("You May Also Like",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
              Row(
                children: [
                  buildExpandedPageNike(
                    imageAsset: "assets/image/page_nike_1.png",
                    textPrice: "100 SAR",
                    textName: "Women shoes",
                  ),
                  buildExpandedPageNike(
                    imageAsset: "assets/image/page_nike_2.png",
                    textPrice: "100 SAR",
                    textName: "Trainers shoes",
                  ),
                ],
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.blueColor,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  minimumSize:const Size(double.infinity,48),
                  textStyle: GoogleFonts.dmSans(
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                onPressed: () {
                  scaffoldMessengerText(context,"Done");
                },
                child: const Text("Add To Cart"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
