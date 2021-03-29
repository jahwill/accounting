import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';

class AnimateSinglePage extends PageRouteBuilder {
  final gotoPage;
  final transitiontype;
  final Duration reverseduration;

  AnimateSinglePage({this.reverseduration, this.transitiontype, this.gotoPage})
      : super(
          opaque: false,
          barrierDismissible: true,
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              gotoPage,
          reverseTransitionDuration:
              reverseduration ?? Duration(milliseconds: 700),
          transitionDuration: Duration(milliseconds: 900),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SharedAxisTransition(
                animation: animation,
                secondaryAnimation: secondaryAnimation,
                child: child,
                transitionType:
                    transitiontype ?? SharedAxisTransitionType.horizontal);
//            return SlideTransition(
//              position: new Tween<Offset>(
//                begin: const Offset(0.0, 0.0),
//                end: Offset(0.0, 0.0),
//              ).animate(animation),
//              child: child,
//            );
          },
        );
}
