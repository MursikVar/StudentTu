import 'package:auto_route/auto_route.dart';
import 'package:boost_widgets/boost_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/di/injector.dart';
import 'package:marketplace/features/authentication/blocs/recover/recover_bloc.dart';
import 'package:marketplace/l10n/localizations.dart';
import 'package:marketplace/routing/router.dart';
import 'package:marketplace/theme/app_theme.dart';
import 'package:marketplace/widgets/app_snackbar.dart';
import 'package:marketplace/widgets/email_input.dart';

/// Страница восстановления пароля
@RoutePage()
class RecoverPasswordPage extends StatefulWidget {
  const RecoverPasswordPage({super.key});

  @override
  State<RecoverPasswordPage> createState() => _RecoverPasswordPageState();
}

class _RecoverPasswordPageState extends State<RecoverPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RecoverBloc>(
      create: (_) => inject(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.white100,
          foregroundColor: AppColors.black100,
          title: Text($.passwordRecovery),
        ),
        body: SingleChildScrollView(
          padding: REdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: _buildContent(context),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            $.enterYourEmail,
            style: context.typography.body + AppColors.black100,
          ),
          32.verticalSpace,
          EmailInput(
            controller: _emailController,
            required: true,
          ),
          24.verticalSpace,
          BlocConsumer<RecoverBloc, RecoverState>(
            listener: _listener,
            builder: (context, state) {
              return Button(
                loading: state is RecoverLoading,
                onPressed: () => _onRecover(context),
                child: Text($.recoverAccess),
              );
            },
          ),
          16.verticalSpace,
          Button(
            onPressed: () => context.router.push(const RecoverEmailRoute()),
            theme: context.theme.buttonSecondaryLarge,
            child: Text($.dontRememberEmail),
          ),
        ],
      ),
    );
  }

  void _listener(BuildContext context, RecoverState state) {
    state.whenOrNull(
      failure: () {
        ScaffoldMessenger.of(context).showSnackBar(AppSnackBar.error());
      },
      success: (email) {
        context.router.replace(RecoverAccessInfoRoute(email: email));
      },
    );
  }

  void _onRecover(BuildContext context) {
    if (!_formKey.currentState!.validate()) return;
    context
        .read<RecoverBloc>()
        .add(RecoverEvent.submitted(_emailController.text.trim()));
  }
}