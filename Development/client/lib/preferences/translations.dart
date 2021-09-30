import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en': {
          'email': "Email Address",
          'password': "Password",
          'username': "Username",
          'mobile': "Mobile",
          'welcome': "Welcome",
          'forget_password': "Forget Password?",
          'keep_log_in': "Keep me logged in",
          'or': "Or",
          'sign_up_with': "Sign Up with",
          'login': "Login",
          'dont_have_account': "Don't have an account?",
          'sign_up': "Sign Up",
          'reset_your_password': "Reset your password",
          'reset_password': "Reset password",
          'reset_password_msg':
              "Enter your email below and we'll send you an email with instructions on how to create new password.",
          'continue': "Continue",
          'verification': "Verification",
          'mobile_verification_msg':
              "A 4 - Digit PIN has been sent to your phone number, please, provide it below!",
        },
      };
}
