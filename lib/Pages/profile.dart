import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Profile",
          style: TextStyle(
            fontSize: 30, // Increase font size for visibility
            fontWeight: FontWeight.bold,
            color: Colors.yellow, // Main neon color
            shadows: [
              Shadow(
                blurRadius: 10.0, // Glow intensity
                color: Colors.yellow, // Glow color
                offset: Offset(0, 0), // Centered glow
              ),
              Shadow(
                blurRadius: 20.0, // Outer glow for more neon effect
                color: Colors.yellowAccent,
                offset: Offset(0, 0),
              ),
            ],
          ),
        ),
        centerTitle: true,
        leading: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.yellow, // Inner glow color
                blurRadius: 10, // Glow intensity
                spreadRadius: 2, // Glow spread
              ),
              BoxShadow(
                color: Colors.yellowAccent, // Outer glow color
                blurRadius: 20, // Outer glow intensity
                spreadRadius: 4, // Outer spread
              ),
            ],
          ),
          child: Icon(
            Icons.keyboard_arrow_right_outlined,
            size: 40, // Icon size
            color: Colors.black, // Main color of the icon
          ),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.yellow, // Inner glow color
                  blurRadius: 10, // Glow intensity
                  spreadRadius: 2, // Glow spread
                ),
                BoxShadow(
                  color: Colors.yellowAccent, // Outer glow color
                  blurRadius: 20, // Outer glow intensity
                  spreadRadius: 4, // Outer spread
                ),
              ],
            ),
            child: Icon(
              Icons.keyboard_arrow_left_outlined,
              size: 40, // Icon size
              color: Colors.black, // Main color of the icon
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Center(
            child: Container(
              width: 200, // Slightly larger than the CircleAvatar's radius * 2
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.yellow, // Inner glow color
                    blurRadius: 18, // Glow intensity
                    spreadRadius: 5, // How much the glow spreads
                  ),
                  BoxShadow(
                    color: Colors.yellowAccent, // Outer glow color
                    blurRadius: 30, // Outer glow intensity
                    spreadRadius: 10, // Additional spread
                  ),
                ],
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/myprofile.png"),
                radius: 100, // Radius of the avatar
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "Fazal Hamza Khan",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.yellowAccent,
              shadows: [
                Shadow(
                  blurRadius: 10.0, // Glow intensity
                  color: Colors.yellow, // Glow color
                  offset: Offset(0, 0), // Centered glow
                ),
                Shadow(
                  blurRadius: 20.0, // Outer glow for more neon effect
                  color: Colors.yellowAccent,
                  offset: Offset(0, 0),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Skills Expert",
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          SizedBox(height: 20),
          Text(
            "App Development | GameDeveloper",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Text("Hobbies", style: TextStyle(color: Colors.white, fontSize: 15)),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.sports_cricket,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.laptop,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.phone_android_rounded,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.gamepad_outlined,
                color: Colors.white,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Quotes Will Inspire You",
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Clean code always looks like it was written \n                  by someone who cares",
                style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
