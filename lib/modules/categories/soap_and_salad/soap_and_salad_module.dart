import 'package:flutter_modular/flutter_modular.dart';
import 'package:foood_app/modules/categories/soap_and_salad/soap_and_salad_page.dart';

class SaladModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers =>
      [ModularRouter(Modular.initialRoute, child: (_, args) => SaladPage())];
}
