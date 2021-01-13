import 'package:flutter_modular/flutter_modular.dart';
import 'package:foood_app/modules/search/search_page.dart';

class SearchModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers =>
      [ModularRouter(Modular.initialRoute, child: (_, args) => SearchPage())];
}
