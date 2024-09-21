import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:interior_coffee/common/widgets/text/section_heading.dart';
import 'package:interior_coffee/features/shop/screens/product_details/widget/bottom_add_to_cart.dart';
import 'package:interior_coffee/features/shop/screens/product_details/widget/product_attributes.dart';
import 'package:interior_coffee/features/shop/screens/product_details/widget/product_detail_image_slider.dart';
import 'package:interior_coffee/features/shop/screens/product_details/widget/product_meta_data.dart';
import 'package:interior_coffee/features/shop/screens/product_details/widget/rating_widget.dart';
import 'package:interior_coffee/utils/constants/sizes.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({ super.key });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //product image slide
            TProductImageSlider(),

            //product detail
            Padding(
              padding: EdgeInsets.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace, bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  //Rating button
                  TRating(),

                  //sale tag
                  TProductMetaData(),

                  //product attributes
                  TProductAttributes(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  //check out button
                  SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: Text('Checkout'))),
                  SizedBox(height: TSizes.spaceBtwSections),

                  //description
                  TSectionHeading(title: 'Description', showActionButton: false),
                  SizedBox(height: TSizes.spaceBtwItems),
                  ReadMoreText(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus interdum orci eget suscipit egestas. Quisque eget ultrices odio. Mauris eget congue leo. Nunc in mauris ligula. Phasellus mi purus, semper at facilisis vitae, volutpat ut diam. Cras sollicitudin gravida posuere. Aenean id neque non libero varius finibus posuere vel nisl. Suspendisse eu est elementum, ultrices libero non, aliquam diam. Nulla ex metus, mattis auctor arcu non, vehicula gravida magna.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show more',
                    trimExpandedText: ' Less',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  //Reviews
                  Divider(),
                  SizedBox(height: TSizes.spaceBtwSections),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TSectionHeading(title: 'Reviews (256)', showActionButton: false),
                      IconButton(onPressed: (){}, icon: Icon(Iconsax.arrow_right_3, size : 18)),
                    ],
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}



