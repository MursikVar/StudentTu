import 'package:auto_route/auto_route.dart';
import 'package:boost_widgets/boost_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/di/injector.dart';
import 'package:marketplace/features/authentication/blocs/new_password/new_password_bloc.dart';
import 'package:marketplace/l10n/localizations.dart';
import 'package:marketplace/routing/router.dart';
import 'package:marketplace/theme/app_theme.dart';
import 'package:marketplace/widgets/app_snackbar.dart';
import 'package:marketplace/widgets/password_input.dart';


@RoutePage()
class NewPasswordPage extends StatefulWidget {
  final String recoveryLink;

  const NewPasswordPage({super.key, required this.recoveryLink});

  @override
  State<NewPasswordPage> createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends State<NewPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewPasswordBloc>(
      create: (_) => inject(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.white100,
          foregroundColor: AppColors.black100,
          title: Text($.newPassword),
        ),
        body: SingleChildScrollView(
          padding: REdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: _buildContent(context),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    final children = <Widget>[
      PasswordInput(
        controller: _passwordController,
      ),
      4.verticalSpace,
      Text(
        $.passwordBeMustAtLeast,
        style: context.typography.caption + AppColors.black50,
      ),
      24.verticalSpace,
      BlocConsumer<NewPasswordBloc, NewPasswordState>(
        listener: _listener,
        builder: (context, state) {
          return Button(
            loading: state is NewPasswordLoading,
            onPressed: () => _onSave(context),
            child: Text($.saveAndQuit),
          );
        },
      ),
    ];

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: children,
      ),
    );
  }

  void _listener(BuildContext context, NewPasswordState state) {
    state.whenOrNull(
      success: () => context.router.replaceAll([const RootRoute()]),
      failure: () {
        ScaffoldMessenger.of(context).showSnackBar(AppSnackBar.error());
      },
    );
  }

  void _onSave(BuildContext context) {
    if (!_formKey.currentState!.validate()) return;
    context.read<NewPasswordBloc>().add(NewPasswordEvent.submitted(
        widget.recoveryLink, _passwordController.text));
  }
}
