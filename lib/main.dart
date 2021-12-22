import 'package:flutter/material.dart';
import 'package:hi_def_screens/screens/dashboard.dart';
import 'package:hi_def_screens/screens/login_screen.dart';
import 'package:hi_def_screens/screens/user_info.dart';

void main() {
  runApp(ProductionBox());
}

class ProductionBox extends StatelessWidget {
  const ProductionBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.routeName,
      routes: {
        LoginScreen.routeName: (context) => LoginScreen(),
        UserInformation.routeName: (context) => UserInformation(),
        Dashboard.routeName: (context) => Dashboard(),
      },
    );
  }
}
