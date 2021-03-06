import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:foood_app/helpers/app_theme.dart';
import 'package:foood_app/helpers/assets_helper.dart';
import 'package:foood_app/helpers/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'الاقسام',
            style: GoogleFonts.cairo(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: AppTheme.primaryColor,
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: ListTile(
                title: Text(
                  'الاطباق الرئيسية',
                  style: GoogleFonts.cairo(
                      fontSize: 20,
                      color: AppTheme.fontColor,
                      fontWeight: FontWeight.bold),
                ),
                leading: Image.asset(AssetsHelper.mainFood),
                onTap: () {
                  Modular.to.pushNamed(Routes.mainFoodPage);
                },
              ),
            ),
            Divider(
              height: 5,
              thickness: 2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: ListTile(
                title: Text(
                  'الشوربات والسلطات',
                  style: GoogleFonts.cairo(
                      fontSize: 20,
                      color: AppTheme.fontColor,
                      fontWeight: FontWeight.bold),
                ),
                leading: Image.asset(AssetsHelper.soap),
                onTap: () {
                  Modular.to.pushNamed(Routes.saladPage);
                },
              ),
            ),
            Divider(
              height: 5,
              thickness: 2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: ListTile(
                title: Text(
                  'الحلويات',
                  style: GoogleFonts.cairo(
                      fontSize: 20,
                      color: AppTheme.fontColor,
                      fontWeight: FontWeight.bold),
                ),
                leading: Image.asset(AssetsHelper.sweet),
                onTap: () {
                  Modular.to.pushNamed(Routes.sweetsPage);
                },
              ),
            ),
            Divider(
              height: 5,
              thickness: 2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: ListTile(
                title: Text(
                  'المشروبات',
                  style: GoogleFonts.cairo(
                      fontSize: 20,
                      color: AppTheme.fontColor,
                      fontWeight: FontWeight.bold),
                ),
                leading: Image.asset(AssetsHelper.drinks),
                onTap: () {
                  Modular.to.pushNamed(Routes.drinksPage);
                },
              ),
            ),
            Divider(
              height: 5,
              thickness: 2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: ListTile(
                title: Text(
                  'المشروبات الساخنة',
                  style: GoogleFonts.cairo(
                      fontSize: 20,
                      color: AppTheme.fontColor,
                      fontWeight: FontWeight.bold),
                ),
                leading: Image.asset(AssetsHelper.hotDrinks),
                onTap: () {
                  Modular.to.pushNamed(Routes.hotDrinksPage);
                },
              ),
            ),
            Divider(
              height: 5,
              thickness: 2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: ListTile(
                title: Text(
                  'المشويات',
                  style: GoogleFonts.cairo(
                      fontSize: 20,
                      color: AppTheme.fontColor,
                      fontWeight: FontWeight.bold),
                ),
                leading: Image.asset(AssetsHelper.badFood),
                onTap: () {
                  Modular.to.pushNamed(Routes.roastPage);
                },
              ),
            ),
          ],
        ));
  }
}
/*
ListView.builder(
itemCount: 6,
itemBuilder: (BuildContext context, int index) {
return Column(
children: [
Padding(
padding: const EdgeInsets.all(8.0),
child: ListTile(
title: Text(
categories[index],
style: GoogleFonts.cairo(
fontSize: 20,
color: AppTheme.fontColor,
fontWeight: FontWeight.bold),
),
leading: FlutterLogo(),
),
),
Divider(
color: Colors.black,
height: 10,
),
],
);
}),
*/
