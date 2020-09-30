import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foood_app/helpers/app_theme.dart';
import 'package:foood_app/helpers/assets_helper.dart';
import 'package:foood_app/helpers/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DrawerHeader(),
            ListTile(
              title: Text(
                'الرئسية',
                style: GoogleFonts.cairo(color: AppTheme.fontColor),
              ),
              onTap: () {
                Navigator.pushNamed(context, Routes.homePage);
              },
            ),
            ListTile(
              title: Text(
                'الاقسام',
                style: GoogleFonts.cairo(color: AppTheme.fontColor),
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, Routes.categoriesPage);
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
                Navigator.pushReplacementNamed(context, Routes.loginPage);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: AppTheme.primaryColor,
        title: Text(
          'القائمة ',
          style: GoogleFonts.cairo(
              fontSize: 20,
              letterSpacing: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: PageView(
                children: [
                  Column(
                    children: [
                      Image.asset(AssetsHelper.image_1),
                      Text(
                        'BreakFast',
                        style: GoogleFonts.cairo(
                            fontSize: 20,
                            letterSpacing: 10,
                            color: AppTheme.fontColor,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(AssetsHelper.image_3),
                      Text(
                        'Lunch',
                        style: GoogleFonts.cairo(
                            fontSize: 20,
                            letterSpacing: 10,
                            color: AppTheme.fontColor,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(AssetsHelper.image_2),
                      Text(
                        'Dinner',
                        style: GoogleFonts.cairo(
                            fontSize: 20,
                            letterSpacing: 10,
                            color: AppTheme.fontColor,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Divider(
            height: 10,
            color: Colors.grey,
            thickness: 5,
          ),
          Expanded(
            flex: 2,
            child: ListView.builder(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              itemCount: 7,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 10,
                    child: Text(
                      'HELLO',
                      style: TextStyle(letterSpacing: 10),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      shape: BoxShape.rectangle,
                      color: AppTheme.primaryColor,
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            flex: 7,
            child: Text('hello'),
          )
        ],
      ),
    );
  }
}
