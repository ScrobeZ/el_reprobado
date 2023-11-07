import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  final ValueChanged<String> onValue;
  const MessageFieldBox({super.key, required this.onValue});

  @override
  Widget build(BuildContext context) {
    final focusNode = FocusNode();
    final textControl = TextEditingController();
    final outLineInputBorder = inputBorderCustom();
    final inputDecoration =
        inputDecoradorCustom(outLineInputBorder, textControl, context);

    void fieldSubmitCustom(textValue) {
      // valor al dar submit
      onValue(textValue);
      textControl.clear();
      focusNode.requestFocus();
    }

    return TextFormField(
      onTapOutside: (event) => focusNode.unfocus(),
      focusNode: focusNode,
      controller: textControl,
      decoration: inputDecoration,
      onFieldSubmitted: fieldSubmitCustom,
    );
  }

  UnderlineInputBorder inputBorderCustom() {
    return UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40),
    );
  }

  InputDecoration inputDecoradorCustom(UnderlineInputBorder outLineInputBorder,
      TextEditingController textControl, BuildContext context) {
    return InputDecoration(
      hintText: 'Termina tu mensaje con un "?"',
      enabledBorder: outLineInputBorder,
      focusedBorder: outLineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        icon: const Icon(Icons.send),
        color: Theme.of(context).primaryColor,
        onPressed: () {
          //valor de la caja de texto
          final textValue = textControl.value.text;
          onValue(textValue);
          textControl.clear();
        },
      ),
    );
  }
}
