import 'package:flutter_modular/flutter_modular.dart';
import 'package:foood_app/modules/categories/categories_page.dart';

class CategoriesModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => CategoriesPage()),
      ];
}
