import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petcare_app/dashboard.dart';

class Detaildoctorscreen extends StatefulWidget {
  const Detaildoctorscreen({super.key});

  @override
  State<Detaildoctorscreen> createState() => _DetaildoctorscreenState();
}

class _DetaildoctorscreenState extends State<Detaildoctorscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 146, 69, 1),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(245, 146, 69, 1),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => Dashboard()),
                );
              },
              child: Container(
                height: 26,
                width: 26,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: const Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Color.fromRGBO(245, 146, 69, 1),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 130,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Veterinary",
                //textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(50)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/doctor.jpg",
                    fit: BoxFit.fitWidth,
                    width: 700,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Dr. Anna Jhonason",
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Veterinary Behavioral",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(150, 151, 155, 1),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),

                    // Experience, Price, and Location
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Card(
                          elevation: 2,
                          color: Color.fromRGBO(255, 255, 255, 1),
                          child: Container(
                            height: 60,
                            width: 100,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Text(
                                    "Experience",
                                    style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(31, 32, 41, 1)),
                                  ),
                                ),
                                Text(
                                  "11 years",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(245, 146, 69, 1)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Card(
                          elevation: 2,
                          color: Color.fromRGBO(255, 255, 255, 1),
                          child: Container(
                            height: 60,
                            width: 100,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "   Price",
                                      //textAlign: TextAlign.left,
                                      style: GoogleFonts.poppins(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromRGBO(31, 32, 41, 1)),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "    \$250",
                                    style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(245, 146, 69, 1)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Card(
                          elevation: 2,
                          color: Color.fromRGBO(255, 255, 255, 1),
                          child: Container(
                            height: 60,
                            width: 100,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "   Location",
                                      //textAlign: TextAlign.left,
                                      style: GoogleFonts.poppins(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromRGBO(31, 32, 41, 1)),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "    2.5 Km",
                                    style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(245, 146, 69, 1)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),

                    // About Section
                    Text(
                      "About",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Dr. Anna Jhonason is a highly experienced veterinarian with 11 years of dedicated practice, showcasing a proven record...",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(153, 153, 157, 1),
                      ),
                    ),
                    const SizedBox(height: 10),

                    // Available Days
                    Row(
                      children: [
                        Text(
                          "Available Days",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(width: 80),
                        Icon(Icons.calendar_month_outlined,
                            color: Colors.orange),
                        const SizedBox(width: 5),
                        Text(
                          "October, 2023",
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Color.fromRGBO(150, 151, 156, 1)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Wrap(
                      spacing: 10,
                      children: [
                        // Date chips
                       _buildCustomChip("Fri, 6", isSelected: false),
                       _buildCustomChip("Sat, 7", isSelected: false),
                       _buildCustomChip("Sun, 8", isSelected: true),
                       _buildCustomChip("Mon, 9", isSelected: false),
                       _buildCustomChip("Tue, 10", isSelected: true),
                      ],
                    ),
                    const SizedBox(height: 10),

                    // Available Time
                    Text(
                      "Available Time",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Wrap(
                      spacing: 10,
                      children: [
                        // Time chips
                        _buildTimeChip("09.00", isSelected: true),
                        _buildTimeChip("15.00", isSelected: false),
                        _buildTimeChip("19.00", isSelected: false),
                      ],
                    ),
                    const SizedBox(height: 75,),

                    Container(
                      height:40 ,
                      width: 380,
                      decoration: BoxDecoration(
                       color: Color.fromRGBO(252, 219, 193, 1) ,
                       borderRadius: BorderRadius.circular(10),
                      ),
                      child: 
                         Align(
                          alignment: Alignment.center,
                           child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/fi_map.png"),
                              Text("  See Location",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(163, 97, 46, 1)
                              ),
                              )
                            ],
                                                   ),
                         ),
                      ),
                      const SizedBox(height: 10,),
                      Container(
                      height:40 ,
                      width: 380,
                      decoration: BoxDecoration(
                       color: Color.fromRGBO(245, 146, 69, 1) ,
                       borderRadius: BorderRadius.circular(10),
                      ),
                      child: 
                         Align(
                          alignment: Alignment.center,
                           child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                             
                              Text("  Book Now",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color:Colors.white
                              ),
                              )
                            ],
                                                   ),
                         ),
                      ),
                      

                    
            
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
Widget _buildCustomChip(String label, {bool isSelected = false}) {
  return GestureDetector(
    onTap: () {
      // Handle your onTap logic here
    },
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Colors.orange : Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.orange),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 13,
        ),
      ),
    ),
  );
}


Widget _buildTimeChip(String label, {bool isSelected = false}) {
  return GestureDetector(
    onTap: () {
      // Handle your onTap logic here
    },
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Colors.orange : Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.orange),
      ),
      child: Text(
        label,
        style: GoogleFonts.poppins(
          color: isSelected ? Colors.white : Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 13,
        ),
      ),
    ),
  );
}
