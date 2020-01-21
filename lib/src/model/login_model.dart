import 'package:mobx/mobx.dart';

part 'login_model.g.dart';

class LoginModel = _LoginModel with _$LoginModel;

abstract class _LoginModel with Store {
  @observable
  String email;
  @observable
  String password;

  @action
  setEmail(String v) => this.email = v;

  @action
  setPassword(String v) => this.password = v;

  /*Rodar build runner no Terminal quando modificar a classe */
  //flutter pub run build_runner build
}
