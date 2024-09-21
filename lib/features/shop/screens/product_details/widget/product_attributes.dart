import 'package:flutter/material.dart';
import 'package:interior_coffee/common/widgets/chips/choice_chip.dart';
import 'package:interior_coffee/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:interior_coffee/common/widgets/text/product_price_text.dart';
import 'package:interior_coffee/common/widgets/text/product_title_text.dart';
import 'package:interior_coffee/common/widgets/text/section_heading.dart';
import 'package:interior_coffee/utils/constants/colors.dart';
import 'package:interior_coffee/utils/constants/sizes.dart';
import 'package:interior_coffee/utils/helpers/function_helper.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Column(
      children: [
        //select attribute
        TRoundedContainer(
          padding: EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //title price and stock status
              Row(
                children: [
                  TSectionHeading(title: 'Variation', showActionButton: false),
                  SizedBox(width: TSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          TProductTitleText(title: 'Price ', smallSize: true),
                          SizedBox(width: TSizes.spaceBtwItems),
                       
                      //actual price
                      Text(
                        '\$25',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .apply(decoration: TextDecoration.lineThrough),
                      ),
                      SizedBox(width: TSizes.spaceBtwItems),

                      //sale price
                      TProductPriceText(price: '20'),
                       ],
                      ),

                      //stock
                      Row(
                        children: [
                          TProductTitleText(title: 'Stock : ', smallSize: true),
                          Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
                        ],
                      )
                    ],
                  ),
                ],
              ),

              //variation description
              TProductTitleText(
                title: 'Product description and this can be 4 lines long if you want it to be',
                smallSize: true,
                maxLines: 4,
              )
            ],
          ),
        ),
      
        SizedBox(height: TSizes.spaceBtwItems),
        //attribute
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TSectionHeading(title: 'Colors'),
            SizedBox(height: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'Green', selected: true, onSelected: (value){}),
                TChoiceChip(text: 'Blue', selected: false, onSelected: (value){}),
                TChoiceChip(text: 'Red', selected: false, onSelected: (value){}),
                TChoiceChip(text: 'Pink', selected: false, onSelected: (value){}),
                TChoiceChip(text: 'Grey', selected: false, onSelected: (value){}),
                TChoiceChip(text: 'Purple', selected: false, onSelected: (value){}),
                TChoiceChip(text: 'Black', selected: false, onSelected: (value){}),
                TChoiceChip(text: 'Teal', selected: false, onSelected: (value){}),
                TChoiceChip(text: 'Brown', selected: false, onSelected: (value){}),
              ]
            )
          ],
        )
      ],
    );
  }
}
