import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_store_1/model/grid_view_item.dart';

import '../../model/categories.dart';
import '../../widgets/page_view_indecator.dart';
import '../../widgets/page_view_product.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen>
    with SingleTickerProviderStateMixin {
  late PageController _pageController;
  int _currentPage = 0;
  double _rating = 0;
  late TabController _tabController;
  List<String> _img = <String>[
    'images/21.png',
    'images/2.png',
    'images/23.png',
  ];
  final List<GridViewItem> _items = <GridViewItem>[
    GridViewItem(
        img: 'images/123 (1).png',
        title: 'Pink lipstick',
        price: '\$ 15.00 ',
        rate: '4.2'),
    GridViewItem(
        img: 'images/c83.png',
        title: 'Eyeshadow',
        price: '\$30.40 ',
        rate: '4.6'),
    GridViewItem(
        img: 'images/mf.png',
        title: 'foundation and powder',
        price: '\$ 56.00 ',
        rate: '3.8'),
    GridViewItem(
        img: 'images/makeuptools.png',
        title: 'Make up Tools',
        price: '\$ 121.99 ',
        rate: '4.8'),
    GridViewItem(
        img: 'images/m1.png',
        title: 'Make Up Package',
        price: '\$ 150.00 ',
        rate: '3.7'),
  ];

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    _tabController = TabController(length: 2, vsync: this);

    _pageController = PageController(viewportFraction: .8, initialPage: 1);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    _tabController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          //title
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 37,
            ),
            child: TextField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                hintStyle: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold),
                hintText: 'LipStick',
              ),
            ),
          ),

         //pageview
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                SizedBox(
                  height: 190,
                  width: 500,
                  child: PageView.builder(
                      controller: _pageController,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsetsDirectional.only(
                              end: index != 3 ? 10 : 0),
                          child: Center(
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0xFFE9E9EC), width: 1),

                                color: const Color(0xFF7530FF),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      _img[index],
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          DecoratedBox(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40), topLeft: const Radius.circular(40),
              bottomRight: Radius.circular(40),bottomLeft: Radius.circular(40)),
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
                height: 350.h,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Red lipstick',
                          style: GoogleFonts.poppins(
                              fontSize: 20.sp, fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        Text(
                          '\$26',
                          style: GoogleFonts.poppins(
                            fontSize: 20.sp,
                            color: Colors.green,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'from Makeup category',
                          style: GoogleFonts.poppins(
                            fontSize: 14.sp,
                            color: Colors.black54,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '%40 off  ',
                          style: GoogleFonts.poppins(
                            fontSize: 14.sp,
                            color: Colors.red,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          '\$30',
                          style: GoogleFonts.poppins(
                            fontSize: 14.sp,
                            color: Colors.black54,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rating $_rating',
                          style: GoogleFonts.poppins(
                              fontSize: 16.sp, fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        RatingBar.builder(
                          initialRating: 1,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 25,
                          // itemPadding: EdgeInsets.symmetric(  horizontal: 4.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          updateOnDrag: true,
                          onRatingUpdate: (rating) {
                            setState(() {
                              this._rating = rating;
                            });
                            print(rating);
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    TabBar(
                      indicatorColor: const Color(0xFF7530FF),
                      unselectedLabelColor: Colors.black,
                      labelColor: const Color(0xFF7530FF),
                      labelPadding: const EdgeInsets.all(8),
                      labelStyle: GoogleFonts.poppins(
                          fontSize: 14.sp, fontWeight: FontWeight.bold),
                      tabs: [
                        const Text('Product Info'),
                        const Text('Product features'),
                      ],
                      controller: _tabController,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Expanded(
                      child: TabBarView(
                          physics: const BouncingScrollPhysics(),
                          controller: _tabController,
                          children: [
                            Text(
                              'Lorem Ipsum has bedeng  took a galley of type and very goo scrambled specimen book',
                              style: GoogleFonts.poppins(
                                fontSize: 14.sp,
                              ),
                            ),
                            Text(
                              'Lorem Ipsum has n aning tih unknown  it tomake a type specimen book',
                              style: GoogleFonts.poppins(
                                fontSize: 14.sp,
                              ),
                            ),
                          ]),
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            primary: const Color(0xFF7530FF),
                            minimumSize: Size(50.w, 50.h),
                          ),
                          onPressed: () {},
                          child: Text(
                            'add to favourite',
                            style: GoogleFonts.poppins(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const Spacer(),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            primary: const Color(0xFF7530FF),
                            minimumSize: Size(50.w, 50.h),
                          ),
                          onPressed: () {},
                          child: Text(
                            'add to Cart',
                            style: GoogleFonts.poppins(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],

                    ),

                  ],

                ),

              ),

            ),

          ),

          ///////////////////////////////////////////////////////
          SizedBox(
            height: 20.h,

          ),
          //////////////////////////////////////////////////////////////////////////////////////////////////////////
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Related product',
              style: GoogleFonts.poppins(
                color: Color(0xFF2D2E49),
                fontWeight: FontWeight.w500,
                fontSize: 20.sp,
              ),
            ),
          ),

          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
            child: SizedBox(
              height:300.h,
              child: GridView.builder(

                  physics: BouncingScrollPhysics(),
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      crossAxisSpacing: 10.h,
                      mainAxisSpacing: 20.w,
                      mainAxisExtent: 190
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
                            top: 20,
                            left: 20,
                            right: 20,
                          ),
                          child: Column(
                            children: [
                              Container(

                                height: 170.h,
                                width: 167.w,
                                child: Stack(children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      _items[index].img,
                                    ),
                                  ),

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
                             Row(
                               mainAxisAlignment: MainAxisAlignment.center,
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
          ),
        ],

      ),

    );
  }
}
