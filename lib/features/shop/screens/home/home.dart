import 'package:flutter/material.dart';
import 'package:interior_coffee/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:interior_coffee/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:interior_coffee/common/widgets/text/section_heading.dart';
import 'package:interior_coffee/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:interior_coffee/features/shop/screens/home/widgets/home_category.dart';
import 'package:interior_coffee/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  SizedBox(height: TSizes.spaceBtwSections),
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwItems),

                  //Search bar
                  TSearchContainer(text: 'Search in store',),
                  SizedBox(height: TSizes.spaceBtwSections),

                  //categories slider
                  Padding(padding: EdgeInsets.only(left: TSizes.defaultSpace), 
                  child: Column(
                    children: [
                      TSectionHeading(title: 'Furniture Types', showActionButton: false, textColor: Colors.white),
                      SizedBox(height: TSizes.spaceBtwItems),

                      //category
                      THomeCategory(),
                    ],
                  ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
