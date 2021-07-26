class Starbucks {
  String name;
  String description;
  String imageAsset;
  String imageUrls;
  List<String> price;

  Starbucks(
      {required this.name,
      required this.description,
      required this.imageAsset,
      required this.imageUrls,
      required this.price});
}

var starbucksMenuList = [
  Starbucks(
      name: 'Americano',
      description: 'Nice sip of Americano',
      imageAsset: 'imageAsset',
      imageUrls: 'imageUrls',
      price: ['54.000', '56000', '58000'])
];
