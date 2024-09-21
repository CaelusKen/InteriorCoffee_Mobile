import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:interior_coffee/utils/constants/sizes.dart';

class TRating extends StatelessWidget {
  const TRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(Iconsax.star5, color: Colors.amber, size: 24),
            SizedBox(width: TSizes.spaceBtwItems / 2),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: '5.0 ', style: Theme.of(context).textTheme.bodyLarge),
                  TextSpan(text: '(256)')
                ]
              )
              )
          ],
        ),
        //button
        IconButton(onPressed: (){}, icon: Icon(Iconsax.share, size: TSizes.md)),
      ],
    );
  }
}