import 'package:ecom_mart/features/widget/category_card.dart';
import 'package:ecom_mart/features/widget/deal_card.dart';
import 'package:ecom_mart/features/widget/just4u_card.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  bool like = false;
  bool like1 = false;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Hello Abraham!",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      const Text("We have some options for you to consider")
                    ],
                  ),
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assets/images/Profile.jpeg"),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search_sharp),
                      hintText: "Search",
                      suffixIcon: const Icon(Icons.account_tree_sharp),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide())),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              CategoryCard(
                key: (UniqueKey()),
                bgclr: Colors.teal,
                title: "Shoe",
                img: "assets/images/reebok.png",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Just for you",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              JustForYouCard(
                key: UniqueKey(),
                bgclr2: Colors.blueGrey.shade600,
                name: "Nike Air",
                like: IconButton(
                  onPressed: () {
                    setState(() {
                      like = !like;
                    });
                  },
                  icon: Icon(
                    like ? Icons.favorite : Icons.favorite_border_outlined,
                    color: Colors.red.shade900,
                  ),
                ),
                brand: "Nike",
                price: 96200,
                img: "assets/images/reebok.png",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Deals",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              DealsCard(
                key: UniqueKey(),
                bgclr3: Colors.red.shade200,
                name: "Brown Leather Shoe",
                star: const Icon(Icons.star,size: 15, color: Colors.yellow,),
                rate: 4.7,
                like1: IconButton(
                  onPressed: () {
                    setState(() {
                      like1 = !like1;
                    });
                  },
                  icon: Icon(
                    like1 ? Icons.favorite : Icons.favorite_border_outlined,
                    color: Colors.red.shade900,
                  ),
                ),
                oldPrice: 105000,
                discount: 35,
                img: "assets/images/reebok.png",
              )
            ],
          ),
        ),
      ),
    );
  }
}
