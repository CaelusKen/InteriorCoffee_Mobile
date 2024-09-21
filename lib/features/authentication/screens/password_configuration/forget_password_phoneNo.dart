// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:interior_coffee/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:interior_coffee/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:interior_coffee/utils/constants/colors.dart';
import 'package:interior_coffee/utils/constants/sizes.dart';
import 'package:interior_coffee/utils/constants/text_strings.dart';
import 'package:interior_coffee/utils/helpers/function_helper.dart';

class ForgetPasswordPhoneNo extends StatelessWidget {
  const ForgetPasswordPhoneNo({ super.key });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: dark ? TColors.white : TColors.primary,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Headings
            Text(TTexts.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium),
            SizedBox(height: TSizes.spaceBtwItems),
            Text(TTexts.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium),
            SizedBox(height: TSizes.spaceBtwSections * 2),

            //text fields
            TextFormField(
              decoration: InputDecoration(labelText: TTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
            ),
            SizedBox(height: TSizes.spaceBtwSections),

            //submit button
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.off(ResetPassword()), child: Text(TTexts.submit))),

            SizedBox(height: TSizes.spaceBtwSections),
            SizedBox(
                width: double.infinity,
                child: TextButton(onPressed: () => Get.to(() => ForgotPassword()), child: Text(TTexts.emailInstead, style: TextStyle(color: TColors.primary))),
              ),
          ],
        ),),
    );
  }
}