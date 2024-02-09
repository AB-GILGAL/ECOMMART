import 'package:flutter/material.dart';

class CategoryCard extends StatefulWidget {
  const CategoryCard(
      {required Key key,
      required this.bgclr,
      required this.title,
      required this.img})
      : super(key: key);

  final Color? bgclr;
  final String? title;
  final String? img;

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: widget.bgclr, borderRadius: BorderRadius.circular(10)),
      height: MediaQuery.of(context).size.height * 0.19,
      width: MediaQuery.of(context).size.width * 0.35,
      child: Column(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
              child: Image.asset(widget.img!)),
          Text(
            widget.title!,
            style: const TextStyle(
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}