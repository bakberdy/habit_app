import 'package:flutter/material.dart';
import 'package:habit_app/generated/l10n.dart';

class PageNotFound extends StatelessWidget {
  const PageNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).notFound),
      ),
    );
  }
}
