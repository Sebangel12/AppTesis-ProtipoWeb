import 'package:atel_redes_telecom_prot/app/ui/pages/Menu/LoginAdmin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meedu/ui.dart';
import '../../../../domain/repositories/authrepos.dart';
import '../../../globalwidgets/dialogs/dialogs.dart';
import '../../../globalwidgets/dialogs/progress.dart';
import '../../../routes/routes.dart';
import '../loginpage.dart';

Future<void> sendLoginForm(BuildContext context) async {
  final controller = LoginProvider.read;
  final isValidForm = controller.formKey.currentState!.validate();
  if (isValidForm) {
    ProgressDialog.show(context);
    final response = await controller.submmit();
    router.pop();
    if (response.error != null) {
      String errorMessage = "";
      switch (response.error) {
        case SingInError.networkResquestFailed:
          errorMessage = "No hay conexión a internet";
          break;
        case SingInError.userDisabled:
          errorMessage = "Usuario deshabilitado";
          break;
        case SingInError.userNotFound:
          errorMessage = "Usuario no encontrado";
          break;
        case SingInError.wrongPassword:
          errorMessage = "Contraseña incorrecta";
          break;
        case SingInError.unknown:
          errorMessage = "Unknown";
          break;
        default:
          errorMessage = "Unknown";
          break;
      }

      // ignore: use_build_context_synchronously
      Dialogs.alert(
        context,
        title: "ERROR",
        content: errorMessage,
      );
    } else {
      router.pushReplacementNamed(Routes.HOME);
    }
  }
}
