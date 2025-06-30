import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habit_app/core/shared/widgets/custom_filled_button.dart';
import 'package:habit_app/core/theme/app_colors.dart';
import 'package:habit_app/generated/l10n.dart';

class OnbordingPage extends StatefulWidget {
  const OnbordingPage({super.key});

  @override
  State<OnbordingPage> createState() => _OnbordingPageState();
}

class _OnbordingPageState extends State<OnbordingPage> {
  final pageController = PageController();

  int currentPage = 0;
  double progress = 0.0;
  Timer? progressTimer;

  final int totalPages = 3;
  final Duration stepDuration = Duration(milliseconds: 10);

  void _goToNextPage() {
    context.goNamed('home');
  }

  void startProgress() {
    progressTimer?.cancel();
    progress = 0.0;

    progressTimer = Timer.periodic(stepDuration, (timer) {
      setState(() {
        progress += stepDuration.inMilliseconds / 5000;
        if (progress >= 1.0) {
          progress = 1.0;
          timer.cancel();

          if (currentPage < totalPages - 1) {
            currentPage++;
            pageController.animateToPage(
              currentPage,
              duration: const Duration(milliseconds: 300),
              curve: Curves.ease,
            );
            startProgress();
          }
        }
      });
    });
  }

  @override
  void initState() {
    super.initState();
    startProgress();

    pageController.addListener(() {
      final newPage = pageController.page!.round();
      if (newPage != currentPage) {
        setState(() {
          currentPage = newPage;
          startProgress();
        });
      }
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    progressTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                spacing: 5,
                mainAxisSize: MainAxisSize.min,
                children: List.generate(totalPages, (index) {
                  return Expanded(
                    child: LinearProgressIndicator(
                      borderRadius: BorderRadius.circular(5),
                      backgroundColor: AppColors.hint,
                      color: Colors.white,
                      minHeight: 5,
                      value: index < currentPage
                          ? 1
                          : index == currentPage
                              ? progress
                              : 0,
                    ),
                  );
                }),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTapUp: (details) {
                  final screenWidth = MediaQuery.of(context).size.width;
                  final dx = details.localPosition.dx;

                  if (dx < screenWidth / 2) {
                    if (pageController.page! > 0) {
                      pageController.previousPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease,
                      );
                    }
                  } else {
                    if (pageController.page! < 2) {
                      pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease,
                      );
                    } else if (pageController.page == 2) {
                      _goToNextPage();
                    }
                  }
                },
                child: PageView(
                  controller: pageController,
                  children: onbordContents(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  onbordContents() => [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60),
                Text(
                  'Dailo',
                  style:
                      GoogleFonts.lalezar(fontSize: 100, color: Colors.white),
                ),
                Text(
                  S.of(context).todaysHabitIsTheReflectionOfYourFutureLife,
                  style: GoogleFonts.lalezar(fontSize: 30, color: Colors.white),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Text(
                  S.of(context).createAHabit,
                  style: GoogleFonts.lalezar(fontSize: 30, color: Colors.white),
                ),
                SizedBox(height: 20),
                Center(
                  child: Container(
                      clipBehavior: Clip.hardEdge,
                      constraints: BoxConstraints(maxHeight: 400),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12)),
                      child: Image.asset('lib/assets/screens/catalog.png')),
                ),
                SizedBox(height: 12),
                Text(
                  S
                      .of(context)
                      .chooseAHabitFromReadymadeSamplesnorCreateYourOwnPersonal,
                  style: GoogleFonts.lalezar(fontSize: 20, color: Colors.white),
                ),
                SizedBox(height: 16),
                Text(
                  S.of(context).todaysHabitIsTheReflectionOfYourFutureLife,
                  style:
                      GoogleFonts.lalezar(fontSize: 18, color: Colors.white70),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Text(
                  S.of(context).trackYourProgress,
                  style: GoogleFonts.lalezar(fontSize: 30, color: Colors.white),
                ),
                SizedBox(height: 20),
                Center(
                  child: Container(
                      clipBehavior: Clip.hardEdge,
                      constraints: BoxConstraints(maxHeight: 400),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12)),
                      child:
                          Image.asset('lib/assets/screens/home_activity.png')),
                ),
                SizedBox(height: 12),
                Text(
                  S
                      .of(context)
                      .stayMotivatedWithAHeatmapCalendarnandPlanYourDayWith,
                  style: GoogleFonts.lalezar(fontSize: 20, color: Colors.white),
                ),
                SizedBox(height: 16),
                Text(
                  S.of(context).todaysHabitIsTheReflectionOfYourFutureLife,
                  style:
                      GoogleFonts.lalezar(fontSize: 18, color: Colors.white70),
                ),
                SizedBox(height: 16),
                CustomFilledButton(
                    borderColor: Colors.white,
                    titleColor: Colors.white,
                    title: S.of(context).start,
                    onPressed: _goToNextPage,
                    backgroundColor: Colors.transparent)
              ],
            ),
          ),
        )
      ];
}
