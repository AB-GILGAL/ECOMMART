import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({super.key, this.name, this.bgc, this.txtc, this.bdrc, this.nav});
  final String? name;
  Color? bgc;
  Color? txtc;
  Color? bdrc;
  Function()? nav;

  @override
  Widget build(BuildContext context) {
  return ElevatedButton(
    onPressed: nav,
    style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(bgc),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(color: bdrc!)))),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Text(
        name!,
        style: TextStyle(
          color: txtc,
          fontSize: 18,
        ),
      ),
    ),
  );

  }
}