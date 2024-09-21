import 'package:flutter/material.dart';
import 'package:interior_coffee/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:interior_coffee/common/widgets/image/t_circular_image.dart';
import 'package:interior_coffee/common/widgets/text/product_price_text.dart';
import 'package:interior_coffee/common/widgets/text/product_title_text.dart';
import 'package:interior_coffee/common/widgets/text/t_merchat_title_with_verified_icon.dart';
import 'package:interior_coffee/utils/constants/enums.dart';
import 'package:interior_coffee/utils/constants/image_strings.dart';
import 'package:interior_coffee/utils/constants/sizes.dart';
import 'package:interior_coffee/utils/helpers/function_helper.dart';
import 'package:interior_coffee/utils/constants/colors.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //sale tag
        Row(
          children: [
            TRoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding:
                  EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text('25%',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: TColors.black)),
            ),
            SizedBox(width: TSizes.spaceBtwItems),
            //price
            Text('\$250', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough)),
            SizedBox(width: TSizes.spaceBtwItems),
            TProductPriceText(price: '175', isLarge: true),
          ],
        ),
        
        SizedBox(height: TSizes.spaceBtwItems / 1.5),
        //title
        TProductTitleText(title: 'White coffee armchair'),
        SizedBox(height: TSizes.spaceBtwItems / 1.5),

        //stock status
        Row(
          children: [
            TProductTitleText(title: 'Status : '),
            Text('In stock', style: Theme.of(context).textTheme.titleMedium),
            SizedBox(height: TSizes.spaceBtwItems / 1.5),
          ],
        ),

        //merchant icon
        Row(
          children: [
            TCircularImage(image: TImages.furnitureIcon, width: 32, height: 32, overlayColor: dark ? TColors.white : TColors.dark),
            TMerchatTitleWithVerifiedIcon(title: 'Zinus', brandTextSize: TextSizes.medium),
          ],
        ),
      ],
    );
  }
}
