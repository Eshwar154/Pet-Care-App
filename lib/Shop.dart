import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petcare_app/bottom_navigation.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class Item {
  final String label;
  final String imagePath;

  Item({required this.label, required this.imagePath});
}

List<Item> items = [
  Item(label: 'Pets', imagePath: 'assets/Pet Shop.png'),
  Item(label: 'Foods', imagePath: 'assets/Pet Shop(6).png'),
  Item(label: 'Healthy', imagePath: 'assets/Pet Shop(1).png'),
  Item(label: 'Toys', imagePath: 'assets/Pet Shop(2).png'),
  Item(label: 'Accessories', imagePath: 'assets/Pet Shop(5).png'),
  Item(label: 'Clothes', imagePath: 'assets/Pet Shop(4).png'),
];

class GridItem extends StatelessWidget {
  final Item item;

  GridItem({required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Image.asset(
            item.imagePath,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 180,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(245, 146, 69, 1),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Text(
                        "Hello Sarah",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            "Find your lovable Pets",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          const Spacer(),
                          Image.asset(
                            "assets/fi_shopping-cart.png",
                            width: 25,
                            height: 25,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: -20,
                  left: 30,
                  right: 30,
                  child: Container(
                    height: 40,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color.fromRGBO(250, 200, 162, 1),
                        width: 1.0,
                      ),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                        hintText: "  Search Something Here...",
                        suffixIcon: Icon(
                          Icons.search,
                          size: 25,
                          color: Color.fromRGBO(245, 146, 69, 1),
                        ),
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(194, 195, 204, 1),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: GridView.count(
                crossAxisCount: 2, // Number of columns
                padding: const EdgeInsets.all(8.0),
                crossAxisSpacing: 0.5,
                mainAxisSpacing: 0.5,
                children: List.generate(items.length, (index) {
                  return GridItem(item: items[index]);
                }),
              ),
            ),
          ),
          Container(
            height: 110, // Fixed height for BottomNavigation
            child: BottomNavigation(),
          ),
        ],
      ),
    );
  }
}
