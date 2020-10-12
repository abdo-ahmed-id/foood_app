import 'package:flutter_modular/flutter_modular.dart';
import 'package:foood_app/modules/signup/signup_page.dart';

class SignUpModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers =>
      [ModularRouter(Modular.initialRoute, child: (_, args) => SignUpPage())];
}
