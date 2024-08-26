import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petcare_app/DetailDoctorScreen.dart';
import 'package:petcare_app/bottom_navigation.dart';

class VeterinaryScreen extends StatefulWidget {
  const VeterinaryScreen({super.key});

  @override
  State<VeterinaryScreen> createState() => _VeterinaryScreenState();
}

class _VeterinaryScreenState extends State<VeterinaryScreen> {
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
            fontSize: 13.0,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(245, 146, 69, 1),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Image.asset("assets/fi_map-pin.png"),
            SizedBox(
              width: 10,
            ),
            Text(
              "London, UK",
              style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(187, 194, 187, 0.992)),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  elevation: 5,
                  color: Color.fromRGBO(245, 146, 69, 1),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Lets Find Specialist\nDoctor for Your Pet!",
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(255, 255, 255, 1)),
                          ),
                          const SizedBox(
                            width: 65,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0, top: 5),
                            child: Image.asset("assets/image(9).png"),
                          )
                        ]),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 40,
                width: 380,
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(250, 200, 162, 1), width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      hintText: "search",
                      suffixIcon: Icon(
                        Icons.search,
                        size: 35,
                        color: Color.fromRGBO(245, 146, 69, 1),
                      ),
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(194, 195, 204, 1))),
                ),
              ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Our Services",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(0, 0, 0, 1)),
                  ),
                  const SizedBox(
                    width: 220,
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
                          'assets/image(10).png', 'Vaccinations')),
                  const SizedBox(
                    width: 5,
                  ),
                  _buildServiceItem('assets/image(11).png', 'Operations'),
                  const SizedBox(
                    width: 5,
                  ),
                  _buildServiceItem('assets/image(12).png', 'Behaviorals'),
                  const SizedBox(
                    width: 5,
                  ),
                  _buildServiceItem('assets/image(13).png', 'Dentistry'),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "     Best Specialists Nearby",
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>const Detaildoctorscreen()));
                },
                child: Card(
                  elevation: 2,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Image.asset("assets/image(14).png"),
                      Column(
                        children: [
                          Text(
                            "Dr. Anna Johanson",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "  Veterinary Behavioral",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(194, 195, 204, 1),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Row(children: [
                              //const SizedBox(width: ,),
                              Image.asset("assets/fi_star.png"),
                              Text(
                                " 4.8",
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(194, 195, 204, 1)),
                              ),
                              const SizedBox(width: 20),
                              Image.asset("assets/fi_map-pin(1).png"),
                              Text(
                                " 1 km",
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(194, 195, 204, 1)),
                              )
                            ]),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            //const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                elevation: 2,
                color: Colors.white,
                child: Row(
                  children: [
                    Image.asset("assets/image(15).png"),
                    Column(
                      children: [
                        Text(
                          "Dr. Vernon Chwe",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "  Veterinary Surgery",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(194, 195, 204, 1),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Row(children: [
                            //const SizedBox(width: ,),
                            Image.asset("assets/fi_star.png"),
                            Text(
                              " 4.8",
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(194, 195, 204, 1)),
                            ),
                            const SizedBox(width: 20),
                            Image.asset("assets/fi_map-pin(1).png"),
                            Text(
                              " 1 km",
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(194, 195, 204, 1)),
                            )
                          ]),
                        ),
                      ],
                    )
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
    );
  }
}
