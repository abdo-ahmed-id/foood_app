import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:foood_app/helpers/app_theme.dart';
import 'package:foood_app/helpers/assets_helper.dart';
import 'package:foood_app/helpers/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<String> chef = [
    'الشيف',
    'الماكولات البحرية',
    'اكلات اللحوم',
    'الدجاج',
    'المشروبات ',
    'الحلويات',
  ];
  List<String> kinds = [
    'التصنيف',
    'الماكولات البحرية',
    'اكلات اللحوم',
    'الدجاج',
    'المشروبات ',
    'الحلويات',
  ];
  String selectedKind = "التصنيف";
  String selectedChef = 'الشيف';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'البحث',
          style: GoogleFonts.cairo(
              letterSpacing: 10, fontSize: 25, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              '$selectedKind-$selectedChef ',
              style: GoogleFonts.cairo(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.fontColor),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'اظهر النتائج حسب:    ',
                  style: GoogleFonts.cairo(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: [
                    DropdownButton(
                      items: kinds
                          .map(
                            (kind) => DropdownMenuItem(
                              value: kind,
                              child: Text(kind),
                            ),
                          )
                          .toList(),
                      onChanged: (val) {
                        setState(() {
                          selectedKind = val;
                        });
                      },
                      value: selectedKind,
                      style: TextStyle(color: AppTheme.fontColor, fontSize: 16),
                      dropdownColor: Colors.black,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    DropdownButton(
                      items: chef
                          .map(
                            (kind) => DropdownMenuItem(
                              value: kind,
                              child: Text(kind),
                            ),
                          )
                          .toList(),
                      onChanged: (val) {
                        setState(() {
                          selectedChef = val;
                        });
                      },
                      value: selectedChef,
                      style: TextStyle(color: AppTheme.fontColor, fontSize: 16),
                      dropdownColor: Colors.black,
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 7,
                itemBuilder: (BuildContext context, int index) => InkWell(
                  onTap: () {
                    Modular.to.pushNamed(Routes.componentPage);
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'سلطة الفواكة',
                        style: GoogleFonts.cairo(
                            fontSize: 25,
                            color: AppTheme.fontColor,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Image.asset(AssetsHelper.soap),
                        width: double.infinity,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Divider(
                        height: 2,
                        thickness: 5,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
