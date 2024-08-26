import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = -1;
  double _leftPosition = 0;

  final List<IconData> _icons = [
    Icons.home_filled,
    Icons.favorite_border,
    Icons.shopping_cart,
    Icons.history,
    Icons.person,
  ];

  final List<String> _labels = [
    "Home",
    "Service",
    "Shop",
    "History",
    "Profile",
  ];

  void _onIconClick(int index) {
    setState(() {
      _selectedIndex = index;
      _leftPosition =
          index * 80.0; // Adjust the multiplier based on icon size and spacing
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            color: Colors.transparent,
            width: MediaQuery.of(context).size.width,
            height: 110,
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      color: Colors.transparent,
                      width: MediaQuery.of(context).size.width,
                      height: 35,
                    ),
                    Container(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      width: MediaQuery.of(context).size.width,
                      height: 75,
                    ),
                  ],
                ),
                AnimatedPositioned(
                  duration: Duration(seconds: 1),
                  curve: Curves.easeInOut,
                  top: 2,
                  left: _leftPosition,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        
                        border: Border.all(color: Colors.white, width: 6),
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(5, (index) {
                      return GestureDetector(
                        onTap: () => _onIconClick(index),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            AnimatedPadding(
                              padding: EdgeInsets.only(
                                  top: _selectedIndex == index ? 10 : 30.0),
                              duration: Duration(milliseconds: 200),
                              curve: Curves.easeInOut,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  _icons[index],
                                  size: 25,
                                  color: _selectedIndex == index
                                      ? Colors.white
                                      : const Color.fromARGB(
                                          255, 208, 186, 186),
                                ),
                              ),
                            ),
                            // Space between icon and text
                            Text(
                              _labels[index],
                              style: TextStyle(
                                fontSize: 12, // Reduce font size
                                color: _selectedIndex == index
                                    ? Colors.white
                                    : const Color.fromARGB(255, 208, 186, 186),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
