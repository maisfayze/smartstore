import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class NotificationScreen extends StatelessWidget {
  const NotificationScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Notification ',
          style: GoogleFonts.poppins(
            fontSize: 20.sp,
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
          ),
        ),

      ),
      body: Padding(

        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: ListView(

          children: [
            Row(
              children: [
                Text('Today',style: GoogleFonts.poppins(
                  fontSize: 20.sp,
                  color: Color(0xFF43538D),
                  fontWeight: FontWeight.w600,
                ),),
                Spacer(),
                Text('Clear',style: GoogleFonts.poppins(
                  fontSize: 16.sp,
                  color: Color(0xFF8D9AC9),
                  fontWeight: FontWeight.w600,
                ),),

              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.h),
              height:170.h,

              decoration: BoxDecoration(

                border: Border.all(color: Color(0xFFE9E9EC), width: 2.w),
                color:Color(0xFFE9E9EC),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 20.w,right: 10.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black87,
                      radius: 35,
                      child: Image.asset('images/avatar1.png'),
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(vertical:30.h,horizontal: 10.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //\nWe wish you to have a good experience!
                          Padding(
                            padding: EdgeInsetsDirectional.only(top:10.h),
                            child: Text(
                              'Hey!welcome to our app\nYou got a sale !',
                              style: GoogleFonts.poppins(
                                color: Color(0xFF7530FF),
               fontWeight: FontWeight.bold,
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                          SizedBox(height: 10.h,),
                          Text('Just Now',style: GoogleFonts.poppins(
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                          ),),

                        ],
                      ),




                    ),
                  ],
                        ),
                      ),
                    ),

            Container(

              height:170.h,

              decoration: BoxDecoration(

                border: Border.all(color: Color(0xFFE9E9EC), width: 2.w),
                color:Color(0xFFE9E9EC),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 20.w,right: 10.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                 Icon(Icons.verified_user,color: Colors.green,size: 35,),
                    Padding(
                      padding:  EdgeInsets.symmetric(vertical:30.h,horizontal: 10.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //\nWe wish you to have a good experience!
                          Padding(
                            padding: EdgeInsetsDirectional.only(top:15.h),
                            child: Text(
                              'Your password is successfully \nchanged ',
                              style: GoogleFonts.poppins(
                                color: Color(0xFF7530FF),
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                          SizedBox(height: 10.h,),
                          Text('2 hours ago',style: GoogleFonts.poppins(
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                          ),),

                        ],
                      ),


                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40.h,),
            Text('21 AUG,2022',style: GoogleFonts.poppins(
              fontSize: 20.sp,
              color: Color(0xFF43538D),
              fontWeight: FontWeight.w600,
            ),),
            SizedBox(height: 10.h,),

            Container(

              height:170.h,

              decoration: BoxDecoration(

                border: Border.all(color: Color(0xFFE9E9EC), width: 2.w),
                color:Color(0xFFE9E9EC),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 20.w,right: 10.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.notifications_active,color: Colors.amber,size: 40,),
                    Padding(
                      padding:  EdgeInsets.symmetric(vertical:30.h,horizontal: 9.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //\nWe wish you to have a good experience!
                          Padding(
                            padding: EdgeInsetsDirectional.only(top:15.h),
                            child: Text(
                              'Completed your profile to have a \n'
                                  'good experience ',
                              style: GoogleFonts.poppins(
                                color: Color(0xFF7530FF),
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                          SizedBox(height: 10.h,),
                          Text('3 days ago',style: GoogleFonts.poppins(
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                          ),),

                        ],
                      ),


                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.h,),
                  ],
                ),
              ),
            );

  }
}
