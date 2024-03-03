import 'package:flutter/widgets.dart';

class CreateLeftRoute extends PageRouteBuilder{
  final Widget widget;
  CreateLeftRoute(this.widget) : super(pageBuilder: (context,animation,secondaryAnimation) => widget,
  transitionDuration: Duration(milliseconds: 300),
  transitionsBuilder: (context,animation,secondaryAnimation,child) {
    var begin = Offset(1.0, 0.0);
    var end = Offset.zero;
    var curve  = Curves.ease;
    var tween = Tween(begin: begin , end: end).chain(CurveTween(curve: curve));
    return SlideTransition(position: animation.drive(tween),
    child: child,
    );
  }
  );
}