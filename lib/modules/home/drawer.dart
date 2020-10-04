import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:foood_app/helpers/app_theme.dart';
import 'package:foood_app/helpers/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DrawerHeader(
            child: null,
            decoration: BoxDecoration(color: AppTheme.primaryColor),
          ),
          ListTile(
            title: Text(
              'الرئسية',
              style: GoogleFonts.cairo(color: AppTheme.fontColor),
            ),
            onTap: () {
              Modular.to.pushReplacementNamed(Routes.homePage);
            },
          ),
          ListTile(
            title: Text(
              'الاقسام',
              style: GoogleFonts.cairo(color: AppTheme.fontColor),
            ),
            onTap: () {
              Modular.to.pushNamed(Routes.categoriesPage);
            },
          ),
          ListTile(
            title: Text(
              'البحث',
              style: GoogleFonts.cairo(color: AppTheme.fontColor),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'المكونات',
              style: GoogleFonts.cairo(color: AppTheme.fontColor),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'تسجيل الخروج',
              style: GoogleFonts.cairo(color: AppTheme.fontColor),
            ),
            onTap: () {
              Modular.to.pushReplacementNamed(Routes.loginPage);
            },
          ),
        ],
      ),
    );
  }
}
