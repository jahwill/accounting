import 'package:accounting/routes/servicespage/servicespage_model.dart';

import 'package:flutter/material.dart';

import '../../deffault.dart';

class ServicePage extends StatefulWidget {
  @override
  _ServicePageState createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  GlobalKey appbarkey = new GlobalKey<ScaffoldState>();

  /// ScrollController _controller;
  /// double elevation = 0.0;
  ///double targetElevation = 1.6;
  /// @override
  /// void initState() {
  ///   _controller = new ScrollController();
  ///  _controller.addListener(_scrolllistener);
  ///   super.initState();
  /// }

  /// @override
  /// dispose() {
  ///   super.dispose();
  ///   _controller?.removeListener(_scrolllistener);
  ///   _controller?.dispose();
  /// }

  ///_scrolllistener() {
//    if (
////    _controller.offset <= _controller.position.minScrollExtent &&
////        !_controller.position.outOfRange &&
//        _controller.position.userScrollDirection.index == 1 && _controller.d) {
//      print(_controller.position.userScrollDirection.index);
//    } else
//      print(_controller.position.userScrollDirection.index);

  //this code listens to scroll notification to add or remove
  //elevation from appBar
  // double currentelevation = _controller.offset > 1 ? targetElevation : 0;
  /// if (currentelevation != elevation) {
  ///      print(elevation);     this is used to print out the value before
  ///      updated
  /// setState(() {
  /// elevation = currentelevation;

  ///       print(elevation);  to print out value after update
  ///});
  ///}
  /// }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_backspace,
            color: Theme.of(context).primaryColor,
          ),
        ),
        title: Text(
          'Services Page',
          style: Theme.of(context)
              .textTheme
              .headline4
              .copyWith(fontSize: 21, color: Colors.white),
        ),
        key: appbarkey,
        // elevation: elevation,
        backgroundColor: kSecondaryColor,
      ),
      body: Container(
        height: size.height,
        width: size.width,
        margin: EdgeInsets.symmetric(horizontal: kDeffaultpadding / 3),
        // color: Colors.white,
        color: Color(0xFFE6E8F5),
        child: ServicesList(

            ///controler: _controller,
            ),
      ),
    );
  }
}
