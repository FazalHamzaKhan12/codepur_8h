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
                ))
          ],
        ),
      ),
    );
  }
}
