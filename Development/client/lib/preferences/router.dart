import 'package:client/views/auth_views/login_page/login_page.dart';
import 'package:client/views/auth_views/mobile_verfication/mobile_verification.dart';
import 'package:client/views/auth_views/sign_up_page/sign_up_page.dart';
import 'package:fluro/fluro.dart';

class AppRouter {
  static final FluroRouter router = FluroRouter();

  static final String loginRoute = '/login';
  static final String signUpRoute = '/signUp';
  static final String mobileVerificationRoute = '/mobileVerification';

  static setUpRouter() {
    router.define(loginRoute,
        handler: Handler(handlerFunc: (_, __) => const LoginPage()));
    router.define(signUpRoute,
        handler: Handler(handlerFunc: (_, __) => const SignUpPage()));
    router.define(mobileVerificationRoute,
        handler: Handler(handlerFunc: (_, __) => const MobileVericationPage()));
  }
}
