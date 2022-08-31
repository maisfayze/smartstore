import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class OrderItem extends StatelessWidget {
  const OrderItem({
    Key? key,
  required this.img,
  required this.title,
  required this.price,
  required this.rate,
    required this.quantity
  }) : super(key: key);
final String img  ;
final String title ;
final String price  ;
final String rate ;
  final String quantity ;

  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.all(10),
      child: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, '/OrderDetail');
        },
        child: Container(
margin: EdgeInsets.symmetric(horizontal: 10.h),
          height:180.h,
          width: 295.w,
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFE9E9EC), width: 2.w),
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 25.w,right: 10.w),
            child: Row(
              children: [
                Container(
                  height:150.h,
                  width: 110.w,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                        img,
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(vertical:40.h),
                  child: Column(
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.poppins(
                          color: Color(0xFF2D2E49),
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(

                          children: [
                            Icon(
                              Icons.sell_rounded,
                              color: Color(0xFF7530FF),
                              size: 18,
                            ),
                            Text(price),

                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Color(0xFFFFBE00),
                            size: 18,
                          ),
                          Text(rate),
                        ],

                      ),

                    ],

                  ),

                ),

                Padding(
                  padding:  EdgeInsets.symmetric(vertical: 15.h),
                  child: Column(

                    children: [
                      TextButton(onPressed: (){}, child:Text('+',style: GoogleFonts.poppins(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.green
                      ),),

                      ),
                      Text(quantity),
                      TextButton(onPressed: (){}, child:Text('-',style: GoogleFonts.poppins(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.red
                      ),),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}