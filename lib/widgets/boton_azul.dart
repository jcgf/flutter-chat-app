import 'package:flutter/material.dart';
class BotonAzul extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const BotonAzul({Key? key, required this.text, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.blue,
        shape: StadiumBorder(),
        elevation: 2,
        onPrimary: Colors.white,
      ),
      onPressed: this.onPressed,
      child: Container(
        width: double.infinity,
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }
}
