import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petcare_app/dashboard.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromRGBO(255, 255, 255, 0.98) ,
      appBar: AppBar(
        backgroundColor:Color.fromRGBO(255, 255, 255, 0.98) ,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context,MaterialPageRoute(builder: (context)=>Dashboard()),);
              },
              child: Container(
                height: 26,
                width: 26,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(245, 146, 69, 1)),
                child: const Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 120,
            ),
            Text("Notifications",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                )),
          ],
        ),
      ),
      body: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "     Today",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(31, 32, 41, 1)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                    elevation: 5,
                    color: Colors.white,
                    child: Column(children: [
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset("assets/Frame 2089.png"),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Your checkout is successful product is on\nthe way",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Color.fromRGBO(31, 32, 41, 1),
                          ),
                        ),
                      ]),
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset("assets/Frame 2095.png"),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Appointment request accepted",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Color.fromRGBO(31, 32, 41, 1),
                          ),
                        ),
                      ]),
                    ])),
              ),
              const SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "     25 September",
                  //textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                    elevation: 5,
                    color: Colors.white,
                    child: Column(children: [
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset("assets/Frame 2089.png"),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Your checkout is successful product is on\nthe way",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Color.fromRGBO(31, 32, 41, 1),
                          ),
                        ),
                      ]),
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset("assets/Frame 2095.png"),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Appointment request accepted",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Color.fromRGBO(31, 32, 41, 1),
                          ),
                        ),
                      ]),
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset("assets/Frame 2095(1).png"),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Vacccinate your pet timely",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Color.fromRGBO(31, 32, 41, 1),
                          ),
                        ),
                      ]),
                    ])),
              ),
              const SizedBox(height: 5,),
               Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "     15 September",
                  //textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                    elevation: 5,
                    color: Colors.white,
                    child: Column(children: [
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset("assets/Frame 2089.png"),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Your checkout is successful product is on\nthe way",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Color.fromRGBO(31, 32, 41, 1),
                          ),
                        ),
                      ]),
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset("assets/Frame 2095.png"),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Appointment request accepted",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Color.fromRGBO(31, 32, 41, 1),
                          ),
                        ),
                      ]),
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset("assets/Frame 2095(1).png"),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Vacccinate your pet timely",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Color.fromRGBO(31, 32, 41, 1),
                          ),
                        ),
                      ]),
                    ])),
              ),
              const SizedBox(height: 5,),
               Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "     10 September",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(31, 32, 41, 1)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                    elevation: 5,
                    color: Colors.white,
                    child: Column(children: [
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset("assets/Frame 2089.png"),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Your checkout is successful product is on\nthe way",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Color.fromRGBO(31, 32, 41, 1),
                          ),
                        ),
                      ]),
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset("assets/Frame 2095.png"),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Appointment request accepted",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Color.fromRGBO(31, 32, 41, 1),
                          ),
                        ),
                      ]),
                    ])),
              ),
              
              
            ]),
          )),
    );
  }
}
