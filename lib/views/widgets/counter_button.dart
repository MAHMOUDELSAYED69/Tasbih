import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasbih/controllers/counter/counter_cubit.dart';
import 'package:tasbih/utils/constants/colors.dart';
import 'package:tasbih/utils/extentions/extentions.dart';

class CounterButton extends StatefulWidget {
  const CounterButton({super.key});

  @override
  State<CounterButton> createState() => _CounterButtonState();
}

class _CounterButtonState extends State<CounterButton> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTapDown: (_) {
        setState(() {
          isTapped = true;
        });
      },
      onTapUp: (_) async {
        await Future.delayed(const Duration(milliseconds: 150));
        setState(() {
          isTapped = false;
        });
      },
      onTapCancel: () async {
        await Future.delayed(const Duration(milliseconds: 150));
        setState(() {
          isTapped = false;
        });
      },
      onTap: context.cubit<CounterCubit>().increment,
      splashColor: ColorManager.transparent,
      overlayColor: const WidgetStatePropertyAll(ColorManager.transparent),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        alignment: Alignment.center,
        width: context.width / 2,
        height: context.width / 2,
        decoration: BoxDecoration(
          color: isTapped
              ? ColorManager.lightGreen.withOpacity(0.5)
              : ColorManager.darkGreen,
          shape: BoxShape.circle,
          border: Border.all(
            color: isTapped ? ColorManager.lightGreen : ColorManager.black,
            width: 4.sp,
          ),
        ),
        child: Center(
          child: RotatedBox(
            quarterTurns: 1,
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: ColorManager.lightGreen,
              size: 60.sp,
            ),
          ),
        ),
      ),
    );
  }
}
