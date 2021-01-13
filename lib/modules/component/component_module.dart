import 'package:flutter_modular/flutter_modular.dart';
import 'package:foood_app/modules/component/compoent_page.dart';

class ComponentModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => ComponentPage())
      ];
}
