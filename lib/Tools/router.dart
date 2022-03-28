
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import '../Home/home.dart';
import '../RootPage/root_page.dart';

class Routes {

  static String root = '/';

  static Handler _homeHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
        return RootPage();
      });


  static void configureRoutes(FluroRouter router) {
      router.define(root, handler: _homeHandler);
  }

}