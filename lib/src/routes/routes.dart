import 'package:components/src/pages/animated_container.dart';
import 'package:components/src/pages/card_page.dart';
import 'package:flutter/material.dart';

import 'package:components/src/pages/alert_page.dart';
import 'package:components/src/pages/avatar_page.dart';
import 'package:components/src/pages/home_page.dart';

Map <String, WidgetBuilder> getApplicationRoutes(){
  return _routes;
}


final _routes = <String, WidgetBuilder>{
  '/': (BuildContext context) => HomePage(),
  'alert': (BuildContext context) => AlertPage(),
  'avatar': (BuildContext context) => AvatarPage(),
  'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
  'card': (BuildContext context) => CardPage()
};
