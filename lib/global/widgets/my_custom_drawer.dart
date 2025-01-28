import 'package:bowl_app/global/utils/images_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCustomDrawer {
  static Drawer getDrawer() {
    return const Drawer(
      child: DrawerSubPart(),
    );
  }
}

class DrawerSubPart extends StatelessWidget {
  const DrawerSubPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(child: Image.asset(ImageAssetList.splashAssetLogo)),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/pensioner-list',
                    arguments: {'title': 'Dashboard'});
              },
              // selected: true,
              // selectedColor: Colors.white,
              // selectedTileColor: Colors.grey,
              visualDensity: const VisualDensity(vertical: -4, horizontal: 0),
              iconColor: Colors.green,
              titleTextStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
              leading: const CircleAvatar(
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
              ),
              title: const Text("Dashboard"),
              subtitle: const Text("My home screen"),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            ExpansionTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.green,
                child: Icon(
                  CupertinoIcons.person_3_fill,
                  color: Colors.white,
                ),
              ),
              visualDensity: const VisualDensity(vertical: -4, horizontal: 0),
              iconColor: Colors.green,
              collapsedIconColor: Colors.green,
              title: const Text(
                "Customers",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
              subtitle: const Text("Manage Customers"),
              children: [
                ListTile(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/add-customer',
                        arguments: {'title': 'Add New Customer'});
                  },
                  visualDensity:
                      const VisualDensity(vertical: -4, horizontal: 0),
                  iconColor: Colors.green,
                  titleTextStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                  leading: const CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(
                      Icons.person_add,
                      color: Colors.white,
                    ),
                  ),
                  title: const Text("Add Customer"),
                  subtitle: const Text("add new customer"),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/customer-list',
                        arguments: {'title': 'Customer List'});
                  },
                  visualDensity:
                      const VisualDensity(vertical: -4, horizontal: 0),
                  iconColor: Colors.green,
                  titleTextStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                  leading: const CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(
                      Icons.list,
                      color: Colors.white,
                    ),
                  ),
                  title: const Text("Customers List"),
                  subtitle: const Text("List of customers"),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/profile',
                    arguments: {'title': 'Profile'});
              },
              visualDensity: const VisualDensity(vertical: -4, horizontal: 0),
              iconColor: Colors.green,
              titleTextStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
              leading: const CircleAvatar(
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
              title: const Text("Profile"),
              subtitle: const Text("My profile screen"),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Text(
        "Powered by The Codermind",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.green, fontWeight: FontWeight.bold, fontSize: 23),
      ),
    );
  }
}
