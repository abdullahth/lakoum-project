enum AppImages {
  loginBgImage,
  logoDefaultGreenColor,
  logoWhiteColor,
  logoTypo,

  // Home Page Images
  homePageBannerOne,

  // Home Page Categories Images
  homePageBooksCategory,
  homrPageCoffeeEquipmentCategory, 
  homePageCosmaticsCategory,
  homePageDecorationCategory,
  homePageElctronicsCategory,
  homePageExerciseCategory,
  homePageFashionCategory,
  homePageFragranceCategory,
  homePageHealthAndCareCategory,
  homePagePetCategory,
  homePageToysCategory,
  homePageTravelCategory,

  // Fasion Category Page's Categories
  fasionPageBoys,
  fashionPageGirls,
  fasionPageMen,
  fasionPageSale, 
  fasionPageTrends, 
  fasionPageWomen,
}

extension AppImagesExt on AppImages {
  String get assetName {
    switch (this) {
      case AppImages.loginBgImage:
        return 'assets/images/login-page-background-image.png';
      case AppImages.logoDefaultGreenColor:
        return 'assets/images/logo-defaukt.png';
      case AppImages.logoWhiteColor:
        return 'assets/images/logo-white.png';
      case AppImages.logoTypo:
        return 'assets/images/logo-typo.png';

      case AppImages.homePageBannerOne:
        return 'assets/images/home-page-banner-one.png';

      case AppImages.homePageBooksCategory:
        return 'assets/images/home-page-books-category.png';
      case AppImages.homrPageCoffeeEquipmentCategory:
        return 'assets/images/home-page-coffee-equipment-category.png';
      case AppImages.homePageCosmaticsCategory:
        return 'assets/images/home-page-cosmatics-category.png';
      case AppImages.homePageDecorationCategory:
        return 'assets/images/home-page-decoration-category.png';
      case AppImages.homePageElctronicsCategory:
        return 'assets/images/home-page-elctronics-category.png';
      case AppImages.homePageExerciseCategory:
        return 'assets/images/home-page-exercise-category.png';
      case AppImages.homePageFashionCategory:
        return 'assets/images/home-page-fasion-category.png';
      case AppImages.homePageFragranceCategory:
        return 'assets/images/home-page-fragrance-category.png';
      case AppImages.homePageHealthAndCareCategory:
        return 'assets/images/home-page-health-and-care-category.png';
      case AppImages.homePagePetCategory:
        return 'assets/images/home-page-pet-category.png';
      case AppImages.homePageToysCategory:
        return 'assets/images/home-page-toys-category.png';
      case AppImages.homePageTravelCategory:
        return 'assets/images/home-page-travel-category.png';

      case AppImages.fasionPageBoys:
        return 'assets/images/fasion-page-boys.png';
      case AppImages.fashionPageGirls:
        return 'assets/images/fasion-page-girls.png';
      case AppImages.fasionPageMen:
        return 'assets/images/fasion-page-men.png';
      case AppImages.fasionPageSale:
        return 'assets/images/fasion-page-sale.png';
      case AppImages.fasionPageTrends:
        return 'assets/images/fasion-page-trends.png';
      case AppImages.fasionPageWomen:
        return 'assets/images/fasion-page-women.png';
    }
  }
}
