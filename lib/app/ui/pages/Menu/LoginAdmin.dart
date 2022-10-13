import 'package:animate_do/animate_do.dart';
import 'package:atel_redes_telecom_prot/app/ui/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meedu/ui.dart';

class LoginAdmin extends StatefulWidget {
  const LoginAdmin({Key? key}) : super(key: key);
  //final _controler = 'adminatel@espe.edu.ec';
  //final _controler = LoginProvider.read;

  @override
  _LoginAdminState createState() => _LoginAdminState();
}

class _LoginAdminState extends State<LoginAdmin> {
  bool _showpass = false;

  @override
  Widget build(BuildContext context) {
    String mailAPP = 'doc.app@espe.edu.ec';
    String mailcodBD = 'doc.bd@espe.edu.ec';
    String mailcodFP = 'doc.fp@espe.edu.ec';
    String mailcodPV = 'doc.pv@espe.edu.ec';
    String mail = '';
    String passBD = '7845';
    String passAM = '1245';
    String passPV = '8956';
    String passFP = '5623';
    String pass = '';

    final _txtcontrol = TextEditingController();
    final _passcontrol = TextEditingController();

    return Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        appBar: AppBar(
          backgroundColor: const Color(0xFF388E3C),
          centerTitle: true,
          title: const Text('Prototipo Aplicación Movil y Web'),
        ),
        body: Center(
          child: ListView(
            children: <Widget>[
              Center(
                child: ElasticInLeft(
                  duration: const Duration(seconds: 2),
                  child: Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 20, bottom: 0),
                          child: const Image(
                            image: AssetImage("assets/img/logo100ESpe.png"),
                            height: 175,
                            width: 350,
                          )),
                      Center(
                        child: Card(
                          color: (const Color(0xFF388E3C)),
                          margin: const EdgeInsets.only(
                              left: 20, right: 20, top: 20, bottom: 50),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 35, vertical: 20),
                            child: Column(
                              children: [
                                TextField(
                                  controller: _txtcontrol,
                                  decoration: const InputDecoration(
                                    hintText: 'Usuario',
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black)),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                TextFormField(
                                  obscureText:
                                      _showpass == false ? true : false,
                                  controller: _passcontrol,
                                  decoration: InputDecoration(
                                      enabledBorder: const OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black)),
                                      hintText: 'Contraseña',
                                      suffixIcon: GestureDetector(
                                        child: Icon(_showpass == false
                                            ? Icons.visibility_off
                                            : Icons.visibility),
                                        onTap: () {
                                          setState(() {
                                            _showpass = !_showpass;
                                          });
                                        },
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      CupertinoButton(
                          color: (Colors.black),
                          child: const Text('Ingresar'),
                          onPressed: () {
                            mail = _txtcontrol.text;
                            pass = _passcontrol.text;
                            if (mail == mailAPP && pass == passAM) {
                              _txtcontrol.clear();
                              _passcontrol.clear();

                              router.pushNamedAndRemoveUntil(
                                  Routes.CONTRON_ACT_PROGAPP);
                            } else if (mail == mailcodBD && pass == passBD) {
                              _txtcontrol.clear();
                              _passcontrol.clear();
                              router.pushNamedAndRemoveUntil(
                                  Routes.CONTRON_ACT_DATABASE);
                            } else if (mail == mailcodFP && pass == passFP) {
                              _txtcontrol.clear();
                              _passcontrol.clear();
                              router.pushNamedAndRemoveUntil(
                                  Routes.CONTRON_ACT_FUNPROG);
                            } else if (mail == mailcodPV && pass == passPV) {
                              _txtcontrol.clear();
                              _passcontrol.clear();
                              router.pushNamedAndRemoveUntil(
                                  Routes.CONTRON_ACT_PROGVIS);
                            } else {
                              showDialog(
                                  context: context,
                                  builder: ((_) => const AlertDialog(
                                      title: Text(
                                          'Correo o contraseña incorrecto'))));
                            }
                          })
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: const Color(0xFFEB1D36),
            child: const Icon(Icons.keyboard_return),
            onPressed: () => router.pushNamedAndRemoveUntil(Routes.LOGIN)));
  }
}
