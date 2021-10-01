import 'package:client/preferences/enums/images.dart';

class Product {
  /// Using map with title despite of String to translate the it;
  /// the keys is the languages codes;
  /// value of each key is the translation of the title;
  Map? title;

  double? price;

  /// `[points] is the points earned for each order`
  double? points;

  /// `[affiliateCommission] is the bonus that marketeers get when someone buy the product through link`
  double? affiliateCommission;

  /// `[cardImage] is the image that appears when the product appeares in the products list`
  // TODO: Change it from locally asseted image to url for network image
  // Uri cardImage;
  AppImages? cardImage;

  /// `[id] Product Id`
  int? id;

  Product({
    required this.title,
    required this.price,
    required this.id,
    required this.cardImage,

    // Nullable Fields
    this.affiliateCommission,
    this.points,
  }) {
    // Assert that the title map has the value for the fallback locale
    assert(title!.containsKey('en'));
  }

  // Create Instance from JSON Map
  Product.fromJson({required Map jsonMap}) {
    title = jsonMap['title'];
    price = jsonMap['price'];
    affiliateCommission = jsonMap['affiliateCommission'];
    points = jsonMap['points'];
    id = jsonMap['id'];
    cardImage = jsonMap['cardImage'];
  }

  // Get JSON Map from instance
  Map get jsonMap => {
        'title': title,
        'price': price,
        'affiliateCommission': affiliateCommission,
        'points': points,
        'id': id,
        'cardImage': cardImage,
      };
}
