import 'package:flutter/material.dart';
import 'package:foood_app/helpers/app_theme.dart';
import 'package:foood_app/modules/categories/drinks/drinks_page.dart';
import 'package:foood_app/modules/categories/hot_drinks/drinks_page.dart';
import 'package:foood_app/modules/categories/roast/roast_page.dart';
import 'package:foood_app/modules/categories/soap_and_salad/soap_and_salad_page.dart';
import 'package:foood_app/modules/categories/sweetes/sweetes_page.dart';
import 'package:google_fonts/google_fonts.dart';

import 'file:///D:/flutterApps/foood_app/lib/modules/categories/mainfood/mainfood_page.dart';

import 'drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        drawer: DrawerPage(),
        appBar: AppBar(
          backgroundColor: AppTheme.primaryColor,
          centerTitle: true,
          title: Text(
            'FOOD',
            style: GoogleFonts.cairo(
                letterSpacing: 10, fontSize: 25, color: Colors.white),
          ),
          bottom: TabBar(
            isScrollable: true,
            labelPadding:
                EdgeInsets.only(left: 18, right: 18, top: 0, bottom: 20),
            unselectedLabelColor: Colors.red,
            labelColor: Colors.black,
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 3,
            tabs: [
              Text(
                'الاطباق الرئيسية',
                style: GoogleFonts.cairo(
                  color: AppTheme.fontColor,
                ),
              ),
              Text(
                'الشوربات والسلطات',
                style: GoogleFonts.cairo(color: AppTheme.fontColor),
              ),
              Text(
                'الحلويات',
                style: GoogleFonts.cairo(color: AppTheme.fontColor),
              ),
              Text(
                'المشروبات',
                style: GoogleFonts.cairo(color: AppTheme.fontColor),
              ),
              Text(
                'المشروبات الساخنة',
                style: GoogleFonts.cairo(color: AppTheme.fontColor),
              ),
              Text(
                'المشويات',
                style: GoogleFonts.cairo(color: AppTheme.fontColor),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            MainFoodPage(),
            SaladPage(),
            SweetsPage(),
            DrinksPage(),
            HotDrinksPage(),
            RoastPage()
          ],
        ),
      ),
    );
  }
}
