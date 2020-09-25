import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:foood_app/helpers/app_theme.dart';
import 'package:foood_app/helpers/assets_helper.dart';
import 'package:foood_app/helpers/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 5),
      () => Modular.to.pushReplacementNamed(Routes.homePage),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primaryColor,
      body: Column(
        children: [
          Image.asset(
            AssetsHelper.logo,
          ),
          Text(
            'اكلة     \nلذيذة\n      وشهية ',
            style: GoogleFonts.abrilFatface(
                color: AppTheme.fontColor, fontSize: 30),
          )
        ],
      ),
    );
  }
}
