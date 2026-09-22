part of '../login_page.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        state.whenOrNull(
          codeSent: (email, password) => _navigateToTotp(email, password),
        );
      },
      builder: (_, state) {
        return IgnorePointer(
          ignoring: state.isAuthenticating,
          child: _buildForm(state),
        );
      },
    );
  }

  Widget _buildForm(LoginState state) {
    final children = [
      const TusurLogo(
        color: AppColors.violet100,
      ),
      32.verticalSpace,
      Text(
        $.studentsAccount,
        textAlign: TextAlign.center,
        style: context.typography.h4,
      ),
      64.verticalSpace,
      state.maybeWhen(
        fail: (message) {
          return Padding(
            padding: REdgeInsets.only(bottom: 24),
            child: Text(
              message,
              textAlign: TextAlign.center,
              style: context.typography.caption + AppColors.error,
            ),
          );
        },
        orElse: () => const SizedBox(),
      ),
      EmailInput(
        controller: _emailController,
        required: true,
      ),
      24.verticalSpace,
      PasswordInput(
        controller: _passwordController,
      ),
      16.verticalSpace,
      Align(
        alignment: Alignment.centerLeft,
        child: Button(
          theme: context.theme.buttonLink,
          onPressed: () => context.pushRoute(const RecoverPasswordRoute()),
          child: Text($.forgotPassword),
        ),
      ),
      28.verticalSpace,
      Button(
        loading: state.isAuthenticating,
        theme: context.theme.buttonPrimaryLarge,
        onPressed: _onSignIn,
        child: Text($.signIn),
      ),
    ];

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: children,
      ),
    );
  }

  void _onSignIn() {
    if (_formKey.currentState!.validate()) {
      final email = _emailController.text.trim();
      final password = _passwordController.text;
      context
          .read<LoginBloc>()
          .add(LoginEvent.submitted(email: email, password: password));
    }
  }

  void _onSuccess() {
    context.replaceRoute(const RootRoute());
  }

  void _navigateToTotp(String email, String password) {
  context.router.push(EmailTotpRoute(email: email, password: password));
}
}
