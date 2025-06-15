import 'package:habit_app/core/core.dart';
import 'package:flutter/material.dart';

class HabitScreen extends StatefulWidget {
  const HabitScreen({super.key, required this.habitId});
  final int habitId;

  @override
  State<HabitScreen> createState() => _HabitScreenState();
}

class _HabitScreenState extends State<HabitScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: CustomScrollView(
      slivers: [
        CustomSliverAppBar(title: 'Task title'),
        SliverToBoxAdapter(child: const Placeholder()),
      ],
    )));
  }
}
