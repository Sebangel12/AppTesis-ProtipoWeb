// ignore_for_file: deprecated_member_use

import 'package:atel_redes_telecom_prot/app/ui/pages/login/utils/sendloginform.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meedu/meedu.dart';
import 'package:flutter_meedu/ui.dart';
import '../../../utils/emailvalidator.dart';
import '../../globalwidgets/inputfield.dart';
import '../../routes/routes.dart';
import 'control/logincontrol.dart';

final LoginProvider = SimpleProvider(
  (_) => LoginControl(),
);

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final _controler = LoginProvider.read;

  @override
  Widget build(BuildContext context) {
    return ProviderListener<LoginControl>(
      provider: LoginProvider,
      builder: (_, controller) {
        return Scaffold(
          backgroundColor: const Color(0xFFFFFFFF),
          appBar: AppBar(
            backgroundColor: const Color(0xFF388E3C),
            centerTitle: true,
            title: const Text('Prototipo Aplicación Movil y Web'),
          ),
          // ignore: deprecated_member_use
          body: ListView(
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 20, bottom: 0),
                  child: const Image(
                    image: AssetImage("assets/img/logo100ESpe.png"),
                    height: 175,
                    width: 100,
                  )),
              Center(
                child: GestureDetector(
                  onTap: () =>
                      FocusScope.of(context).unfocus(), //ocultar el teclado
                  child: Card(
                    color: (const Color(0xFF388E3C)),
                    margin: const EdgeInsets.only(
                        left: 20, right: 20, top: 20, bottom: 50),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 35, vertical: 20),
                      child: Form(
                        key: _controler.formKey,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            InputField(
                              onChanged: controller.onEmailChange,
                              inputType: TextInputType.emailAddress,
                              validator: (text) {
                                if (isValiEmail(text!)) {
                                  return null;
                                }
                                return "Correo invalido";
                              },
                              label: "Correo Institucional",
                              child: const Icon(Icons.mail),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            InputField(
                                onChanged: controller.onPassChange,
                                ispass: true,
                                validator: (text) {
                                  if (text!.trim().length >= 6) {
                                    return null;
                                  }
                                  return "Contraseña incorrecta";
                                },
                                label: "Contraseña",
                                child: const Icon(Icons.key)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // ignore: deprecated_member_use
              Center(
                // ignore: deprecated_member_use
                child: Column(
                  children: [
                    // ignore: deprecated_member_use
                    CupertinoButton(
                      color: (Colors.black),
                      padding: const EdgeInsets.symmetric(horizontal: 100),
                      onPressed: () => sendLoginForm(context),
                      child: const Text(
                        'INICIAR SESION',
                      ),
                    ),
                    const Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10)),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CupertinoButton(
                          color: (Color(0xFFEB1D36)),
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          onPressed: () => router.pushNamed(Routes.RESET_PASS),
                          child: const Text('OLVIDE MI CONTRASEÑA'),
                        ),
                        const SizedBox(
                          height: 20,
                          width: 10,
                        ),
                        // ignore: deprecated_member_use
                        CupertinoButton(
                          color: (Colors.black),
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          onPressed: () => router.pushNamed(
                            Routes.REGISTER,
                          ),
                          child: const Text('REGISTRARSE'),
                        ),
                        const SizedBox(
                          height: 20,
                          width: 10,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CupertinoButton(
                      color: (Colors.black),
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      onPressed: () => router.pushNamedAndRemoveUntil(
                        Routes.LOGINADMIN,
                      ),
                      child: const Text('DOCENTE'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
