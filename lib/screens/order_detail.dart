import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class OrderDetail extends StatelessWidget {
  const OrderDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
        title: Text(
        ' Order Details ',
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
    body:ListView(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          height:180.h,
          width: 295.w,
          decoration: BoxDecoration(

            border: Border.all(color: Color(0xFFE9E9EC), width: 2.w),
            color:Color(0xFF7530FF),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 25.w,right: 10.w),
            child: Row(
              children: [
                Container(
                  height:120.h,
                  width: 120.w,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'images/c8.png',
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(vertical:35.h),
                  child: Column(
                    children: [
                      Text(
                        'EyeShadow',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
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
                              color: Colors.white,
                              size: 20,
                            ),
                            Text(' \$26.5',style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 20.sp,
                            ),),

                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Color(0xFFFFBE00),
                            size: 20,
                          ),
                          Text('4.8',style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20.sp,
                          ),),
                        ],

                      ),

                    ],

                  ),

                ),


              ],
            ),
          ),
        ),

        SizedBox(
          height: 20.h,
        ),
        DecoratedBox(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(40), topLeft: const Radius.circular(40),
            ),
            color: Colors.white,
            boxShadow: [
              const BoxShadow(
                blurRadius: 10,
                color: Colors.black26,
                offset: Offset(3, 5),
              ),
            ],
          ),
          child: Padding(
            padding:
            const EdgeInsets.only(left: 30, bottom: 40, right: 30, top: 40),
            child: SizedBox(
              height: 500.h,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(

                  children: [
                    Row(
                      children: [
                        Text(
                          'EyeShadow',
                          style: GoogleFonts.poppins(
                              fontSize: 22.sp, fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        Text(
                          '\$26.5',
                          style: GoogleFonts.poppins(
                            fontSize: 22.sp,
                            color: Colors.green,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10.h,),
                    Row(
                      children: [
                        Text(
                          'from Makeup category',
                          style: GoogleFonts.poppins(
                            fontSize: 16.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '%40 off  ',
                          style: GoogleFonts.poppins(
                            fontSize: 16.sp,
                            color: Colors.red,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          '\$30',
                          style: GoogleFonts.poppins(
                            fontSize: 16.sp,
                            color: Colors.black54,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Order ID ',
                          style: GoogleFonts.poppins(
                              fontSize: 22.sp, fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        Text(
                          '#12345',
                          style: GoogleFonts.poppins(
                            fontSize: 20.sp,

                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20.h,),
                    Row(
                      children: [
                        Text(
                          'Status',
                          style: GoogleFonts.poppins(
                              fontSize: 22.sp, fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        Text(
                          'Processing',
                          style: GoogleFonts.poppins(
                            fontSize: 20.sp,
                            color:Color(0xFF7530FF),
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],

                    ),
                    SizedBox(height: 20.h,),
                    Row(
                      children: [
                        Text(
                          'Quantity',
                          style: GoogleFonts.poppins(
                              fontSize: 22.sp, fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        Text(
                          '3',
                          style: GoogleFonts.poppins(
                            fontSize: 20.sp,

                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],

                    ),
                    SizedBox(height: 20.h,),
                    Row(
                      children: [
                        Text(
                          'Date',
                          style: GoogleFonts.poppins(
                              fontSize: 22.sp, fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        Text(
                          '20/9/2022-11:30',
                          style: GoogleFonts.poppins(
                            fontSize: 20.sp,

                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],

                    ),
                    SizedBox(height: 20.h,),
                    Row(
                      children: [
                        Text(
                          'Payment',
                          style: GoogleFonts.poppins(
                              fontSize: 22.sp, fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        Text(
                          'OnLine/VisaCard',
                          style: GoogleFonts.poppins(
                            fontSize: 20.sp,

                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],

                    ),
                    SizedBox(height: 20.h,),
                    Row(
                      children: [
                        Text(
                          'Total :',
                          style: GoogleFonts.poppins(
                              fontSize: 22.sp, fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        Text(
                          '\$79.5',
                          style: GoogleFonts.poppins(
                            fontSize: 20.sp,
                            decoration: TextDecoration.underline,
                            color: Color(0xFF7530FF),
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],

                    ),

                    SizedBox(
                      height: 30.h,
                    ),



                  ],

                ),
              ),

            ),

          ),

        ),

        ///////////////////////////////////////////////////////

      ],
    )
    ) ;
  }
}
