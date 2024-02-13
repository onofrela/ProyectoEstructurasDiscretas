import 'package:flutter/material.dart';
import 'package:proyecto_ed/hokkori_ui/cancel_button.dart';
import 'package:proyecto_ed/hokkori_ui/confirm_button.dart';


class ActionButtons extends StatelessWidget {
  final VoidCallback confirmAction;
  final VoidCallback cancelAction;

  const ActionButtons({Key? key, required this.confirmAction, required this.cancelAction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children:[
        CancelButton(onPressed: cancelAction, text: 'Cancelar'),
        const SizedBox(width: 8,),
        ConfirmButton(onPressed: confirmAction, text: 'Crear'),
      ]
    );
  }
}
