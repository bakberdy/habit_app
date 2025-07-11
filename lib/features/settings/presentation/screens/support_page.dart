import 'package:flutter/material.dart';
import 'package:habit_app/core/core.dart';
import 'package:habit_app/core/shared/widgets/custom_filled_button.dart';
import 'package:habit_app/core/theme/app_colors.dart';
import 'package:habit_app/core/theme/app_text_theme.dart';
import 'package:habit_app/generated/l10n.dart';
import 'package:url_launcher/url_launcher.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({super.key});

  Future<void> _sendEmail(BuildContext context) async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'bakberdy.ye@gmail.com',
      queryParameters: {
        'subject': S.of(context).supportRequestFromDet,
        'body': S.of(context).helloDetTeamnniNeedHelpWith,
      },
    );

    if (await canLaunchUrl(emailLaunchUri)) {
      await launchUrl(emailLaunchUri);
    } else {
      if (context.mounted) {
        showErrorToast(context,
            message: S.of(context).couldNotLaunchEmailClient);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).support,
          style: AppTextTheme.h5.copyWith(fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Icon(Icons.support_agent, size: 80, color: Colors.blueAccent),
          const SizedBox(height: 16),
          Text(
            S.of(context).needHelpOrHaveFeedback,
            textAlign: TextAlign.center,
            style: AppTextTheme.h5,
          ),
          const SizedBox(height: 8),
          Text(
            S.of(context).wereHereToHelpYouStayOnTrackWithYour,
            textAlign: TextAlign.center,
            style: AppTextTheme.bodyMedium.copyWith(color: Colors.grey[600]),
          ),
          const SizedBox(height: 32),
          Text(
            S.of(context).contactUs,
            style: AppTextTheme.bodyLarge.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () => _sendEmail(context),
              child: Text(
                'bakberdy.ye@gmail.com',
                style:
                    AppTextTheme.bodyMedium.copyWith(color: Colors.blueAccent),
              ),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            S.of(context).frequentlyAskedQuestions,
            style: AppTextTheme.bodyLarge.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          _buildFaqItem(S.of(context).howDoICreateAHabit,
              S.of(context).goToTheMyPlansPageAndTapToAdd),
          _buildFaqItem(S.of(context).canITrackMultipleHabits,
              S.of(context).yesYouCanAddAsManyHabitsAsYouWant),
          _buildFaqItem(S.of(context).doesDetSendReminders,
              S.of(context).yesYouCanEnableNotificationsInSettings),
          const SizedBox(height: 32),
          CustomFilledButton(
            onPressed: () => _sendEmail(context),
            title: S.of(context).sendFeedback,
            titleColor: Colors.white,
            backgroundColor: AppColors.primary,
          ),
        ],
      ),
    );
  }

  Widget _buildFaqItem(String question, String answer) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            question,
            style:
                AppTextTheme.bodyMedium.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 4),
          Text(
            answer,
            style: AppTextTheme.bodyMedium.copyWith(color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }
}
