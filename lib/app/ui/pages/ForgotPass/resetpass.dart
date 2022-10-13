import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meedu/meedu.dart';
import 'package:flutter_meedu/ui.dart';
import '../../../domain/response/resetpassrespons.dart';
import '../../../utils/emailvalidator.dart';
import '../../globalwidgets/dialogs/dialogs.dart';
import '../../globalwidgets/dialogs/progress.dart';
import '../../globalwidgets/inputfield.dart';
import 'Control/resetpasscontrol.dart';

final resetPaswordProvider = SimpleProvider(
  (_) => ResetPassControl(),
);

class ResetPass extends StatelessWidget {
  const ResetPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderListener<ResetPassControl>(
      provider: resetPaswordProvider,
      builder: (_, controller) => Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        appBar: AppBar(
          backgroundColor: const Color(0xFF388E3C),
          centerTitle: true,
          title: const Text('Prototipo Aplicación Movil y Web'),
        ),
        body: ListView(
          children: <Widget>[
            Center(
              child: Card(
                color: (const Color(0xFF388E3C)),
                margin: const EdgeInsets.only(
                    left: 20, right: 20, top: 50, bottom: 50),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Title(
                          color: Colors.black,
                          child: const Text(
                            "Ingrese su correo con el que se registró y le llegará un email donde podrá restablecer su contraseña",
                            style: TextStyle(fontSize: 25),
                            textAlign: TextAlign.center,
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      InputField(
                        label: "Correo insittucional",
                        inputType: TextInputType.emailAddress,
                        onChanged: controller.onEmailChanged,
                        child: null,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Column(
                children: [
                  CupertinoButton(
                    color: (Colors.black),
                    padding: const EdgeInsets.symmetric(horizontal: 108),
                    onPressed: () => _submit(context),
                    child: const Text(
                      "Enviar",
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  void _submit(BuildContext context) async {
    final controller = resetPaswordProvider.read;
    if (isValiEmail(controller.email)) {
      ProgressDialog.show(context);
      final response = await controller.submit();
      // ignore: use_build_context_synchronously
      Navigator.pop(context);
      if (response == ResetPassResponse.ok) {
        // ignore: use_build_context_synchronously
        Dialogs.alert(context, title: "Correcto", content: "Correo enviado");
      } else {
        String errorMessage = "";
        switch (response) {
          case ResetPassResponse.networkResquestFailed:
            errorMessage = "No se tiene conexion a internet";
            break;
          case ResetPassResponse.userDisabled:
            errorMessage = "Usuario deshabilitado";
            break;
          case ResetPassResponse.userNotFound:
            errorMessage = "Usuario no ecnontrado";
            break;
          case ResetPassResponse.tooManyRequests:
            errorMessage = "Demasiadas peticiones";
            break;
          case ResetPassResponse.unknown:
          default:
            errorMessage = "Error desconocido";

            break;
        }
        // ignore: use_build_context_synchronously
        Dialogs.alert(context, title: "Error", content: errorMessage);
      }
    } else {
      Dialogs.alert(context, content: "Correo invalido");
    }
  }
}
