enum AppIcons {
  facebookWhiteIcon,
  googleWhiteIcon,
  loginPasswordIcon,
  loginUsernameIcon,
  loginEmailIcon,
  loginMobileIcon,

  homePageMenuBarIcon,
  homePageNotificationIcon,
  homePageDeliveryIcon,
  homePageSearchIcon,

}

extension AppIconsExt on AppIcons {
  String get iconAssetName {
    switch (this) {
      case AppIcons.facebookWhiteIcon:
        return 'assets/icons/facebook-icon-white-circle.png';
      case AppIcons.googleWhiteIcon:
        return 'assets/icons/google-icon-white-circle.png';
      case AppIcons.loginPasswordIcon:
        return 'assets/icons/password-icon.png';
      case AppIcons.loginUsernameIcon:
        return 'assets/icons/username-auth-icon.png';
      case AppIcons.loginEmailIcon:
        return 'assets/icons/email-auth-icon.png';
      case AppIcons.loginMobileIcon:
        return 'assets/icons/mobile-auth-icon.png';

      case AppIcons.homePageMenuBarIcon:
        return 'assets/icons/menu-bar.png';
      case AppIcons.homePageNotificationIcon:
        return 'assets/icons/notification.png';
      case AppIcons.homePageDeliveryIcon:
        return 'assets/icons/delivery.png';
      case AppIcons.homePageSearchIcon:
        return 'assets/icons/search.png';
    }
  }
}
