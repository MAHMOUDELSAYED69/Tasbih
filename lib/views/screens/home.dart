import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasbih/utils/constants/colors.dart';
import 'package:tasbih/utils/extentions/extentions.dart';
import 'package:tasbih/views/widgets/counter_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            const Spacer(flex: 3),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  overlayColor: ColorManager.transparent,
                  surfaceTintColor: ColorManager.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  backgroundColor: ColorManager.darkGrey,
                  fixedSize: Size(context.width / 3, 40.h)),
              onPressed: () {},
              child: Text(
                'Reset',
                style: context.textTheme.bodyMedium
                    ?.copyWith(color: ColorManager.white),
              ),
            ),
            const Spacer(flex: 3),
            Text(
              '0',
              style: context.textTheme.bodyLarge,
            ),
            const Spacer(),
            const CounterButton(),
            const Spacer(flex: 2),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Pray for Palestine - ',
                  style: context.textTheme.bodyMedium,
                ),
                GestureDetector(
                  child: Text(
                    'Donate',
                    style: context.textTheme.displayMedium,
                  ),
                  onTap: () {},
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
