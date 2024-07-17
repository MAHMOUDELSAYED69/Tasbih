import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasbih/controllers/counter/counter_cubit.dart';
import 'package:tasbih/utils/extentions/extentions.dart';

import '../../utils/constants/colors.dart';

class ResetButton extends StatelessWidget {
  const ResetButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(context.width/3, 40.h),
        backgroundColor: ColorManager.darkGrey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onPressed: context.cubit<CounterCubit>().reset,
      child: Text(
        'Reset',
        style:
            context.textTheme.bodyMedium?.copyWith(color: ColorManager.white),
      ),
    );
  }
}
