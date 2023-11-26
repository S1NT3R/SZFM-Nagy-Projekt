import 'package:flutter/material.dart';
import 'package:step_app/src/resources/theme/application_style.dart';

class StatisticBar extends StatelessWidget {
  final int steps;
  final int maxSteps;
  const StatisticBar({
    super.key,
    required this.steps,
    required this.maxSteps,
  });

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      width: deviceSize.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(
            "$maxSteps steps",
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: steps >= maxSteps
                      ? ApplicationStyle.green
                      : ApplicationStyle.red,
                  fontSize: 24,
                ),
          ),
          Stack(
            children: [
              Container(
                width: deviceSize.width * 0.8,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Container(
                width: (deviceSize.width * 0.8) *
                    ((steps / maxSteps) > 1 ? 1 : (steps / maxSteps)),
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
