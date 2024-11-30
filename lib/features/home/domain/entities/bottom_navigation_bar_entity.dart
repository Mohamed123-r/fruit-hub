import 'package:fruit_hub/generated/l10n.dart';

import '../../../../generated/assets.dart';

class BottomNavigationBarEntity {
  final String name;

  final String activeImageItem;
  final String inActiveImageItem;

  BottomNavigationBarEntity({
    required this.name,
    required this.activeImageItem,
    required this.inActiveImageItem,
  });
}

List<BottomNavigationBarEntity> bottomNavigationBarItems = [
  BottomNavigationBarEntity(
    name: S.current.bottom_navigation_home,
    activeImageItem: Assets.imagesActiveHome,
    inActiveImageItem: Assets.imagesOutlineHome,
  ),
  BottomNavigationBarEntity(
    name: S.current.bottom_navigation_products,
    activeImageItem: Assets.imagesActiveProduct,
    inActiveImageItem: Assets.imagesOutlineProdect,
  ),
  BottomNavigationBarEntity(
    name: S.current.bottom_navigation_shopping_cart,
    activeImageItem: Assets.imagesActiveShopping,
    inActiveImageItem: Assets.imagesOutlineShopping,
  ),
  BottomNavigationBarEntity(
    name: S.current.bottom_navigation_user,
    activeImageItem: Assets.imagesActiveUser,
    inActiveImageItem: Assets.imagesOuitlineUser,
  ),
];
