import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_store_1/widgets/on_boarding_content.dart';
import 'package:smart_store_1/widgets/page_view_indecator.dart';
class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;
  int _currentPage =0;
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    _pageController=PageController();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 40.h,),
            Expanded(

              child: Stack(
                children: [
                  PageView(
                    controller: _pageController,
                    onPageChanged: (int currentPage){
                      setState(()=> _currentPage=currentPage);
                    },
                    physics: const BouncingScrollPhysics(),
                    children: [

                      OnBoardingContent(img:'on1'),
                      OnBoardingContent(img:'on2'),
                      OnBoardingContent(img:'on3'),
                      OnBoardingContent(img:'on4'),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 355.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        PageViewIndecator(isCurrentPage: _currentPage==0),
                        PageViewIndecator(isCurrentPage: _currentPage==1),
                        PageViewIndecator(isCurrentPage: _currentPage==2),
                        PageViewIndecator(isCurrentPage: _currentPage==3),

                      ],

                    ),
                  ),
                ],

              ),
            ),

            SizedBox(height:80.h,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 36.w),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  primary:  Color(0xFF7530FF),

                  minimumSize: Size(double.infinity, 55.h),
                ),
                onPressed: (){
                  Navigator.pushReplacementNamed(context, '/LogAndSign');
                }, child: Text('SKIP',style:GoogleFonts.poppins(
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
                color: Colors.white,

              ),

              ),
              ),
            ),
            SizedBox(height:38.h,),
          ],
        ),
      ),

    );
  }
}



