import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/features/authentication/pages/widgets/contacts.dart';
import 'package:marketplace/l10n/localizations.dart';
import 'package:marketplace/theme/app_theme.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class RecoverEmailPage extends StatelessWidget {
  const RecoverEmailPage({super.key});

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
      Text(
        $.contactSupportToRestoreEmail,
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
