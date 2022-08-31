import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_store_1/model/grid_view_item.dart';

class ProductMayLike extends StatelessWidget {
  ProductMayLike({Key? key}) : super(key: key);
  final List<GridViewItem> _productYouMayLike = <GridViewItem>[
    GridViewItem(
        img: 'images/p1.png',
        title: 'Yellow T-shirt',
        price: '\$ 25.00 ',
        rate: '4.6'),
    GridViewItem(
        img: 'images/p2.png',
        title: 'Baby Dress',
        price: '\$ 20.40 ',
        rate: '4.2'),
    GridViewItem(
        img: 'images/p3.png',
        title: 'White hat',
        price: '\$ 10.00 ',
        rate: '4.9'),
    GridViewItem(
        img: 'images/p4.png',
        title: 'Black suit',
        price: '\$ 100.99 ',
        rate: '4.7'),
    GridViewItem(
        img: 'images/l1.png',
        title: 'red lipstick',
        price: '\$ 10.00 ',
        rate: '4.2'),
    GridViewItem(
        img: 'images/l2.png',
        title: 'White T-shirt',
        price: '\$ 35.40 ',
        rate: '3.7'),
    GridViewItem(
        img: 'images/l3.png',
        title: 'black bag',
        price: '\$ 90.00 ',
        rate: '4.3'),
    GridViewItem(
        img: 'images/l4.png',
        title: 'Sunglasses',
        price: '\$ 150.99 ',
        rate: '4.2'),
    GridViewItem(
        img: 'images/l5.png',
        title: 'White hat',
        price: '\$ 5.6 ',
        rate: '4.00'),
    GridViewItem(
        img: 'images/l6.png',
        title: 'sport sneakers',
        price: '\$ 80.99 ',
        rate: '3.7'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          //search && Category Title
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(
              horizontal: 37.h,
            ),
            child: TextField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.search_outlined),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                hintStyle: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold),
                hintText: 'Product you may Like',
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.h),
            child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.w,
                    mainAxisSpacing: 20.h,
                    mainAxisExtent: 290
                    // childAspectRatio: 1.63

                    ),
                itemBuilder: (context, index) {
                  return Container(
                      margin:
                          EdgeInsetsDirectional.only(end: index != 3 ? 10 : 0),
                      height: 325.h,
                      width: 199.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFE9E9EC), width: 1),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 16,
                          left: 16,
                          right: 16,
                        ),
                        child: Column(
                          children: [
                            Container(
                              // decoration: BoxDecoration(
                              //   border: Border.all(color: Color(0xFFE9E9EC), width: 1),
                              //
                              //   color: Colors.white,
                              //   borderRadius: BorderRadius.circular(20),
                              // ),
                              height: 170.h,
                              width: 167.w,
                              child: Stack(children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    _productYouMayLike[index].img,
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.favorite_border_outlined),
                                    color: Colors.red)
                              ]),
                            ),
                            Text(
                              _productYouMayLike[index].title,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                color: Color(0xFF2D2E49),
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                              ),
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.sell_rounded,
                                      color: Color(0xFF7530FF),
                                      size: 15,
                                    ),
                                    Text(_productYouMayLike[index].price),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color(0xFFFFBE00),
                                      size: 15,
                                    ),
                                    Text(_productYouMayLike[index].rate),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ));
                }),
          ),
        ],
      ),
    );
  }
}
