import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:foood_app/helpers/app_theme.dart';
import 'package:foood_app/helpers/assets_helper.dart';
import 'package:foood_app/helpers/routes.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 4),
      () => Modular.to.pushReplacementNamed(Routes.loginPage),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppTheme.primaryColor,
        body: Center(
          child: Image.asset(
            AssetsHelper.logoLogin,
            fit: BoxFit.cover,
          ),
        ));
  }
}
