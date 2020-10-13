import 'package:flutter_modular/flutter_modular.dart';

import 'mainfood_page.dart';

class MainFoodModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers =>
      [ModularRouter(Modular.initialRoute, child: (_, args) => MainFoodPage())];
}
