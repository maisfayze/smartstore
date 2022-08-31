import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingItem extends StatelessWidget {
   SettingItem({
    Key? key,
   required this.title,
   required this.icon,
     required this.onActionPressed,
     this.nav ='',
  }) : super(key: key);
final String title ;
final IconData icon   ;
String? nav;
void Function() onActionPressed =(){};
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(top: 20.h,end: 20.w,start: 20.w),
      height:80.h,

      decoration: BoxDecoration(

        border: Border.all(color: Color(0xFFE9E9EC), width: 2.w),
        color:Color(0xFFE9E9EC),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 20.w,right: 10.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 15.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,

                children: [

                  Text(
                    title,
                    style: GoogleFonts.poppins(
                      color: Color(0xFF7530FF),
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp,
                    ),
                  ),
                  SizedBox(height: 5.h,),

                ],
              ),
            ),
            Spacer(),
            IconButton(onPressed: (){
              Navigator.pushNamed(context, '$nav' );
              onActionPressed;
            }, icon:   Icon(icon),),
          ],
        ),
      ),
    );
  }
}