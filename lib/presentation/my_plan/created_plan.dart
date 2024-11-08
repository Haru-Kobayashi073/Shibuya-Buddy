import 'package:flutter/material.dart';

class CreatedPlan extends StatefulWidget {
  const CreatedPlan({super.key});

  @override
  State<CreatedPlan> createState() => _CreatedPlanState();
}

class _CreatedPlanState extends State<CreatedPlan> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Text('created_plan'),
      ],
    );
  }
}
