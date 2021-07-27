class Starbucks {
  String name;
  String description;
  String imageAsset;
  String categories;
  List<String> price;

  Starbucks(
      {required this.name,
      required this.description,
      required this.imageAsset,
      required this.categories,
      required this.price});
}

var starbucksMenuList = [
  Starbucks(
      name: 'Caffè Americano',
      description:
          'Nice sip of Americano, Rich, full-bodied espresso with hot water.',
      imageAsset: 'imageAsset',
      categories: 'Espresso Beverages',
      price: ['48.000', '50000', '52000']),
  Starbucks(
      name: 'Caffè Latte',
      description:
          'Rich, full-bodied espresso in steamed milk, lightly topped with foam. A caffè latte is simply a shot or two of bold, tasty espresso with fresh, sweet steamed milk over it..',
      imageAsset: 'imageAsset',
      categories: 'Espresso Beverages',
      price: ['52.000', '54000', '56000']),
  Starbucks(
      name: 'Caffè Mocha',
      description:
          'Espresso with bittersweet mocha sauce and steamed milk, topped with sweetened whipped cream. Delightful.',
      imageAsset: 'imageAsset',
      categories: 'Espresso Beverages',
      price: ['52.000', '54000', '56000']),
  Starbucks(
      name: 'Cappuccino',
      description:
          'Espresso with steamed milk, topped with a deep layer of foam.',
      imageAsset: 'imageAsset',
      categories: 'Espresso Beverages',
      price: ['52.000', '53000', '55000']),
  Starbucks(
      name: 'Caramel Macchiato',
      description:
          'Espresso combined with vanilla-flavoured syrup, milk and caramel sauce over ice. A Starbucks classic, chilled for a classic summer’s day. To our signature espresso we add a creamy mix of vanilla syrup and cold milk poured over ice; it’s then topped with our proprietary buttery caramel sauce. Sweet! ',
      imageAsset: 'imageAsset',
      categories: 'Espresso Beverages',
      price: ['60.000', '62000', '65000']),
  Starbucks(
      name: 'Espresso Con Panna',
      description:
          'The delicate dollop of whipped cream softens the rich and caramelly espresso flavours so exquisitely, you may choose to forego adding sugar altogether.',
      imageAsset: 'imageAsset',
      categories: 'Espresso Beverages',
      price: ['40.000', '43000', '46000']),
  Starbucks(
      name: 'Espresso Macchiato',
      description:
          'Sometimes a touch is just enough. And so it is with the slight dab of foam we set atop our signature espresso in this classic European-style beverage.',
      imageAsset: 'imageAsset',
      categories: 'Espresso Beverages',
      price: ['42.000', '45000', '47000']),
  Starbucks(
      name: 'Flat White',
      description:
          'Expertly steamed milk poured over a double shot of our signature espresso and finished with a thin layer of velvety microfoam.',
      imageAsset: 'imageAsset',
      categories: 'Espresso Beverages',
      price: ['50.000', '53000', '55000']),
  Starbucks(
      name: 'Asian Dolce Latte',
      description:
          'Double-shots of the premium, dark-roasted Starbucks Espresso Roast, combine with the uniquely developed dolce sauce.',
      imageAsset: 'imageAsset',
      categories: 'Espresso Beverages',
      price: ['58.000', '60000', '62000']),
  Starbucks(
      name: 'Cocoa Cappuccino',
      description:
          'A cappuccino has good balance of steamed milk and espresso. Add in a little bittersweet mocha and the flavour becomes something else. Coffee always pairs well with chocolate. Another big part of the cappuccino’s charm is the dense and velvety foam. We dust some cocoa powder and lay chocolate drizzle on the thick foam and the transformation is complete',
      imageAsset: 'imageAsset',
      categories: 'Espresso Beverages',
      price: ['50.000', '53000', '55000']),
  Starbucks(
      name: 'Double Shot Iced Shaken Espresso',
      description:
          'Two fresh shots of espresso, hand shaken with classic syrup and ice, finished with low fat milk mixed with sweetened whipped cream.',
      imageAsset: 'imageAsset',
      categories: 'Espresso Beverages',
      price: ['50.000', '53000', '55000']),
  Starbucks(
      name: 'Freshly Brewed Coffee',
      description:
          'Enjoy our rich, flavorful brewed coffees any time of day. Brewed perfectly for those who enjoy their coffee black, check in with our baristas on our selected brew of the day.',
      imageAsset: 'imageAsset',
      categories: 'Brewed Coffee',
      price: ['20.000', '23000', '25000']),
  Starbucks(
      name: 'Cold Brew',
      description:
          'Slow-steeped, small-batch and super smooth. To create our signature recipe, our team spent months experimenting with different brew times and coffee varietals. We specifically developed the Starbucks® Cold Brew Blend to heighten the rich, naturally sweet flavor created during the cold brewing process.',
      imageAsset: 'imageAsset',
      categories: 'Brewed Coffee',
      price: ['40.000', '43000', '45000']),
  Starbucks(
      name: 'Vanilla Sweet Cream Cold Brew',
      description:
          'Just before serving, our slow-steeped Cold Brew is topped with a delicate float of house-made vanilla sweet cream that cascades throughout the cup.',
      imageAsset: 'imageAsset',
      categories: 'Brewed Coffee',
      price: ['53.000', '55000', '57000']),
  Starbucks(
      name: 'Caramel Frappuccino',
      description:
          'Buttery caramel syrup meets coffee, milk and ice for a rendezvous in the blender. Then whipped cream and caramel sauce layer the love on top.',
      imageAsset: 'imageAsset',
      categories: 'Blended Coffee',
      price: ['58.000', '62000', '65000']),
  Starbucks(
      name: 'Caramel Java Chip Frappuccino',
      description:
          'Java Chip Frappuccino® with a swirl of caramel sauce on top.',
      imageAsset: 'imageAsset',
      categories: 'Blended Coffee',
      price: ['58.000', '60000', '62000']),
  Starbucks(
      name: 'Java Chip Frappuccino',
      description:
          'We blend mocha sauce and Frappuccino® chips with coffee and milk and ice, then top with whipped cream and mocha drizzle to bring you endless java joy.',
      imageAsset: 'imageAsset',
      categories: 'Blended Coffee',
      price: ['55.000', '58000', '60000']),
  Starbucks(
      name: 'Mocha Frappuccino',
      description:
          "Mocha sauce, Frappuccino® roast coffee, milk and ice all come together for a mocha flavor that'll leave you wanting more.",
      imageAsset: 'imageAsset',
      categories: 'Blended Coffee',
      price: ['50.000', '53000', '55000']),
];
