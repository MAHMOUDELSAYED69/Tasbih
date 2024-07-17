import 'package:flutter/material.dart';
import 'package:tasbih/utils/constants/colors.dart';
import 'package:tasbih/utils/extentions/extentions.dart';

import '../../utils/helpers/uri_luncher.dart';

class Donate extends StatelessWidget {
  const Donate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Pray for Palestine - ',
          style: context.textTheme.bodyMedium
              ?.copyWith(color: ColorManager.lightGrey),
        ),
        GestureDetector(
          onTap: UrlManager.launchURL,
          child: Text(
            'Donate',
            style: context.textTheme.displayMedium,
          ),
        ),
      ],
    );
  }
}
