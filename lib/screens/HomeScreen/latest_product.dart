import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_store_1/model/grid_view_item.dart';

class LatestProduct extends StatelessWidget {
  LatestProduct({Key? key}) : super(key: key);

  final List<GridViewItem> _items = <GridViewItem>[
    GridViewItem(
        img: 'images/h1.png',
        title: 'Elegant wool suit',
        price: '\$ 85.00 ',
        rate: '4.5'),
    GridViewItem(
        img: 'images/h2.png',
        title: 'White men Thobe',
        price: '\$ 59.50 ',
        rate: '4.3'),
    GridViewItem(
        img: 'images/h3.png',
        title: 'Kids Red Hoodie',
        price: '\$ 35.00 ',
        rate: '4.7'),
    GridViewItem(
        img: 'images/h4.png',
        title: 'Kids Pink t-shirt',
        price: '\$ 20.99 ',
        rate: '4.2'),
    GridViewItem(
        img: 'images/h5.png',
        title: 'Elegant Black dress',
        price: '\$ 85.00 ',
        rate: '4.5'),
    GridViewItem(
        img: 'images/h6.png',
        title: 'Bride dress',
        price: '\$ 500.50 ',
        rate: '4.1'),
    GridViewItem(
        img: 'images/h7.png',
        title: 'Red dress',
        price: '\$ 90.00 ',
        rate: '4.7'),
    GridViewItem(
        img: 'images/h8.png',
        title: 'Black jacket',
        price: '\$ 20.99 ',
        rate: '4.0'),
    GridViewItem(
        img: 'images/h9.png',
        title: 'Pink lipstick',
        price: '\$ 15.00 ',
        rate: '4.2'),
    GridViewItem(
        img: 'images/h10.png',
        title: 'node lipstick',
        price: '\$ 20.50 ',
        rate: '3.9'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          //search && Category Title
          SizedBox(
            height: 10,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(
              horizontal: 37.w,
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
                hintText: 'Latest Product ',
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
                        border: Border.all(color: Color(0xFFE9E9EC), width: 1.w),
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
                                Container(
                                  height:170.h,
                                  width: 167.w,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      _items[index].img,
                                    ),
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.favorite_border_outlined),
                                    color: Colors.red)
                              ]),
                            ),
                            Text(
                              _items[index].title,
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
                                    Text(_items[index].price),
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
                                    Text(_items[index].rate),
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
