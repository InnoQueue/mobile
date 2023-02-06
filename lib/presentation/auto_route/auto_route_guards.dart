import 'package:auto_route/auto_route.dart';
import 'package:innoq/presentation/presentation.dart';
import '../../application/application.dart';
import '../../domain/domain.dart';

class LoginGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    try {
      var user = getIt.get<UserRepository>().getUser();

      if (user != null) {
        resolver.next(true);
      } else {
        router.replaceAll([const LoginRoute()]);
      }
    } catch (e) {
      router.replaceAll([const LoginRoute()]);
    }
  }
}
