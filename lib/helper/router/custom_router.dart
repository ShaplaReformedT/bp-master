import 'package:flutter/material.dart';
import 'package:picsum_gallery/app/features/splash/screen/splash_page.dart';
import 'package:picsum_gallery/helper/data/model/response/banner_response.dart';
import 'package:picsum_gallery/helper/router/route_constants.dart';

import 'not_found_page.dart';

class CustomRouter {
  static Route<dynamic> generatedRoute(RouteSettings settings) {
    ImageModel argument = ImageModel();
    if(settings.arguments != null) {
      argument = settings.arguments as ImageModel;
    }
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashActivity());
      default:
        return MaterialPageRoute(builder: (_) => const NotFoundPage());
    }
  }
}

