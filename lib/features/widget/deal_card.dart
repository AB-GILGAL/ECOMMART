import 'package:flutter/material.dart';

class DealsCard extends StatefulWidget {
  DealsCard(
      {required Key key,
      required this.bgclr3,
      required this.name,
      required this.star,
      required this.rate,
      required this.like1,
      required this.oldPrice,
      // required this.newPrice,
      required this.discount,
      required this.img})
      : super(key: key);

  final Color? bgclr3;
  final String? name;
  final Icon? star;
  final double rate;
  final IconButton? like1;
  double oldPrice;
  int discount;
  // final double newPrice;
  final String? img;

  double newPrice(double _oldPrice, int _discount) {
    oldPrice = _oldPrice;
    discount = _discount;
    double price = oldPrice - ((discount / 100) * oldPrice);
    return price;
  }

  @override
  State<DealsCard> createState() => _DealsCardState();
}

class _DealsCardState extends State<DealsCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                    color: widget.bgclr3,
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset(widget.img!),
              ),
              widget.like1!
            ],
          ),
          SizedBox(
                height: MediaQuery.of(context).size.height * 0.005,
              ),
          Text(
            widget.name!,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(
                height: MediaQuery.of(context).size.height * 0.005,
              ),
          Row(
            children: [
              widget.star!,
              Text(
                widget.rate.toString(),
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          SizedBox(
                height: MediaQuery.of(context).size.height * 0.005,
              ),
          Row(
            children: [
              Text("\$ ${widget.oldPrice.toString()}",
              style: TextStyle(fontSize: 15, color: Colors.grey.shade700, decoration: TextDecoration.lineThrough), ),
               SizedBox(
                width: MediaQuery.of(context).size.width * 0.04,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.02,
                width: MediaQuery.of(context).size.width * 0.1,
                decoration: BoxDecoration(
                    color: Colors.yellow.shade200,
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  "-${widget.discount.toString()}%",
                  style:  TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
                height: MediaQuery.of(context).size.height * 0.005,
              ),
          Text("\$ ${widget.newPrice(widget.oldPrice, widget.discount).toString()}",
              style: TextStyle(fontSize: 15, color: Colors.grey.shade700),),
        ],
      ),
    );
  }
}