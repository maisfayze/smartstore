import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'About US',
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
      body: ListView(


        children: [

          Image.asset('images/Group 36216.png',alignment: Alignment.center),

          DecoratedBox(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40), topLeft: const Radius.circular(40),

                 ),
              color: Colors.white,
              boxShadow: [
                const BoxShadow(
                  blurRadius: 15,
                  color: Colors.black26,
                  offset: Offset(10, 5),
                ),
              ],
            ),
            child: Padding(
              padding:
              const EdgeInsets.only(left: 30, bottom: 40, right: 30, top: 40),
              child: SizedBox(
                height: 550.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(

                      'About Wearly',
                      style: GoogleFonts.poppins(
                        color: Color(0xFF7530FF),
                          fontSize: 25.sp,
                          fontWeight: FontWeight.bold
                      ),

                    ),

                    SizedBox(
                      height: 10.h,
                    ),
                    Text('Wearly is a mobile professional eCommerce UI Kit built to help creators, entrepreneurs and developers construct their own shop. It includes 100 high quality and pixel perfect screens. Clean and modern look, well organized layers, and detailed structure make wearly ideal solution for eCommerce purposes.',
                    style: GoogleFonts.poppins(
                      fontSize: 18.sp,
                    ),

                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text('If you need help or you have any questions, feel free to contact me by email.', style: GoogleFonts.poppins(
                      fontSize: 18.sp,
                    ),),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text('app@wearly.com', style: GoogleFonts.poppins(
                      fontSize: 18.sp,
                      fontWeight:FontWeight.bold,
                      color: Colors.red,
                    ),)
                  ],

                ),

              ),

            ),

          ),




        ],
      ),
    );

  }
}
