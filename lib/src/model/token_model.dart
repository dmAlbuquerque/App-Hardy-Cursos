class TokenModel {
  String email;
  String accessToken;
  String valid;

  TokenModel({this.email, this.accessToken, this.valid});

  TokenModel.fromJson(json) {
    email = json['email'];
    accessToken = json['accessToken'];
    valid = json['valid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['email'] = this.email;
    data['accesssToken'] = this.accessToken;
    data['valid'] = this.valid;
    return data;
  }
}
