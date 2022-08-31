import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_store_1/model/grid_view_item.dart';
class FavoriteScreen extends StatefulWidget {
 const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  final List<GridViewItem> _fav = <GridViewItem>[
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
        img: 'images/h9.png',
        title: 'Pink lipstick',
        price: '\$ 15.00 ',
        rate: '4.2'),
    GridViewItem(
        img: 'images/h10.png',
        title: 'node lipstick',
        price: '\$ 20.50 ',
        rate: '3.9'),
    GridViewItem(
        img: 'images/l6.png',
        title: 'sport sneakers',
        price: '\$ 80.99 ',
        rate: '3.7'),
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
            padding: EdgeInsets.symmetric(
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
                hintText: 'Favorite Product ',
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 8,
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.w,
                    mainAxisSpacing: 20.h,
                    mainAxisExtent: 290.h
                  // childAspectRatio: 1.63

                ),
                itemBuilder: (context, index) {
                  return Container(
                      margin:
                      EdgeInsetsDirectional.only(end: index != 3 ? 10.h : 0),
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
                              height: 170,
                              width: 167,
                              child: Stack(children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    _fav[index].img,
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.favorite),
                                    color: Colors.red)
                              ]),
                            ),
                            Text(
                              _fav[index].title,
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
                                    Text(_fav[index].price),
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
                                    Text(_fav[index].rate),
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
