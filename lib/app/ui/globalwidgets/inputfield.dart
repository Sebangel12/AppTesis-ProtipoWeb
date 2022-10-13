import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final void Function(String)? onChanged;
  final String label;
  final TextInputType? inputType;
  final bool ispass;
  final String? Function(String?)? validator;

  // ignore: prefer_const_constructors_in_immutables
  InputField(
      {Key? key,
      required this.onChanged,
      required this.label,
      this.inputType,
      this.ispass = false,
      this.validator,
      required child})
      : super(key: key);

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.ispass;
  }

  @override
  Widget build(BuildContext context) {
    return FormField<String>(
      validator: widget.validator,
      initialValue: '',
      autovalidateMode: AutovalidateMode.onUserInteraction,
      builder: (state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
                obscureText: _obscureText,
                keyboardType: widget.inputType,
                onChanged: (text) {
                  if (widget.validator != null) {
                    // ignore: invalid_use_of_protected_member
                    state.setValue(text); //mostrar el sms de error
                    state.validate();
                  }
                  if (widget.onChanged != null) {
                    widget.onChanged!(text);
                  }
                },
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    labelText: widget.label,
                    border: const OutlineInputBorder(),
                    suffixIcon: widget.ispass
                        ? CupertinoButton(
                            child: Icon(
                              _obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              _obscureText = !_obscureText;
                              setState(() {});
                            },
                          )
                        : Container(
                            width: 0,
                          ))),
            if (state.hasError)
              Text(
                state.errorText!,
                style: const TextStyle(color: Colors.black),
              )
          ],
        );
      },
    );
  }
}
