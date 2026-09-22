import 'package:auto_route/auto_route.dart';
import 'package:boost_widgets/boost_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketplace/di/injector.dart';
import 'package:marketplace/features/authentication/blocs/email_totp/email_totp_bloc.dart';
import 'package:marketplace/routing/router.dart';
import 'package:marketplace/theme/app_theme.dart';

@RoutePage()
class EmailTotpPage extends StatefulWidget {
  final String email;
  final String password;
  const EmailTotpPage({super.key, required this.email, required this.password});

  @override
  State<EmailTotpPage> createState() => _EmailTotpPageState();
}

class _EmailTotpPageState extends State<EmailTotpPage> {
  final _codeController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => inject<EmailTotpBloc>(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.white100,
          foregroundColor: AppColors.black100,
          title: const Text('Код подтверждения'),
        ),
        body: BlocConsumer<EmailTotpBloc, EmailTotpState>(
          listener: (context, state) {
            state.whenOrNull(
              success: () {
                context.replaceRoute(const RootRoute());
              },
              failure: (error) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(error)),
                );
              },
            );
          },
          builder: (context, state) {
            // ✅ Отправляем код только один раз при состоянии `initial`
            final isInitial = state.maybeWhen(
              initial: () => true,
              orElse: () => false,
            );
            if (isInitial) {
              context.read<EmailTotpBloc>().add(
                    EmailTotpEvent.sendCode(widget.email, widget.password),
                  );
            }

            final isLoading = state.maybeWhen(
              loading: () => true,
              orElse: () => false,
            );
            final isCodeSent = state.maybeWhen(
              codeSent: () => true,
              orElse: () => false,
            );

            return Padding(
              padding: REdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Введите 6-значный код, отправленный на ${widget.email}',
                      style: context.typography.body,
                    ),
                    32.verticalSpace,
                    TextFormField(
                      controller: _codeController,
                      decoration: const InputDecoration(
                        labelText: 'Код из письма',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.length != 6) {
                          return 'Код должен состоять из 6 цифр';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.number,
                    ),
                    24.verticalSpace,
                    IgnorePointer(
                      ignoring: !isCodeSent || isLoading,
                      child: Button(
                        loading: isLoading,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            context.read<EmailTotpBloc>().add(
                                  EmailTotpEvent.verifyCode(
                                    widget.email,
                                    widget.password,
                                    _codeController.text,
                                  ),
                                );
                          }
                        },
                        child: const Text('Подтвердить'),
                      ),
                    ),
                    16.verticalSpace,
                    TextButton(
                      onPressed: () {
                        context.read<EmailTotpBloc>().add(
                              EmailTotpEvent.sendCode(
                                  widget.email, widget.password),
                            );
                      },
                      child: const Text('Отправить код повторно'),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}