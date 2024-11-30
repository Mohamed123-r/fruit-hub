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
    name: "Home",
    activeImageItem: Assets.imagesActiveHome,
    inActiveImageItem: Assets.imagesOutlineHome,
  ),
  BottomNavigationBarEntity(
    name: "Cart",
    activeImageItem: Assets.imagesActiveShopping,
    inActiveImageItem: Assets.imagesOutlineShopping,
  ),
  BottomNavigationBarEntity(
    name: "Profile",
    activeImageItem: Assets.imagesActiveProduct,
    inActiveImageItem: Assets.imagesOutlineProdect,
  ),
  BottomNavigationBarEntity(
    name: "حسابي",
    activeImageItem: Assets.imagesActiveUser,
    inActiveImageItem: Assets.imagesOuitlineUser,
  ),
];
