import 'package:flutter_modular/flutter_modular.dart';
import 'package:foood_app/modules/categories/drinks/drinks_page.dart';

class DrinksModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers =>
      [ModularRouter(Modular.initialRoute, child: (_, args) => DrinksPage())];
}
