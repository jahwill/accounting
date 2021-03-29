import 'package:accounting/components/carousel.dart';
import 'package:accounting/deffault.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:accounting/exported_files.dart';

import 'components/side_drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: CustomDrawer(
        size: size,
      ),
      appBar: AppBar(
        elevation: 4,
        iconTheme: IconThemeData(
          color: Theme.of(context).primaryColor,
        ),
        backgroundColor: kSecondaryColor,

        // leading: PopupMenuButton(
        //     // elevation: 400,
        //     offset: Offset(15.0, 5),
        //     icon: Icon(Icons.more_vert),
        //     itemBuilder: (BuildContext context) => <PopupMenuEntry<dynamic>>[
        //           PopupMenuItem(
        //             child: ListTile(
        //               leading: Icon(Icons.notifications),
        //               title: Text('Notifications'),
        //             ),
        //           ),
        //           PopupMenuItem(
        //             child: ListTile(
        //               leading: Icon(Icons.notifications),
        //               title: Text('Notifications'),
        //             ),
        //           ),
        //           PopupMenuItem(
        //             child: ListTile(
        //               leading: Icon(Icons.notifications),
        //               title: Text('Notifications'),
        //             ),
        //           ),
        //           PopupMenuItem(
        //             child: ListTile(
        //               leading: Icon(Icons.notifications),
        //               title: Text('Notifications'),
        //             ),
        //           ),
        //           PopupMenuItem(
        //             child: ListTile(
        //               leading: Icon(Icons.notifications),
        //               title: Text('Notifications'),
        //             ),
        //           ),
        //           PopupMenuItem(
        //             child: ListTile(
        //               leading: Icon(Icons.notifications),
        //               title: Text('Notifications'),
        //             ),
        //           ),
        //         ]),
        title: Text(
          'Accounting',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none_rounded),
            iconSize: 28,
            onPressed: () {},
            color: kDeffaultColor,
          ),
          SizedBox(
            width: kDeffaultpadding / 2,
          ),
          CircleAvatar(
            radius: 18.5,
            backgroundColor: Colors.grey[400].withOpacity(0.5),
            child: Icon(
              Icons.person,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            width: kDeffaultpadding,
          )
        ],
      ),
      body: Container(
        height: size.height,
        width: size.width,
        margin: EdgeInsets.symmetric(horizontal: kDeffaultpadding / 2.5),
        // color: Colors.white,
        color: Color(0xFFE6E8F5),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 190,
                width: size.width,
                margin: EdgeInsets.only(top: 2),
                color: Color(0xFFE6E8F5).withOpacity(0.5),
                child: CarouselSlider1(),
              ),
              AccountBalanceCard(size: size),
              QuickServices(size: size),
              ImageListCard(),
              TopConsultants(),
            ],
          ),
        ),
      ),
    );
  }
}
