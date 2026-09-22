import 'package:boost_widgets/boost_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/config.dart';
import 'package:marketplace/l10n/l10n.dart';
import 'package:marketplace/theme/app_theme.dart';
import 'package:url_launcher/url_launcher_string.dart';

const _phoneUrl = 'tel://${AppConfig.supportPhone}';

class ContactsBlock extends StatelessWidget {
  const ContactsBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Button(
          onPressed: () => launchUrlString(AppConfig.supportUrl),
          theme: context.theme.buttonLink,
          leading: const Icon(AppIcons.mail),
          child: Text(AppLocalizations.of(context).support),
        ),
        8.verticalSpace,
        Button(
          onPressed: () => launchUrlString(_phoneUrl.replaceAll(' ', '')),
          theme: context.theme.buttonLink,
          leading: const Icon(AppIcons.phone),
          child: const Text(AppConfig.supportPhone),
        ),
      ],
    );
  }
}
