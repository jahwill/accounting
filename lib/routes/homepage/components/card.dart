import 'package:accounting/deffault.dart';
import 'package:flutter/material.dart';

import 'card_model.dart';

class ImageListCard extends StatelessWidget {
  const ImageListCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 195.0,

      margin: EdgeInsets.only(top: kDeffaultpadding / 1.5),
//      decoration: BoxDecoration(color: Colors.cyan),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Row(
              children: [
                Text(
                  'Accounting Tips',
                  style: TextStyle(
                      color: kSecondaryColor,
                      fontSize: 16,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Flexible(
            child: ListView.builder(
              itemCount: imagelist.length,
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, index) => Container(
                width: 250,
                margin: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: AssetImage(imagelist[index].imageaddress),
                      fit: BoxFit.fill),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
