import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
              currentAccountPicture:
                  Container(child: Image.asset('assets/images/icon_user.jpg')),
              accountName: Text('AkhwanBrothers'),
              accountEmail: Text('somethingcool@email.com')),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.devices),
            title: Text('Technology'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.business),
            title: Text('Business'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
