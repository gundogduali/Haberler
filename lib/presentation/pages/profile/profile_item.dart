import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  final Icon? icon;
  final String title;
  final Widget? trailing;
  final Function()? onTap;

  const ProfileItem(
      {Key? key, this.icon, required this.title, this.trailing, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 60,
        child: ListTile(
          leading: icon,
          title: Text(title, style: Theme.of(context).textTheme.subtitle2),
          trailing: trailing,
        ),
      ),
    );
  }
}

class ProfileSubListItem extends StatelessWidget {
  final Icon? icon;
  final String title;
  final Widget? trailing;
  final Future<Function()>? onTap;

  const ProfileSubListItem(
      {Key? key, this.icon, required this.title, this.trailing, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async => await onTap,
      child: SizedBox(
        height: 60,
        child: ListTile(
          leading: icon,
          title: Text(title, style: Theme.of(context).textTheme.subtitle2),
          trailing: trailing,
        ),
      ),
    );
  }
}
