import 'package:flutter/material.dart';

class FormItem extends StatefulWidget {
  const FormItem(this.name, this.controller, this.hintText,
      [this.suffixIcon, this.obscureText = false]);
  final String? name;

  final TextEditingController? controller;

  final String? hintText;

  final Widget? suffixIcon;
  final bool obscureText;

  @override
  State<FormItem> createState() => _FormItemState();
}

class _FormItemState extends State<FormItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black26, width: 1),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(22, 8, 0, 0),
            child: Text(
              widget.name!,
              style: const TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: TextFormField(
              controller: widget.controller,
              decoration: InputDecoration(
                  hintText: widget.hintText,
                  helperStyle: const TextStyle(color: Colors.black),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: widget.suffixIcon),
              obscureText: widget.obscureText,
            ),
          ),
        ],
      ),
    );
  }
}