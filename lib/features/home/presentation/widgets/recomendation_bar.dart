import 'package:habit_app/core/providers/locale_provider.dart';
import 'package:habit_app/core/theme/app_colors.dart';
import 'package:habit_app/core/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:habit_app/generated/l10n.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';
import 'package:provider/provider.dart';

class RecomendationBar extends StatefulWidget {
  const RecomendationBar({super.key});
  @override
  State<RecomendationBar> createState() => _RecomendationBarState();
}

class _RecomendationBarState extends State<RecomendationBar> {
  int _currentPage = 0;
  final int _count = 3;
  images(String lanCode) => [
        "lib/assets/illustrations/slide_1_$lanCode.jpg",
        "lib/assets/illustrations/slide_2_$lanCode.jpg",
        "lib/assets/illustrations/slide_3_$lanCode.jpg",
      ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: 10),
            Text(S.of(context).recomendations, style: AppTextTheme.h4),
          ]),
        ),
        SizedBox(
          height: 220,
          child: PageView.builder(
            itemCount: _count,
            onPageChanged: (value) {
              _currentPage = value;
              setState(() {});
            },
            itemBuilder: (context, index) => Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              height: 220,
              width: double.infinity,
              alignment: Alignment.bottomRight,
              clipBehavior: Clip.hardEdge,
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(images(context
                        .read<LocaleProvider>()
                        .locale
                        .languageCode)[index])),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(2, 2),
                      blurRadius: 10,
                      color: AppColors.grey.withAlpha(40))
                ],
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
        Center(
            child: PageViewDotIndicator(
                size: Size(10, 10),
                unselectedSize: Size(8, 8),
                boxShape: BoxShape.circle,
                currentItem: _currentPage,
                count: _count,
                unselectedColor: AppColors.grey,
                selectedColor: AppColors.primary))
      ],
    );
  }
}
