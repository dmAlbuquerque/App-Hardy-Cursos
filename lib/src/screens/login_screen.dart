import 'package:flutter/material.dart';
import 'package:hardycursos/src/utils/rotas.dart';
import 'package:toast/toast.dart';
import '../controller/login_controller.dart';
import '../widgets/textfield.dart';
import '../widgets/button.dart';
import '../utils/nav_page.dart';

class LoginComEmail extends StatelessWidget {
  Widget build(BuildContext context) {
    var controller = LoginController();

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
              colors: [const Color(0xFF8D2755), const Color(0xFFE84E55)],
              begin: FractionalOffset.topRight,
              end: FractionalOffset.bottomLeft,
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
        ),
        child: Container(
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 70.0),
                Text(
                  'Bem vindo(a) de volta!',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 26.0),
                ),
                SizedBox(height: 4.0),
                Container(
                  margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                  child: Text(
                    'Informe seus dados para entrar em sua conta.',
                    style: TextStyle(color: Colors.white),
                    overflow: TextOverflow.clip,
                    softWrap: true,
                  ),
                ),
                TextBox(
                  titulo: 'E-mail',
                  dica: 'exemplo@email.com',
                  keyboard: TextInputType.emailAddress,
                  onChanged: controller.loginStore.setEmail,
                  errorText: controller.validateEmail,
                ),
                TextBox(
                  titulo: 'Senha',
                  dica: 's&nH@',
                  isPassword: true,
                  onChanged: controller.loginStore.setPassword,
                  errorText: controller.validateSenha,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 23.0, 16.0, 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: BtnButton(
                          titulo: 'Cancelar',
                          onPressed: () {
                            nextRouteReplacement(context, Rotas.loginScreen);
                          },
                          largura: double.infinity,
                        ),
                      ),
                      SizedBox(width: 16.0),
                      Expanded(
                        child: BtnButton(
                            titulo: 'Entrar',
                            onPressed: () {
                              if (controller.isValid) {
                                nextRouteReplacement(context, Rotas.homeScreen);
                              } else {
                                Toast.show(
                                    'Preencha todos os campos para logar!',
                                    context,
                                    duration: Toast.LENGTH_LONG,
                                    gravity: Toast.BOTTOM);
                              }
                            },
                            largura: double.infinity),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  //TODO: fazer o app voltar para a tela anterior ao clicar no botão de voltar do cel
  //onBackPressed
}
