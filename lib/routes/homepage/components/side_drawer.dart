import 'dart:ui';

import 'package:accounting/components/animate_singlepage.dart';
import 'package:accounting/routes/profilepage/profil_page.dart';
import 'package:accounting/routes/servicespage/services_page.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final size;

  const CustomDrawer({Key key, this.size}) : super(key: key);

  @override
  build(BuildContext context) {
    return Drawer(
      child: Container(
        height: size.height,
        width: size.width,
        color: Color(0xFF111217),
        child: Material(
          color: Colors.transparent,
          child: ListView(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 56,
                  color: Theme.of(context).primaryColor,
                  margin: EdgeInsets.only(bottom: 15.0),
                  padding: EdgeInsets.only(left: 25, top: 15.0),
                  child: Text(
                    'Home',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        letterSpacing: 1),
                  ),
                ),
              ),
              ListTile(
                horizontalTitleGap: 40,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context, AnimateSinglePage(gotoPage: ProfilePage()));
                },
                leading: Container(
                  height: 35,
                  width: 35,
                  padding: EdgeInsets.all(3.0),
                  child: Image.asset(
                    'assets/icons/person.png',
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                title: Text(
                  'Profile',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      .copyWith(color: Colors.white, fontSize: 17),
                ),
              ),
              ListTile(
                horizontalTitleGap: 40,
                onTap: () {
                  print('jdjdj');
                },
                leading: Container(
                  height: 35,
                  width: 35,
                  // padding: EdgeInsets.all(2.0),
                  child: Image.asset(
                    'assets/icons/notification.png',
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                title: Text(
                  'Notifications',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      .copyWith(color: Colors.white, fontSize: 17),
                ),
              ),
              ListTile(
                horizontalTitleGap: 40,
                onTap: () {
                  print('jdjdj');
                },
                leading: Container(
                  height: 35,
                  width: 35,
                  padding: EdgeInsets.all(3.0),
                  child: Image.asset(
                    'assets/icons/market.png',
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                title: Text(
                  'Market',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      .copyWith(color: Colors.white, fontSize: 17),
                ),
              ),
              ListTile(
                horizontalTitleGap: 40,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context, AnimateSinglePage(gotoPage: ServicePage()));
                },
                leading: Container(
                  height: 35,
                  width: 35,
                  padding: EdgeInsets.all(3.0),
                  child: Image.asset(
                    'assets/icons/service_box.png',
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                title: Text(
                  'Services',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      .copyWith(color: Colors.white, fontSize: 17),
                ),
              ),
              ListTile(
                horizontalTitleGap: 40,
                onTap: () {
                  print('jdjdj');
                },
                leading: Container(
                  height: 35,
                  width: 35,
                  padding: EdgeInsets.all(3.0),
                  child: Image.asset(
                    'assets/icons/purse.png',
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                title: Text(
                  'Purse',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      .copyWith(color: Colors.white, fontSize: 17),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
