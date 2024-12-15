import 'package:flutter/material.dart';
import 'package:flutter_web/utilis/colors.dart';
import 'package:flutter_web/utilis/styles.dart';
import 'package:responsive_builder/responsive_builder.dart';



class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileNavBar(),
      desktop: DesktopNavBar(),
    );
  }
  Widget MobileNavBar(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.menu),
          navLogo(),
        ],
      ),
    );
  }

  Widget DesktopNavBar(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          navLogo(),
          Row(
            children: [
              navButton("Features"),
              navButton("About us"),
              navButton("Pricing"),
              navButton("FeedBack"),
            ],
          ),
          Container(
            child: ElevatedButton(
              style: buttonStyle,
                onPressed: (){},
                child: Text(
                  "Request a Demo",
                  style: TextStyle(
                    color: AppColors.primary,
                  ),
                ),
            ),
          )
        ],
      ),
    );
  }

  Widget navButton(String text){

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      child: TextButton(
          onPressed: (){},
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
      ),
    );
  }

  Widget navLogo(){
    return Container(
      width: 110,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/logo.png"))
      ),
    );
  }

}
