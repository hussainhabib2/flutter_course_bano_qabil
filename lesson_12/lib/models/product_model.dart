class Product {
  String? name;
  String? desc;
  double? price;
  String? picture;

  Product({this.name, this.desc, this.price, this.picture});

  Product.fromBackend(Map<String, dynamic> map) {
    name = map['name'];
    desc = map['desc'];
    price = map['price'];
    picture = map['picture'];
  }

  Map<String, dynamic> toBackend() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['desc'] = this.desc;
    data['price'] = this.price;
    data['picture'] = this.picture;
    return data;
  }
}
