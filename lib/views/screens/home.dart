import 'package:flutter/material.dart';

import 'package:tasbih/utils/extentions/extentions.dart';
import 'package:tasbih/views/widgets/counter_button.dart';

import '../widgets/donate_button.dart';
import '../widgets/reset_button.dart';

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
            ResetButton(),
            const Spacer(flex: 3),
            Text(
              '0',
              style: context.textTheme.bodyLarge,
            ),
            const Spacer(),
            const CounterButton(),
            const Spacer(flex: 2),
            Donate(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
