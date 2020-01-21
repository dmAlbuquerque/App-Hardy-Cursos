import 'dart:convert';
import 'package:hardycursos/src/model/login_model.dart';
import 'package:hardycursos/src/utils/conexao.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class LoginApi{
  
  static Future<bool> login(String email, String password) async{
    bool b = false;

    var resBody = {};

    resBody['email'] = email.trim();
    resBody['password'] = password.trim();
    String str = json.encode(resBody);

    Map<String, String> head = {
      'Content-type':'application/json',
      'Accept': 'application/json',
    };

    try{
      var response = await http.post(Conexao.urlLogin, body: str, headers: head);

      if(response.statusCode == 200){
        
      }

    }catch(e){

    }
  }
}