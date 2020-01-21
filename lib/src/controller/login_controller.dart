import '../model/login_model.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

/*controller */
abstract class _LoginControllerBase with Store {
  var loginStore = LoginModel();

  @computed
  bool get isValid {
    return validateEmail() == null && validateSenha() == null;
  }

  String validateEmail() {
    if (loginStore.email == null || loginStore.email.isEmpty) {
      return '';
    } else if (!loginStore.email.contains('@gmail.com') &&
        !loginStore.email.contains('@hardylingerie.com') &&
        !loginStore.email.contains('@hardylingerie.com.br')) {
      return 'Informe um email válido!';
    }
    return null;
  }

  String validateSenha() {
    if (loginStore.password == null || loginStore.password.isEmpty) {
      return '';
    } else if (loginStore.password.length < 6) {
      return 'A senha precisa ter pelo menos 6 caracteres';
    }
    return null;
  }
}
