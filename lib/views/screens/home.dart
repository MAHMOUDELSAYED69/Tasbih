import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasbih/controllers/counter/counter_cubit.dart';
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
            const ResetButton(),
            const Spacer(flex: 3),
            BlocBuilder<CounterCubit, int>(
              builder: (context, state) {
                return Text(state.toString(),
                    textAlign: TextAlign.center,
                    style: context.textTheme.bodyLarge);
              },
            ),
            const Spacer(flex: 2),
            const CounterButton(),
            const Spacer(flex: 2),
            const Donate(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
