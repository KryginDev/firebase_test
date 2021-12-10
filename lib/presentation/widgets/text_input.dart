import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final Widget child;

  const TextInput({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 20,
      ),
      child: child,
    );
  }
}
