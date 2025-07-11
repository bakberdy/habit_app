import 'dart:io';

import 'package:habit_app/core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:habit_app/generated/l10n.dart';

class CustomAdaptiveDialogWindow extends StatelessWidget {
  const CustomAdaptiveDialogWindow({
    super.key,
    required this.title,
    required this.content,
    required this.onAgree,
    this.onDisAgree,
  });
  final String title;
  final String content;
  final VoidCallback onAgree;
  final VoidCallback? onDisAgree;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Platform.isIOS
        ? CupertinoAlertDialog(
            title: Text(title, style: theme.textTheme.headlineSmall),
            content: Text(content),
            actions: [
              TextButton(
                onPressed: () => onDisAgree ?? context.pop(false),
                child: Text(S.of(context).no,
                    style: theme.textTheme.bodyMedium
                        ?.copyWith(color: theme.primaryColor)),
              ),
              TextButton(
                onPressed: onAgree,
                child: Text(S.of(context).yes,
                    style: theme.textTheme.bodyMedium
                        ?.copyWith(color: Colors.red)),
              ),
            ],
          )
        : AlertDialog(
            backgroundColor: Colors.white,
            title: Text(title, style: theme.textTheme.headlineMedium),
            content: Text(content),
            actions: [
              TextButton(
                onPressed: () => onDisAgree ?? context.pop(false),
                child: Text(S.of(context).no,
                    style: theme.textTheme.bodyMedium
                        ?.copyWith(color: theme.primaryColor)),
              ),
              TextButton(
                onPressed: onAgree,
                child: Text(S.of(context).yes,
                    style: theme.textTheme.bodyMedium
                        ?.copyWith(color: Colors.red)),
              ),
            ],
          );
  }
}
