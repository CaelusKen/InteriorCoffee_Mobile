import 'package:flutter/material.dart';
import 'package:interior_coffee/common/widgets/image_text_widget/vertical_image_text.dart';
import 'package:interior_coffee/utils/constants/image_strings.dart';

class THomeCategory extends StatelessWidget {
  const THomeCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index){
          return TVerticalImageText(image: TImages.furnitureIcon, title: 'Chair', onTap: (){});
        }
        ),
    );
  }
}