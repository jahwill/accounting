import 'package:accounting/domain/appstate/current_userstate.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../deffault.dart';

class AccountBalanceCard extends StatelessWidget {
  const AccountBalanceCard({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      width: size.width,
      margin: EdgeInsets.symmetric(
          vertical: kDeffaultpadding, horizontal: kDeffaultpadding / 1.7),
      constraints: BoxConstraints(maxWidth: 500),
      decoration: BoxDecoration(
          color: Color(0xFF3B2BCE),
          // color: Color(0xFF1B1D22),
          // color: Color(0xFF1B1D22),
          borderRadius: BorderRadius.circular(5)),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kDeffaultpadding,
            ),
            child: Consumer<userState>(
              builder: (context, userfirstname, child) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Balance',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    padding: EdgeInsets.all(3),
                    child: Image.asset(
                      'assets/icons/naira.png',
                      color: Color(0xFFD1D5DB),
                    ),
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    ///todo:account details are to come here
                    '500,260.90', overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.headline5.copyWith(
                        fontSize: 28,
                        color: Colors.white,
                        fontFamily: 'greycliff',
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(),
                      Text(
                        ///todo:User name comes here
                        userfirstname.firstname.mail,
                        // 'John brown',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: kDeffaultColor.withOpacity(0.9),
                            fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
