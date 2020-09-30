import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foood_app/helpers/app_theme.dart';
import 'package:foood_app/helpers/constant.dart';
import 'package:foood_app/helpers/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
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
                Navigator.pushReplacementNamed(context, Routes.homePage);
              },
            ),
            ListTile(
              title: Text(
                'الاقسام',
                style: GoogleFonts.cairo(color: AppTheme.fontColor),
              ),
              onTap: () {
                Navigator.pushNamed(context, Routes.categoriesPage);
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
            child: ListView.builder(
              itemCount: Constants.categories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Constants.categories[index],
                          style: GoogleFonts.cairo(
                              color: selectedIndex == index
                                  ? AppTheme.fontColor
                                  : Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          height: 3,
                          width: 30,
                          color: selectedIndex == index
                              ? AppTheme.primaryColor
                              : Colors.grey,
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            flex: 10,
            child: Text('hello'),
          )
        ],
      ),
    );
  }
}
