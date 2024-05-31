import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';

import 'package:flutter/material.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(height: 100, image: AssetImage(TImages.lightAppLogo)),
        Text(
          TTexts.loginTitle,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: TSizes.sm,
        ),
        Text(TTexts.loginSubTitle,
            style: TextStyle(
              fontSize: 16,
            ))
      ],
    );
  }
}
