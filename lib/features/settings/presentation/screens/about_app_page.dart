import 'package:flutter/material.dart';
import 'package:habit_app/core/theme/app_text_theme.dart';
import 'package:habit_app/generated/l10n.dart';

class AboutAppPage extends StatelessWidget {
  const AboutAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).aboutApp,
          style: AppTextTheme.h5.copyWith(fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        children: [
          Center(
            child: Column(
              children: [
                const SizedBox(height: 16),
                Text(
                  'Ádet',
                  style: AppTextTheme.h3.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  S.of(context).todaysHabitIsTheReflectionOfYourFutureLife,
                  style: AppTextTheme.bodyLarge.copyWith(
                    fontStyle: FontStyle.italic,
                    color: Colors.grey[600],
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),
          Text(
            S.of(context).whatIsDet,
            style: AppTextTheme.h5.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 8),
          Text(
            S.of(context).detIsASmartAndElegantHabitTrackerThatHelps,
            style: AppTextTheme.bodyMedium,
          ),
          const SizedBox(height: 24),
          // Image.asset('assets/images/habit_illustration.png'),
          // const SizedBox(height: 24),
          Text(
            S.of(context).keyFeatures,
            style: AppTextTheme.h5.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 12),
          _buildFeatureItem(
            icon: Icons.check_circle_outline,
            title: S.of(context).readymadeAndCustomHabits,
            description: S
                .of(context)
                .chooseFromCarefullyCraftedHabitTemplatesOrCreateYourOwn,
          ),
          _buildFeatureItem(
            icon: Icons.calendar_month_outlined,
            title: S.of(context).heatmapProgressTracker,
            description: S
                .of(context)
                .visualizeYourDailyConsistencyWithAnInteractiveHeatmapCalendar,
          ),
          _buildFeatureItem(
            icon: Icons.bolt_outlined,
            title: S.of(context).streakMotivationSystem,
            description: S
                .of(context)
                .stayEngagedAndInspiredByTrackingYourStreaksAndSetting,
          ),
          _buildFeatureItem(
            icon: Icons.language_outlined,
            title: S.of(context).multilingualSupport,
            description: S
                .of(context)
                .availableInKazakhRussianAndEnglishBecauseGrowthHasNo,
          ),
          const SizedBox(height: 32),
          Text(
            S
                .of(context)
                .builtForDreamersDoersAndDisciplinedMindsnstartYourDetJourney,
            textAlign: TextAlign.center,
            style: AppTextTheme.bodyLarge.copyWith(
              fontWeight: FontWeight.w600,
              color: Colors.blueGrey[700],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureItem({
    required IconData icon,
    required String title,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 28, color: Colors.blueAccent),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextTheme.bodyLarge
                      .copyWith(fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: AppTextTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
