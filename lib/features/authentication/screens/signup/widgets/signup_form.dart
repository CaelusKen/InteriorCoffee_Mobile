import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:interior_coffee/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:interior_coffee/utils/constants/sizes.dart';
import 'package:interior_coffee/utils/constants/text_strings.dart';
import 'package:interior_coffee/utils/validators/validator.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                validator: (value) => TValidator.validateFullname(value),
                expands: false,
                decoration: InputDecoration(labelText: TTexts.fullName,prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
          ],
        ),
    
        SizedBox(height: TSizes.spaceBtwInputField),
        //Username
        TextFormField(
          validator: (value) => TValidator.validateEmptyText('Username', value),
          expands: false,
          decoration: InputDecoration(labelText: TTexts.username,prefixIcon: Icon(Iconsax.user_edit)),
        ),
    
        SizedBox(height: TSizes.spaceBtwInputField),
        //address
        TextFormField(
          validator: (value) => TValidator.validateEmptyText('Address', value),
          expands: false,
          decoration: InputDecoration(labelText: 'Address',prefixIcon: Icon(Iconsax.house)),
        ),
    
        SizedBox(height: TSizes.spaceBtwInputField),
        //Phone number
        TextFormField(
          validator: (value) => TValidator.validatePhoneNumber(value),
          expands: false,
          decoration: InputDecoration(labelText: TTexts.phoneNo,prefixIcon: Icon(Iconsax.call)),
        ),
    
        SizedBox(height: TSizes.spaceBtwInputField),
        //Password
        TextFormField(
          validator: (value) => TValidator.validatePassword(value),
          obscureText: true,
          expands: false,
          decoration: InputDecoration(
            labelText: TTexts.password,
            prefixIcon: Icon(Iconsax.password_check),
            suffixIcon: Icon(Iconsax.eye_slash),
          ),
        ),
    
        SizedBox(height: TSizes.spaceBtwSections),
        //term and condition
        TTermsAndConditionCheckbox(),
    
        SizedBox(height: TSizes.spaceBtwSections),
        //Sign up button
        SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: Text(TTexts.createAccount)),),
        ],
      ),
    );
  }
}