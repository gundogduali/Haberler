import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../app_localizations.dart';
import 'profile_item.dart';

class ProfileExpandedItem extends StatelessWidget {
  final Icon? icon;
  final String title;
  final Widget? trailing;
  final Function() onTap;
  final List<String> children;

  const ProfileExpandedItem({
    Key? key,
    this.icon,
    required this.title,
    this.trailing,
    required this.onTap,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: icon,
      title: Text(title, style: Theme.of(context).textTheme.subtitle2),
      trailing: trailing,
      children: [
        ProfileItem(
            title: children[0],
            onTap: () async {
              await context.setLocale(AppLocalizations.supportedLocales[0]);
            }),
        ProfileItem(
            title: children[1],
            onTap: () async {
              await context.setLocale(AppLocalizations.supportedLocales[1]);
            }),
      ],
    );
  }
}
