import 'package:flutter/material.dart';
import 'package:foood_app/helpers/app_theme.dart';
import 'package:foood_app/helpers/assets_helper.dart';
import 'package:google_fonts/google_fonts.dart';

class ComponentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'المكونات',
          style: GoogleFonts.cairo(
              letterSpacing: 10, fontSize: 25, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'سلطة الفواكة',
                style: GoogleFonts.cairo(
                    fontSize: 25,
                    color: Colors.black,
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
              Text(
                'سلطة الفواكة من أطيب وأطعم أنواع الحلويات الخفيفة والبسيطة في التحضير وذات القيمة الغذائية العالية ',
                style: GoogleFonts.cairo(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Icon(
                          Icons.alarm_add,
                          color: AppTheme.fontColor,
                        ),
                        Text(
                          "60 دقيقة\nوقت الطهي",
                          style: TextStyle(color: AppTheme.fontColor),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.cake_sharp,
                          color: AppTheme.fontColor,
                        ),
                        Text(
                          "يكفي ل\nاشخاص",
                          style: TextStyle(color: AppTheme.fontColor),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'المقادير',
                style: GoogleFonts.cairo(
                    fontSize: 25,
                    color: AppTheme.fontColor,
                    fontWeight: FontWeight.bold),
              ),
              Divider(
                height: 2,
                thickness: 5,
                color: AppTheme.fontColor,
              ),
              Text(
                '\nأناناس : 2 كوب (طازج مقطع مكعبات)\nعصير البرتقال : ثلثان الكوب (طازج)'
                '\nأناناس : 2 كوب (طازج مقطع مكعبات)\nعصير البرتقال : ثلثان الكوب (طازج)'
                'أناناس : 2 كوب (طازج مقطع مكعبات)\nعصير البرتقال : ثلثان الكوب (طازج)',
                style: GoogleFonts.cairo(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'طريقة التحضير',
                style: GoogleFonts.cairo(
                    fontSize: 25,
                    color: AppTheme.fontColor,
                    fontWeight: FontWeight.bold),
              ),
              Divider(
                height: 2,
                thickness: 5,
                color: AppTheme.fontColor,
              ),
              Text(
                'اخلطي السكر البني مع عصير البرتقال وعصير الليمون في قدر على نار متوسطة حتى يغلي\nخففي النار واتركي الخليط مدة خمس دقائق حتى يتكاثف\n ازيلي القدر عن النار وأضيفي الفانيلا وحركي واتركي المزيج ليبرد\nعند التقديم اسكبي الفواكة في أطباق صغيرة وقدميها باردة\nعند التقديم اسكبي الفواكة في أطباق صغيرة وقدميها باردة',
                style: GoogleFonts.cairo(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
