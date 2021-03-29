import 'package:flutter/material.dart';

import '../../../deffault.dart';

class QuickServices extends StatelessWidget {
  const QuickServices({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: size.width,
      // margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),

      // color: Color(0xFF1B1D22),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Classify Services',
                style: TextStyle(
                    color: kSecondaryColor,
                    fontSize: 16,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'View All... ',
                style: TextStyle(color: kDeffaultColor, fontSize: 17),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              serviceHolder(
                  ontap: () {},
                  icon: 'assets/icons/report.png',
                  subtitle: 'Report'),
              serviceHolder(
                  ontap: () {},
                  icon: 'assets/icons/schedule.png',
                  subtitle: 'Scheduling'),
              serviceHolder(
                  ontap: () {},
                  icon: 'assets/icons/communicate.png',
                  subtitle: 'Con'
                      'verse')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              serviceHolder(
                  ontap: () {},
                  icon: 'assets/icons/naira.png',
                  subtitle: 'Send Money'),
              serviceHolder(
                  ontap: () {},
                  icon: 'assets/icons/schedule.png',
                  subtitle: 'Compliance'),
              serviceHolder(
                  ontap: () {},
                  icon: 'assets/icons/document.png',
                  subtitle: 'Document')
            ],
          ),
        ],
      ),
    );
  }

  Container serviceHolder(
      {@required String subtitle, String icon, Color color, Function ontap}) {
    return Container(
      height: 80.0,
      width: 70,
      decoration: BoxDecoration(
        color: Color(0xF31B1D22),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: ontap,
          borderRadius: BorderRadius.circular(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 36.0,
                height: 36.0,
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
//              color: color ?? Colors.pink,
//                boxShadow: [
//                  BoxShadow(
//                    color: Colors.grey.withOpacity(0.7),
//                    offset: Offset(0, 1),
//                    blurRadius: 5,
//                    spreadRadius: 2,
//                  ),
//                ]
                ),
                child: Image.asset(
                  icon,
                  color: kDeffaultColor.withAlpha(500),
                ),
              ),
              Text(subtitle,
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                      fontWeight: FontWeight.w800))
            ],
          ),
        ),
      ),
    );
  }
}
