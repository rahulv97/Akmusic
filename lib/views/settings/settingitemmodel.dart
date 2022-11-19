class SettingItemModel {
  String? image;
  String? name;

  SettingItemModel({
    this.image,
    this.name,
  });
}

class SettingItem {
  List<SettingItemModel> items = [
    SettingItemModel(
      image: "assets/youtube.png",
      name: "Display",
    ),
    SettingItemModel(
      image: "assets/volume.png",
      name: "Audio",
    ),
    SettingItemModel(
      image: "assets/headphones.png",
      name: "Headset",
    ),
    SettingItemModel(
      image: "assets/lock.png",
      name: "Lock",
    ),
    SettingItemModel(
      image: "assets/advance.png",
      name: "Advance",
    ),
    SettingItemModel(
      image: "assets/settings.png",
      name: "Others",
    ),
  ];
}
