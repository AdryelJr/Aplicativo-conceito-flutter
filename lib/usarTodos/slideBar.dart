import 'package:flutter/material.dart';
import 'package:hello_world_flutter/botao1.dart';
import 'package:hello_world_flutter/botao2.dart';

import '../main.dart';

class MeuMenu extends StatelessWidget {
  const MeuMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Adryel Júnio'),
            accountEmail: Text('adryeljunio2020@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://instagram.fpoj9-1.fna.fbcdn.net/v/t51.2885-19/340475149_770051794472131_4282219149518431890_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fpoj9-1.fna.fbcdn.net&_nc_cat=107&_nc_ohc=W8QOXBL5BEUAX8g7_lw&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfCQQK91fxk0HzmMFC_FPVGIq2GFEwd0PsEDRyUgL6Xb3g&oe=64F4533C&_nc_sid=8b3546',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Color(0xFF0A6D92),
              image: DecorationImage(
                image: NetworkImage(
                  'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (BuildContext context) {
                return HomePage();
              }),
            ),
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('Amigos'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (BuildContext context) {
                return botao1();
              }),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Configurações'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (BuildContext context) {
                return botao2();
              }),
            ),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Sair'),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
