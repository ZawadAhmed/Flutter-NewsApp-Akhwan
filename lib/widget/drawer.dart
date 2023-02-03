import 'package:flutter/material.dart';
import 'package:newsportalmy/view/homepage.dart';

//Drawer Widget creation

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
              currentAccountPicture: Image.asset(
                'lib/images/icon_user.jpeg',
                height: 50,
                width: 30,
                fit: BoxFit.fitWidth,
              ),
              accountName: const Text('AkhwanBrothers'),
              accountEmail: const Text('somethingcool@email.com')),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.devices),
            title: const Text('Technology'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.business),
            title: const Text('Business'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.business),
            title: const Text('Sport'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
