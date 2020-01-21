import '../model/login_model.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

/*controller */
abstract class _LoginControllerBase with Store {
  var loginModel = LoginModel();

  @computed
  bool get isValid {
    return validateEmail() == null && validateSenha() == null;
  }

  String validateEmail() {
    if (loginModel.email == null || loginModel.email.isEmpty) {
      return '';
    } else if (!loginModel.email.contains('@gmail.com') &&
        !loginModel.email.contains('@hardylingerie.com') &&
        !loginModel.email.contains('@hardylingerie.com.br')) {
      return 'Informe um email válido!';
    }
    return null;
  }

  String validateSenha() {
    if (loginModel.password == null || loginModel.password.isEmpty) {
      return '';
    } else if (loginModel.password.length < 6) {
      return 'A senha precisa ter pelo menos 6 caracteres';
    }
    return null;
  }
}
