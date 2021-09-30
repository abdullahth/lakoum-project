enum AppVideos { none }

extension AppVideosExt on AppVideos {
  String get videoAssetName {
    switch (this) {
      case AppVideos.none:
        return '';
    }
  }
}
