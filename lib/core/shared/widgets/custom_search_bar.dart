import 'package:flutter/material.dart';
import 'package:habit_app/generated/l10n.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
    this.controller,
    required this.onChange,
  });

  final TextEditingController? controller;
  final ValueChanged onChange;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            offset: Offset(0, 0),
            blurRadius: 6,
            color: Color(0xff000000).withAlpha(25))
      ]),
      height: 40,
      width: double.infinity,
      child: TextField(
        onChanged: onChange,
        controller: controller,
        style: themeData.textTheme.bodyMedium,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            fillColor: Colors.white,
            filled: true,
            prefixIcon: Icon(
              Icons.search,
              color: themeData.hintColor,
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none),
            hintText: S.of(context).search,
            hintStyle: themeData.textTheme.bodyMedium
                ?.copyWith(color: themeData.hintColor)),
      ),
    );
  }
}
