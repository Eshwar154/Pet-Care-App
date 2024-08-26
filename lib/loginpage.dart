import 'package:flutter/material.dart';
import 'package:petcare_app/dashboard.dart';
import 'package:google_fonts/google_fonts.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 55,
              ),
              Text(
                "Login",
                style: GoogleFonts.poppins(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(245, 146, 69, 1),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Image.asset("assets/Brandmark Logo.png"),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "     Email",
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Container(
                height: 36,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                ),
                child: const Padding(
                  padding: const EdgeInsets.only(
                      top: 0.1, right: 10, left: 10, bottom: 0.1),
                  child: const TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(245, 146, 69, 1), width: 1.5),
                      ),
                      hintText: "PetGuardian@gmail.com",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "     Label",
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 36,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(500),
                ),
                child: const Padding(
                  padding: const EdgeInsets.only(
                      top: 0.1, right: 10, left: 10, bottom: 0.1),
                  child: const TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(245, 146, 69, 1), width: 1.5),
                      ),
                      hintText: "*********",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text("Forget Password ? ",
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(31, 32, 41, 1))),
                Text(
                  "Click Here",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: Color.fromRGBO(31, 32, 41, 1),
                  ),
                )
              ]),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Dashboard()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Color.fromRGBO(245, 146, 69, 1), // Background color
                    // Text color
                    padding: EdgeInsets.symmetric(horizontal: 155, vertical: 5),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10.0), // Rounded corners
                    ),
                  ),
                  child: const Text(
                    'LOGIN',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 1,
                width: 350,
                color: Color.fromRGBO(245, 146, 69, 1),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Add your login logic here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Color.fromRGBO(245, 146, 69, 1), // Background color
                    // Text color
                    padding: EdgeInsets.symmetric(horizontal: 115, vertical: 5),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10.0), // Rounded corners
                    ),
                  ),
                  child: const Text(
                    "LOGIN WITH EMAIL",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 0.25,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Add your login logic here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Color.fromRGBO(245, 146, 69, 1), // Background color
                    // Text color
                    padding: EdgeInsets.symmetric(horizontal: 100, vertical: 5),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10.0), // Rounded corners
                    ),
                  ),
                  child: const Text(
                    "LOGIN WITH FACEBOOK",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "By continue you agree to our \n"
                "Terms & Privacy Policy",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(31, 32, 41, 1)),
              ),
            ]),
      ),
    );
  }
}
