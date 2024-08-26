import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petcare_app/Shop.dart';
import 'package:petcare_app/bottom_navigation.dart';
import 'package:petcare_app/grooming.dart';
import 'package:petcare_app/notification.dart';
import 'package:petcare_app/VeterinaryScreen.dart';
import 'package:petcare_app/training.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

Widget _buildServiceItem(String imagePath, String label) {
  return Column(
    children: [
      CircleAvatar(
        radius: 30.0,
        backgroundImage: AssetImage(imagePath),
      ),
      SizedBox(height: 10.0),
      Text(
        label,
        style: GoogleFonts.poppins(
          fontSize: 14.0,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
    ],
  );
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(children: [
          const SizedBox(
            height: 1,
            width: 2,
          ),
          Image.asset("assets/image(1).png"),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Hello,Sarah",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Color.fromRGBO(0, 0, 0, 1))),
            const SizedBox(
              height: 5,
            ),
            Text(
              "   Good Morning!",
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(194, 195, 204, 1)),
            ),
          ]),
          const SizedBox(
            width: 180,
          ),
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationPage()));
              },
              child: Image.asset("assets/fi_bell.png"))
        ]),
      ),
      body: Expanded(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 40,
                    width: 380,
                    child: TextField(
                      decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(250, 200, 162, 1),
                                width: 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          hintText: "search",
                          suffixIcon: Icon(
                            Icons.search,
                            color: Color.fromRGBO(245, 146, 69, 1),
                          ),
                          hintStyle: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(194, 195, 204, 1))),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  width: 380,
                  height: 120,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'In Love With Pets?',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              'Get all what you need for them',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.orange,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 12),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(0.25),
                        child: Image.asset(
                          'assets/image(2).png',
                          width: 150,
                          height: 180,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Category",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(0, 0, 0, 1)),
                      ),
                      const SizedBox(
                        width: 250,
                      ),
                      Text(
                        "See All",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(194, 195, 204, 1)),
                      )
                    ]),
                /* const SizedBox(
                    height: 0.025,
                  ),*/
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VeterinaryScreen()),
                            );
                          },
                          child: _buildServiceItem(
                              'assets/image(3).png', 'Veterinary')),
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) =>GroomingScreen()));
                          },
                          child: _buildServiceItem(
                              'assets/image(4).png', 'Grooming')),
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                         onTap: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) =>Shop()));
                          },
                        child: _buildServiceItem('assets/image(5).png', 'Pet Store')),
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) =>Training()));
                          },
                        child: _buildServiceItem('assets/image(6).png', 'Training')),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 0.25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Event",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Card(
                  elevation: 5,
                  color: Color.fromRGBO(255, 255, 255, 1),
                  child: Container(
                    height: 125,
                    width: 370,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 25,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 15,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Find and Join in Special\nEvents For You Pets! ",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 90),
                              child: ElevatedButton(
                                iconAlignment: IconAlignment.start,
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromRGBO(245, 146, 69, 1),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 12),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    )),
                                child: Text(
                                  "See More ",
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 2, left: 2),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Image.asset(
                              "assets/image(7).png",
                              height: 300,
                              width: 140,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Community",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Card(
                  elevation: 5,
                  color: Color.fromRGBO(255, 255, 255, 1),
                  child: Container(
                    height: 125,
                    width: 370,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 25,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 15,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Connect and Share with\ncommunities! ",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 90),
                              child: ElevatedButton(
                                iconAlignment: IconAlignment.start,
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromRGBO(245, 146, 69, 1),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 12),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    )),
                                child: Text(
                                  "See More ",
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 2, left: 2),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Image.asset(
                              "assets/image(8).png",
                              height: 300,
                              width: 140,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
               Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(height: 120, child: BottomNavigation()), // Placeholder for your BottomNavigation widget
              ),
              ],
            ),
              
          ),
        ),
        
      ),
       
    );
  }
}
