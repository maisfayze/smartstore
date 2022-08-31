import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/setting_item.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        title: Text('Settings', style: GoogleFonts.poppins(
          fontSize: 24.sp,
          color: Colors.black,
        ),),
        leading:
        IconButton(onPressed: () {
          Navigator.pop(context);
          },
            icon: Icon(Icons.arrow_back_ios_new)),

      ),

      body: ListView(
        children: [
          Container(
            margin: EdgeInsetsDirectional.only(top: 10.h,end: 20.w,start: 20.w),
            // margin: EdgeInsets.symmetric(vertical: 10.h,horizontal: 20.w),
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
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black87,
                    radius: 25,
                    child: Image.asset('images/avatar1.png'),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 15.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text(
                          'Edward Parker  ',
                          style: GoogleFonts.poppins(
                            color: Color(0xFF7530FF),
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                          ),
                        ),
                        SizedBox(height: 5.h,),
                        Text('EdwardParker@gmail.com',style: GoogleFonts.poppins(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                        ),),

                      ],
                    ),
                  ),
                  Spacer(),
                  IconButton(onPressed: (){
                    Navigator.pushNamed(context, '/Profile');
                  }, icon:   Icon(Icons.edit),),

                ],
              ),
            ),
          ),
          SettingItem(title: 'Edit Mobile Phone', icon: Icons.mobile_friendly,nav: '/EditMobile',onActionPressed: (){}),
          SettingItem(title: 'Change Password', icon: Icons.password,nav:    '/ChangePass',onActionPressed: (){}),
          SettingItem(title: 'FAQs', icon: Icons.question_answer,nav: '/FaqsScreen',onActionPressed: (){}),
          SettingItem(title: 'Viewed products', icon: Icons.view_array_outlined,nav:'/Favorite',onActionPressed: (){}),
          SettingItem(title: 'My Order ', icon: Icons.list_alt,nav: '/OrderScreen',onActionPressed: (){}),

          SettingItem(title: 'Addresses', icon: Icons.location_on_outlined ,nav:  '/AddressScreen',onActionPressed: (){}),
          SettingItem(title: 'Contact us', icon: Icons.contact_mail_outlined,nav: '/ContactUs',onActionPressed: (){}),
          SettingItem(title: 'About', icon: Icons.arrow_forward_ios,nav: '/AboutScreen',onActionPressed: (){}),
          SettingItem(title: ' Logout', icon: Icons.logout_rounded,onActionPressed:confirmLogout),

          SizedBox(height: 50.h,),









        ],
      ),
);


  }

  void confirmLogout(){
    showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Confirm logout'),
          content: const Text('Are you sure?'),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Confirm'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}




