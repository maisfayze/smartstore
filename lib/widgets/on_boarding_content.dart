import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({
    Key? key,
    required this.img,
  }) : super(key: key);
 final String img;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('images/$img.png',
          height: 408.h,
          width: 302.w
          ,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 60.w,vertical: 20.h),
          child: Column(
            children: [
              Text('We promise comfort',style:GoogleFonts.poppins(
                fontSize: 25.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black,

              ),
              ),
              SizedBox(height: 20.h,),
              Text('We offers best comfort product for you and your family', textAlign:TextAlign.center,style:GoogleFonts.poppins(
                fontSize: 16.sp,
                fontWeight: FontWeight.w300,
                color: Colors.black,

              ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
