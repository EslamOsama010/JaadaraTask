class UserModel {
  UserData? user;
  String? token;

  UserModel({required this.user, required this.token});

  UserModel.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? UserData.fromJson(json['user']) : null;
    token = json['token'];
  }
}

class UserData {
  int? id;
  String? name;
  String? phone;
  String? email;
  String? image;
  bool? isNotifiy;

  UserData(
      {this.id, this.name, this.phone, this.email, this.image, this.isNotifiy});

  UserData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    phone = json['phone'];
    email = json['email'];
    image = json['image'];
    isNotifiy = json['is_notifiy'];
  }


}
