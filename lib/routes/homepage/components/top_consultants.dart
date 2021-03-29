import 'package:accounting/exported_files.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConsultantsModel {
  final String image;
  final String name;
  final String specialty;
  final Function ontap;

  ConsultantsModel(
      {this.ontap, this.image = '', this.name = '', this.specialty = ''});
}

List<ConsultantsModel> topconsultants = [
  ConsultantsModel(
      //todo:the on tap functionality is to be added to this model to navigate
      /// to the consultant page this is to be applied to all of them
      image: 'assets/im'
          'ages/image2.jpeg',
      name: 'Bob Nystron',
      specialty: 'auditor'),
  ConsultantsModel(
      image: 'assets/im'
          'ages/image2.jpeg',
      name: 'Bob Nystron',
      specialty: 'auditor'),
  ConsultantsModel(
      image: 'assets/im'
          'ages/image2.jpeg',
      name: 'Bob Nystron',
      specialty: 'auditor'),
  ConsultantsModel(
      image: 'assets/im'
          'ages/profile1.png',
      name: 'Bob Nystron',
      specialty: 'auditor'),
  ConsultantsModel(
      image: 'assets/im'
          'ages/profile1.png',
      name: 'Bob Nystron',
      specialty: 'auditor'),
  ConsultantsModel(
      image: 'assets/im'
          'ages/profile1.png',
      name: 'Bob Nystron',
      specialty: 'auditor'),
];

class TopConsultants extends StatefulWidget {
  @override
  _TopConsultantsState createState() => _TopConsultantsState();
}

class _TopConsultantsState extends State<TopConsultants> {
  bool colapconsultlist = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kDeffaultpadding / 1.5),
            child: GestureDetector(
              ///this is used to change the navigation icon from down to
              ///keyboard_arrow_right
              onTap: () {
                if (colapconsultlist == false) {
                  setState(() {
                    colapconsultlist = true;
                  });
                } else
                  setState(() {
                    colapconsultlist = false;
                  });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Consultants',
                    style: TextStyle(
                        color: kSecondaryColor,
                        fontSize: 16,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold),
                  ),
                  colapconsultlist == true
                      ? Icon(
                          Icons.keyboard_arrow_down,
                          size: 30,
                        )
                      : Icon(
                          Icons.keyboard_arrow_right,
                          size: 30,
                        )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            constraints:
                BoxConstraints(maxHeight: colapconsultlist == true ? 400 : 0.0),
            child: Scrollbar(
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: topconsultants.length,
                  itemBuilder: (BuildContext context, index) => Card(
                      margin: EdgeInsets.only(left: 45, right: 10, bottom: 8),
                      child: Container(
                        height: 120,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 70.0, right: 15, top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    ///this takes the name of the consultant
                                    topconsultants[index].name,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(

                                      ///this takes the specialty of the consultant
                                      topconsultants[index].specialty,
                                      style: Theme.of(context)
                                          .textTheme
                                          .caption
                                          .copyWith(fontSize: 18)),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        ///this take the rating of the consultant
                                        '2 star rate',
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                      ),
                                      Text(

                                          ///this show the status if busy or
                                          ///available
                                          'available',
                                          overflow: TextOverflow.ellipsis,
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle2
                                              .copyWith(fontSize: 17)),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Positioned(
                              left: -30,
                              top: 20,
                              child: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: Colors.blue[900],
                                    borderRadius: BorderRadius.circular(7),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/profile_pic.jpeg'),
                                        fit: BoxFit.cover,
                                        alignment: Alignment.topCenter)),
                              ),
                            ),
                          ],
                        ),
                      ))),
            ),
          ),
        ],
      ),
    );
  }
}
