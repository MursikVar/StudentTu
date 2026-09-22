import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/features/authentication/pages/widgets/contacts.dart';
import 'package:marketplace/l10n/localizations.dart';
import 'package:marketplace/theme/app_theme.dart';
import 'package:marketplace/widgets/tagged_text.dart';
import 'package:open_mail/open_mail.dart'; // <-- изменён импорт

/// Отображает информацию о том, что письмо было отправлено
@RoutePage()
class RecoverAccessInfoPage extends StatelessWidget {
  final String email;

  const RecoverAccessInfoPage({
    super.key,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white100,
        foregroundColor: AppColors.black100,
        title: Text($.passwordRecovery),
      ),
      body: Padding(
        padding: REdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: _buildContent(context),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    final children = <Widget>[
      TaggedText(
        text: $.sentEmailNotice(email),
        builder: (tag) {
          return Tag(
            style: context.typography.bodyBold + AppColors.violet100,
            onTap: (_) => OpenMail.openMailApp(), // <-- изменён вызов
          );
        },
        textStyle: context.typography.body + AppColors.black100,
      ),
      16.verticalSpace,
      Text(
        $.contactSupportIfNoEmail,
        style: context.typography.body + AppColors.black100,
      ),
      32.verticalSpace,
      const ContactsBlock(),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: children,
    );
  }
}