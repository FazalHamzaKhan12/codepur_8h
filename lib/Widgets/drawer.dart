import 'package:codepur_8h/Pages/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.deepPurple),
                margin: EdgeInsets.zero,
                accountName: Text(
                  "Fazal Hamza Khan",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                accountEmail: Text("theunknown.pak@gmail.com",
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 14)),
                currentAccountPicture:
                    Image.asset("assets/images/myprofile.png"),
              ),
            ),

            //for home
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),

            //for Profile
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
            ),

            //for youtube
            ListTile(
              leading: Image.asset(
                'assets/images/whiteYoutube.png',
                scale: 75,
              ),
              title: Text(
                "Youtube Channel",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),

            //for Linkdin
            ListTile(
              leading: Image.asset(
                'assets/images/linkedinwhite.png',
                scale: 22,
              ),
              title: Text(
                "Linkedin",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),

            //for mails
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email Me",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
