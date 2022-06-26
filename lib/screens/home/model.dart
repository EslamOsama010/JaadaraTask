class ServiceModel {
  int? id;
  String? title;
  String? description;
  String? image;
  String? category;
  int? price;

  ServiceModel(
      {this.id,
        this.title,
        this.description,
        this.image,
        this.category,
        this.price});

  ServiceModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    image = json['image'];
    category = json['category'];
    price = json['price'];
  }


}