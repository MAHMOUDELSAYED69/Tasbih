import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasbih/utils/extentions/extentions.dart';

import '../../utils/constants/colors.dart';

class ResetButton extends StatelessWidget {
  const ResetButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 40.w),
        decoration: BoxDecoration(
            color: ColorManager.darkGrey,
            borderRadius: BorderRadius.circular(30)),
        child: Text(
          'Reset',
          style:
              context.textTheme.bodyMedium?.copyWith(color: ColorManager.white),
        ),
      ),
    );
  }
}
