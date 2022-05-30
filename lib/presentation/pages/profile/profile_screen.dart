import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../app_localizations.dart';
import '../../../common/extensions/size_extensions.dart';
import '../../../common/generated/locale_keys.g.dart';
import '../../themes/app_color.dart';

part 'profile_expanded_item.dart';
part 'profile_item.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(
          top: 26.h,
          left: 26.w,
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 35,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Text(
                    'Ali Gündoğdu',
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(color: Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12.h),
            const Divider(
              endIndent: 13,
              thickness: 0.5,
              color: AppColor.mineShaft,
            ),
            ProfileItem(
              icon: const Icon(Icons.nightlight_round_rounded),
              title: LocaleKeys.nightMode.tr(),
              trailing: const Text('Off'),
              onTap: () {},
            ),
            ProfileExpandedItem(
              icon: const Icon(Icons.language_rounded),
              title: LocaleKeys.language.tr(),
              onTap: () {},
              children: const ['Türkçe', 'English'],
            ),
            ProfileItem(
              icon: const Icon(Icons.email_rounded),
              title: 'Email',
              trailing: const Text('aligun1079@gmail.com'),
              onTap: () {},
            ),
            ProfileItem(
              icon: const Icon(Icons.bookmark_outline_rounded),
              title: LocaleKeys.bookmark.tr(),
              onTap: () {},
            ),
            const Divider(
              endIndent: 13,
              thickness: 0.5,
              color: AppColor.mineShaft,
            ),
            ProfileItem(
              icon: const Icon(Icons.logout_rounded),
              title: LocaleKeys.logout.tr(),
              onTap: () {},
            ),
          ],
        ),
      )),
    );
  }
}
