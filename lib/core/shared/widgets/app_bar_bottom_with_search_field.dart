import 'package:chat_app/core/shared/widgets/custom_search_bar.dart';
import 'package:chat_app/core/core.dart';
import 'package:chat_app/core/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

class AppBarBottomWithSearchField extends StatelessWidget
    implements PreferredSizeWidget {
  const AppBarBottomWithSearchField({
    super.key,
    required this.title,
    this.searchController,
  });
  final String title;
  final TextEditingController? searchController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(height: 10),
        Text(title, style: AppTextTheme.h4),
        SizedBox(height: 10),
        CustomSearchBar(
          controller: searchController,
        ),
        SizedBox(height: 10),
      ]),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(80);
}
