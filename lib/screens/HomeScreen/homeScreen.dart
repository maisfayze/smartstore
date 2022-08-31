import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_store_1/model/categories.dart';
import 'package:smart_store_1/model/grid_view_item.dart';
import 'package:smart_store_1/model/page_view.dart';
import 'package:smart_store_1/widgets/home_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PageController _pageController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(viewportFraction: 0.8, initialPage: 1);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  final List<PageViewSlides> _slids = <PageViewSlides>[
    PageViewSlides(
        img: 'images/pageview1.png',
        title: 'Travel Baggage',
        subTitle: 'Up to 60% off.'),
    PageViewSlides(
        img: 'images/pageview2.png',
        title: 'Sporty shoses',
        subTitle: 'Up to 75% off.'),
    PageViewSlides(
        img: 'images/winter.png',
        title: 'winter clothes',
        subTitle: 'Up to 50% off.'),
    PageViewSlides(
        img: 'images/page33.png',
        title: 'Kids Red Hoodie',
        subTitle: 'Up to 50% off.'),
  ];

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
  ];
  final List<Categories> _categories =<Categories>[
    Categories(img: 'images/c8.png', title: 'Make Up'),

    Categories(img: 'images/c1.png', title: 'Travel suitcases'),
    Categories(img: 'images/c2.png', title: 'Sunglasses'),
    Categories(img: 'images/c4.png', title: 'Head phones'),
    Categories(img: 'images/c5.png', title: 'Ballerina shoes'),
  ];
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

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Welcome to',
                style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold,color: Color(0xFF7530FF)),
              ),


              IconButton(onPressed: (){Navigator.pushNamed(context,  '/Cart');}, icon:Icon(
                Icons.shopping_cart_rounded,
                size: 30,),),







                ],
          ),
          Text(
            'Wearly Shop',
            style: TextStyle(
                fontSize:30.sp, fontWeight: FontWeight.bold, color: Color( 0xFFFFBE00)),
          ),
        SizedBox(height: 20.h,),
        TextField(

        cursorColor: Colors.black,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),

            borderSide: BorderSide(
              color: Colors.black12,
              width: 1.w,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),

            borderSide: BorderSide(
              color: Color(0xFF7530FF),
              width: 1.w,
            ),
          ),
          hintText: 'Search here',),
      ),

          //imageSlider
          SizedBox(
            height: 30.h,
          ),
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              SizedBox(
                height: 180.h,
                child: PageView.builder(
                    controller: _pageController,
                    itemCount: _slids.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsetsDirectional.only(
                            end: index != 3 ? 10 : 0),
                        child: Stack(
                          children: [
                        ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child:
                            Image.asset(
                              _slids[index].img,
                              fit: BoxFit.fill,
                            ),),
                            Padding(
                              padding: const EdgeInsets.all(40),
                              child: Center(
                                  child: Column(
                                children: [
                                  Text(
                                    _slids[index].title,
                                    style: GoogleFonts.poppins(
                                        fontSize: 15.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 20.h),
                                  Text(
                                    _slids[index].subTitle,
                                    style: GoogleFonts.poppins(
                                        fontSize: 16.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),

          HomeSection(title: 'Categories', onPressed: () {
            Navigator.pushNamed(context, '/CategoriesList');
          }),
          SizedBox(
            height: 90.h,
            child: GridView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    crossAxisSpacing: 20.h,
                    mainAxisSpacing: 10.w,
                    mainAxisExtent: 250
                  // childAspectRatio: 1.63
                ),
                itemBuilder: (context, index) {
                  return Container(

                      margin:
                      EdgeInsetsDirectional.only(end: index != 4 ? 10 : 0),
                      height: 90.h,
                      width:250.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFE9E9EC), width: 1.w),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,color: Colors.black26,offset: Offset(3,5),
                          ),],
                        color: Color(0xFF7530FF),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 10,  right: 16,),
                        child: Row(
                          children: [
                            Container(

                              height:70.h,
                              width: 65.w,
                              child: Image.asset(
                                _categories[index].img,
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              _categories[index].title,
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16.sp,
                              ),
                            ),


                          ],
                        ),
                      ));
                }),
          ),
          SizedBox(height: 10.h,),
          HomeSection(title: 'Latest Product ', onPressed: () {
            Navigator.pushNamed(context, '/LatestProduct');
          }),
          SizedBox(height: 10.h,),
          SizedBox(
            height: 325.h,
            child: GridView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    crossAxisSpacing: 20.h,
                    mainAxisSpacing: 10.w,
                    mainAxisExtent: 199
                    // childAspectRatio: 1.63

                    ),
                itemBuilder: (context, index) {
                  return Container(

                      margin:
                          EdgeInsetsDirectional.only(end: index != 3 ? 10 : 0),
                      height: 325,
                      width: 199,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFE9E9EC), width: 1.w),

                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 16, left: 16, right: 16, bottom: 20),
                        child: Column(
                          children: [
                            Container(
                              height: 200.h,
                              width: 167.w,
                              child: Stack(
                                  children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),

                                  child: Image.asset(
                                    _items[index].img,

                                  ),
                                ),
                                   IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_outlined),color:Colors.red)
                              ]
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              _items[index].title,
                              style: GoogleFonts.poppins(
                                color: Color(0xFF2D2E49),
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.sell_rounded,
                                  color: Color(0xFF7530FF),
                                  size: 15,
                                ),
                                Text(_items[index].price),
                                SizedBox(
                                  width: 30.w,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Color(0xFFFFBE00),
                                  size: 15,
                                ),
                                Text(_items[index].rate),
                              ],
                            )
                          ],
                        ),
                      ));
                }),
          ),
          SizedBox(height: 10.h,),
          HomeSection(title: ' Products you may like ', onPressed: () {
            Navigator.pushNamed(context,  '/ProductMayLike');
          }),
          SizedBox(height: 10.h,),
          SizedBox(
            height: 290.h,
            child: GridView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    crossAxisSpacing: 20.h,
                    mainAxisSpacing: 10.w,
                    mainAxisExtent: 199
                  // childAspectRatio: 1.63

                ),
                itemBuilder: (context, index) {
                  return Container(

                      margin:
                      EdgeInsetsDirectional.only(end: index != 3 ? 10 : 0),
                      height: 250.h,
                      width: 199.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFE9E9EC), width: 1.w),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 16, left: 16, right: 16,),
                        child: Column(
                          children: [
                            Container(
                              height: 190.h,
                              width: 110.w,
                              child: Stack(
                                  children: [
                                    Image.asset(
                                      _productYouMayLike[index].img,

                                    ),
                                    IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_outlined),color:Colors.red)
                                  ]
                              ),
                            ),

                            Text(
                              _productYouMayLike[index].title,
                              style: GoogleFonts.poppins(
                                color: Color(0xFF2D2E49),
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.sell_rounded,
                                  color: Color(0xFF7530FF),
                                  size: 15,
                                ),
                                Text(_productYouMayLike[index].price),
                                SizedBox(
                                  width: 30.w,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Color(0xFFFFBE00),
                                  size: 15,
                                ),
                                Text(_productYouMayLike[index].rate),
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
