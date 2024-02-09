import 'package:flutter/material.dart';

class JustForYouCard extends StatefulWidget {
  const JustForYouCard(
      {required Key key,
      required this.bgclr2,
      required this.name,
      required this.like,
      required this.brand,
      required this.price,
      required this.img})
      : super(key: key);

  final Color? bgclr2;
  final String? name;
  final IconButton? like;
  final String? brand;
  final double? price;
  final String? img;

  @override
  State<JustForYouCard> createState() => _JustForYouCardState();
}

class _JustForYouCardState extends State<JustForYouCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.31,
      width: MediaQuery.of(context).size.width * 0.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.20,
                width: MediaQuery.of(context).size.width * 0.6,
                decoration: BoxDecoration(
                    color: widget.bgclr2,
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset(widget.img!),
              ),
              widget.like!
            ],
          ),
          SizedBox(
                height: MediaQuery.of(context).size.height * 0.005,
              ),
          Text(
            widget.name!,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          SizedBox(
                height: MediaQuery.of(context).size.height * 0.005,
              ),
          Text(
            widget.brand!,
            style: TextStyle(color: Colors.grey.shade600),
          ),
          SizedBox(
                height: MediaQuery.of(context).size.height * 0.005,
              ),
          Text(
            "\$ ${widget.price.toString()}",
            style: TextStyle(fontSize: 18, color: Colors.grey.shade600),
          )
        ],
      ),
    );
  }
}