import 'package:flutter/material.dart';

class TokenModel {
  String email;
  String accessToken;
  DateTime validTo;

  TokenModel({this.email, this.accessToken, this.validTo});

  TokenModel.fromJson(json) {
    email = json['email'];
    accessToken = json['accessToken'];
    validTo = json['validTo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['email'] = this.email;
    data['accesssToken'] = this.accessToken;
    data['validTo'] = this.validTo;
    return data;
  }
}
