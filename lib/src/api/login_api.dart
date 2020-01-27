import 'dart:convert';
import 'package:hardycursos/src/model/login_model.dart';
import 'package:hardycursos/src/model/token_model.dart';
import 'package:hardycursos/src/utils/conexao.dart';
import 'package:hardycursos/src/utils/infos.dart';
import 'package:hardycursos/src/utils/nav_page.dart';
import 'package:hardycursos/src/utils/rotas.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class LoginApi {
  static Future<String> login(
      BuildContext context, String email, String password) async {
    String b = '';

    var resBody = {};

    resBody['email'] = email.trim();
    resBody['password'] = password.trim();
    String data = json.encode(resBody);

    Map<String, String> head = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
    };

    try {
      var response =
          await http.post(Conexao.urlLogin, body: data, headers: head);

      if (response.statusCode == 200) {
        var tkm = TokenModel.fromJson(json.decode(response.body));
        Infos.email = tkm.email;
        Infos.accessToken = tkm.accessToken;
        Infos.expirationUTC = tkm.validTo;
        b = 'ok';
      } else {
        b = 'falha';
        nextRouteReplacement(context, Rotas.loginEmail);
      }
    } catch (e) {
      b = 'sem conexão';
    }

    return b;
  }
}
