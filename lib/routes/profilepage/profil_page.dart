import 'package:accounting/routes/profilepage/profilepage_model.dart';
import 'package:accounting/routes/profilepage/profilepagelist_content_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../deffault.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              _ProfileHeader(context),
              Expanded(
                child: Container(
                  width: size.width,
                  color: Color(0xFFE6E8F5),
                  child: ListView.builder(
                    itemCount: profilelist.length,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context, index) => Column(
                      children: [
                        ListTile(
                          onTap: profilelist[index].ontap,
                          leading: Container(
                            height: 42.0,
                            width: 42.0,
                            padding: EdgeInsets.all(9),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: kDeffaultColor.withOpacity(0.09),
                            ),
                            child: Image.asset(
                              profilelist[index].iconaddress,
                              color: kDeffaultColor,
                            ),
                          ),
                          title: Text(profilelist[index].title,
                              style: Theme.of(context).textTheme.headline6),
                          subtitle: Text(
                            profilelist[index].subtitle,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                .copyWith(fontSize: 14),
                          ),
                        ),
                        Divider(
                          height: 1,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container _ProfileHeader(BuildContext context) {
    return Container(
      height: 200,
      color: Color(0xFFE6E8F5),
      child: Stack(
        children: [
          Container(
            height: 160,
            color: kSecondaryColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.keyboard_backspace),
                      color: kDeffaultColor,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, bottom: 50),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            userDetail[0].username,
                            style: Theme.of(context)
                                .textTheme
                                .headline4
                                .copyWith(
                                    fontSize: 25,
                                    color: Theme.of(context).primaryColor),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text(
                            userDetail[0].useremail,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      // Row(
                      //   children: [
                      //     Text(
                      //       userDetail[0].id,
                      //       style:
                      //           Theme.of(context).textTheme.headline6,
                      //     )
                      //   ],
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              left: 20,
              bottom: 2.0,
              child: AnimatedContainer(
                height: 85,
                width: 90,
                duration: Duration(milliseconds: 260),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      alignment: Alignment.topCenter,
                      image: AssetImage('assets/images/profile1.png'),
                      fit: BoxFit.cover),
                ),
              )),

          ///the containers below are the position at the top right
          ///screen for design
          Positioned(
            right: -45.0,
            top: -10,
            child: Container(
              height: 110,
              width: 110,
              decoration:
                  BoxDecoration(color: kDeffaultColor, shape: BoxShape.circle),
            ),
          ),
          Positioned(
            right: 58.0,
            top: 80.0,
            child: Container(
              height: 45,
              width: 45,
              decoration:
                  BoxDecoration(color: kDeffaultColor, shape: BoxShape.circle),
            ),
          ),
        ],
      ),
    );
  }
}
