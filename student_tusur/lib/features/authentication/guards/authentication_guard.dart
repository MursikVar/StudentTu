import 'package:auto_route/auto_route.dart';
import 'package:marketplace/di/injector.dart';
import 'package:marketplace/features/authentication/repositories/authentication_repository.dart';
import 'package:marketplace/routing/router.dart';
import 'package:injectable/injectable.dart';

@singleton
class AuthenticationGuard extends AutoRouteGuard {
  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    final authenticationService = inject<AuthenticationRepository>();
    if (authenticationService.currentSession != null) {
      resolver.next();
    } else {
      await router.replace(LoginRoute());
    }
  }
}
