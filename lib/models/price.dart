class PriceModel {
  final String name;
  final String imagePath;
  final String? p1;
  final String? p2;
  final String? p3;
  final String? p4;
  final String? p5;
  final String? p6;
  final String? p7;
  final String? p8;
  final String? p9;
  final String? p10;
  final String? p11;
  final String? p12;
  PriceModel(
      {required this.name,
      required this.imagePath,
      this.p1,
      this.p2,
      this.p3,
      this.p4,
      this.p5,
      this.p6,
      this.p7,
      this.p8,
      this.p9,
      this.p10,
      this.p11,
      this.p12});
}

List<PriceModel> priceData = [
  PriceModel(
    name: "Wears",
    imagePath: "assets/images/Rectangle 14.png",
    p1: "T-shirt on hanger  #2,500",
    p2: "2-piece suit  #3,500",
    p3: "Short  #2,000",
    p4: "Dress  #2,500",
    p5: "Jeans  #2,500",
    p6: "Native wear  #2,500",
    p7: "T-shirt folded  #3,000",
    p8: "3-piece suit  #4,000",
    p9: "Pyjamas  #2,500",
    p10: "Single top  #3,000",
    p11: "Complete agbada  #3,000",
    p12: "Lace wears  #3,000",
  ),
  PriceModel(
    name: "Home & Bedding",
    imagePath: "assets/images/Rectangle 16.1.png",
    p1: "Bath towels  #2,500",
    p2: "Blankets  #3,500",
    p3: "Carpet/rug  #2,000",
    p4: "Mattress protector  #2,500",
    p7: "Duvet  #3,000",
    p8: "Bed spread  #4,000",
    p9: "Curtains  #2,500",
    p10: "Pillow covers  #3,000",
  ),
  PriceModel(
    name: "Commercial ",
    imagePath: "assets/images/Rectangle 22.png",
    p1: "Coveralls  #2,500",
    p2: "2-piece suit  #3,500",
    p3: "Short  #2,000",
    p7: "Hotel Bedshits  #3,000",
    p8: "3-piece suit  #4,000",
    p9: "Pyjamas  #2,500",
  ),
];
