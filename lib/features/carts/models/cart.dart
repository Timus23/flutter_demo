class Cart {
  String imageUrl;
  String title;
  String markedPrice;
  String sellingPrice;
  int percentOff;
  int quantity;

  Cart({
    required this.imageUrl,
    required this.markedPrice,
    required this.quantity,
    required this.sellingPrice,
    required this.title,
    required this.percentOff,
  });

  factory Cart.dummy() {
    return Cart(
      imageUrl:
          "https://www.corning.com/microsites/csm/gorillaglass/Samsung/CGG_Samsun_galaxys21_phantom.jpg",
      title: "Samsung S21+",
      markedPrice: "100000",
      sellingPrice: "90000",
      quantity: 1,
      percentOff: 10,
    );
  }
}
