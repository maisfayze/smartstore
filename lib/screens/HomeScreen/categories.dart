import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_store_1/model/categories.dart';

class CategoriesList extends StatefulWidget {
const CategoriesList({Key? key}) : super(key: key);

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  final List<Categories> _categories =<Categories>[

    Categories(img: 'images/c8.png', title: 'Make Up'),
    Categories(img: 'images/c1.png', title: 'Travel '),
    Categories(img: 'images/c2.png', title: 'Sunglasses'),
    Categories(img: 'images/c3.png', title: 'Sneakers'),
    Categories(img: 'images/c9.png', title: 'Hoodies'),
    Categories(img: 'images/c10.png', title: 'formal'),
    Categories(img: 'images/c4.png', title: ' Accessories'),
    Categories(img: 'images/c11.png', title: 'Dresses '),
    Categories(img: 'images/c6.png', title: 'Shoes'),
    Categories(img: 'images/c7.png', title: 'Baby clothes'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          //search && Category Title
          SizedBox(height: 10.h,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 37.w,),
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
                    color:Colors.black,
                    fontSize: 24,
                    fontWeight:FontWeight.bold
                ),
                hintText: 'Categories',),),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.w),
            child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    crossAxisSpacing: 20.w,
                    mainAxisSpacing: 37.h,
                    mainAxisExtent: 103.h
                  // childAspectRatio: 1.63
                ),
                itemBuilder: (context, index) {
                  return Container(
                      margin:
                      EdgeInsetsDirectional.only(bottom: index != 10 ? 10 : 0),
                      height: 103,
                      width:303,
                      decoration: BoxDecoration(

                        border: Border.all(
                            color: Color(0xFFE9E9EC), width: 1.w),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 1,color: Colors.black26,
                          ),],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 30,  right: 20,),
                        child: Row(
                          children: [
                            Container(
                              height:70.h,
                              width: 70.w,

                              child: ClipRRect(

                                  borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  _categories[index].img,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              _categories[index].title,
                              style: GoogleFonts.poppins(
                                color: Color(0xFF7530FF),
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            Spacer(),
                            IconButton(onPressed: (){
                          Navigator.pushNamed(context, '/SubCategories');
                            }, icon: Icon(Icons.arrow_forward_ios,size: 18,color:Color(0xFF7530FF),))
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


