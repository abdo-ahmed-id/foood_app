import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:foood_app/helpers/routes.dart';
import 'package:foood_app/modules/categories/categories_module.dart';
import 'package:foood_app/modules/categories/drinks/drinks_module.dart';
import 'package:foood_app/modules/categories/hot_drinks/drinks_module.dart';
import 'package:foood_app/modules/categories/mainfood/mainfood_module.dart';
import 'package:foood_app/modules/categories/roast/roast_module.dart';
import 'package:foood_app/modules/categories/soap_and_salad/soap_and_salad_module.dart';
import 'package:foood_app/modules/categories/sweetes/sweets_module.dart';
import 'package:foood_app/modules/component/component_module.dart';
import 'package:foood_app/modules/home/home_module.dart';
import 'package:foood_app/modules/login/login_module.dart';
import 'package:foood_app/modules/search/search_module.dart';
import 'package:foood_app/modules/signup/signup_module.dart';
import 'package:foood_app/modules/splash/splash.module.dart';

import 'app_widget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [];

  @override
  Widget get bootstrap => AppWidget();

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: SplashModule()),
        ModularRouter(Routes.loginPage, module: LoginModule()),
        ModularRouter(Routes.homePage, module: HomeModule()),
        ModularRouter(Routes.categoriesPage, module: CategoriesModule()),
        ModularRouter(Routes.signUpPage, module: SignUpModule()),
        ModularRouter(Routes.saladPage, module: SaladModule()),
        ModularRouter(Routes.sweetsPage, module: SweetsModule()),
        ModularRouter(Routes.drinksPage, module: DrinksModule()),
        ModularRouter(Routes.hotDrinksPage, module: HotDrinksModule()),
        ModularRouter(Routes.roastPage, module: RoastModule()),
        ModularRouter(Routes.mainFoodPage, module: MainFoodModule()),
        ModularRouter(Routes.searchPage, module: SearchModule()),
        ModularRouter(Routes.componentPage, module: ComponentModule()),
      ];
}
