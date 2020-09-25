import 'package:flutter/material.dart';
import 'package:foood_app/helpers/app_theme.dart';
import 'package:foood_app/helpers/assets_helper.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppTheme.primaryColor,
          title: Text(
            'FOOD ',
            style: GoogleFonts.cairo(
                fontSize: 20,
                letterSpacing: 10,
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
              flex: 10,
              child: Text('hello'),
            )
          ],
        ));
  }
}
