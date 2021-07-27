import 'package:flutter/material.dart';
import 'package:professione/pages/404/error.dart';

import 'package:professione/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case overviewPageRoute:
      return _getPageRoute(PageNotFound());
    case driversPageRoute:
      return _getPageRoute(PageNotFound());
    case clientsPageRoute:
      return _getPageRoute(PageNotFound());
    default:
      return _getPageRoute(PageNotFound());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
