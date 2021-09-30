enum AppFonts { quicksand, cairo }

extension AppFontsExt on AppFonts {
  String get fontFamilyName {
    switch (this) {
      case AppFonts.cairo:
        return 'Cairo';
      case AppFonts.quicksand:
        return 'Quicksand';
    }
  }
}
