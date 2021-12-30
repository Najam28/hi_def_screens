import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hi_def_screens/screens/login_screen.dart';

class UserInformation extends StatefulWidget {
  const UserInformation({Key? key}) : super(key: key);
  static const routeName = "userInfo";

  @override
  State<UserInformation> createState() => _UserInformationState();
}

class _UserInformationState extends State<UserInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "User Information",
                  style: GoogleFonts.dancingScript(
                    textStyle: TextStyle(fontSize: 32, color: Colors.lightBlue),
                  ),
                ),
                Divider(
                  height: 10,
                  thickness: 3,
                  endIndent: 158,
                  color: Colors.tealAccent,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      height: 175,
                      image: AssetImage("assets/images/personal.png"),
                    ),
                    Text(
                      "Profile Picture",
                      style: GoogleFonts.pacifico(
                        textStyle: TextStyle(fontSize: 15),
                      ),
                    ),
                    Image(
                      height: 175,
                      image: AssetImage("assets/images/certificate.jpg"),
                    ),
                    Text(
                      "Certificate",
                      style: GoogleFonts.pacifico(
                        textStyle: TextStyle(fontSize: 15),
                      ),
                    ),
                    Image(
                      height: 175,
                      image: AssetImage("assets/images/license.jpg"),
                    ),
                    Text(
                      "Driving License",
                      style: GoogleFonts.pacifico(
                        textStyle: TextStyle(fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Container(
                        height: 50,
                        width: 200,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, LoginScreen.routeName);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.arrow_back),
                              Text(
                                "\t\tGo Back",
                                style: GoogleFonts.mcLaren(
                                  textStyle: TextStyle(fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
