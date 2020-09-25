import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:foood_app/helpers/routes.dart';
import 'package:foood_app/modules/home/home_module.dart';
import 'package:foood_app/modules/splash/splash.module.dart';

import 'file:///D:/flutterApps/foood_app/lib/modules/app/app_widget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [];

  @override
  Widget get bootstrap => AppWidget();

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: SplashModule()),
        // ModularRouter(Routes.loginPage, module: LoginModule()),
        ModularRouter(Routes.homePage, module: HomeModule())
      ];
}
