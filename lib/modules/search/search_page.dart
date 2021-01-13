import 'package:flutter/material.dart';
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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 20,
          ),
          Text(
            'اظهر النتائج حسب:    ',
            style: GoogleFonts.cairo(fontSize: 20, fontWeight: FontWeight.bold),
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
              ),
              // DropdownButton(
              //   items: kinds
              //       .map(
              //         (kind) => DropdownMenuItem(
              //           value: kind,
              //           child: Text(kind),
              //         ),
              //       )
              //       .toList(),
              //   onChanged: (val) {
              //     setState(() {
              //       selectedKind = val;
              //     });
              //   },
              //   value: selectedKind,
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
