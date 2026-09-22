import 'package:auto_route/auto_route.dart';
import 'package:boost_widgets/boost_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/di/injector.dart';
import 'package:marketplace/features/authentication/blocs/login_bloc.dart';
import 'package:marketplace/l10n/localizations.dart';
import 'package:marketplace/routing/router.dart';
import 'package:marketplace/theme/app_theme.dart';
import 'package:marketplace/widgets/email_input.dart';
import 'package:marketplace/widgets/logo.dart';
import 'package:marketplace/widgets/password_input.dart';

part 'widgets/login_form.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final overlayStyle = AppSystemUiOverlayStyle.light.copyWith(
      statusBarIconBrightness: Brightness.dark,
    );

    return BlocProvider<LoginBloc>(
      create: (context) => inject(),
      child: AnnotatedRegion(
        value: overlayStyle,
        child: Scaffold(
          body: SafeArea(
            child: Padding(
              padding: REdgeInsets.symmetric(horizontal: 16),
              child: const CustomScrollView(
                scrollBehavior: HideOverscrollScrollBehavior(),
                slivers: [
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: LoginForm(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
