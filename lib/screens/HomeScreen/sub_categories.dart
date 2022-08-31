import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_store_1/model/categories.dart';
class SubCategories extends StatefulWidget {
  const SubCategories({Key? key}) : super(key: key);

  @override
  State<SubCategories> createState() => _SubCategoriesState();
}

class _SubCategoriesState extends State<SubCategories> {
  final List<Categories> _categories =<Categories>[
    Categories(img: 'images/s3.png', title: 'lipstick'),
    Categories(img: 'images/s4.png', title: 'EyeShadow'),
    Categories(img: 'images/s1.png', title: 'Foundation'),
    Categories(img: 'images/s2.png', title: 'Blusher'),

    Categories(img: 'images/s5.png', title: 'Brushes'),



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
            padding: EdgeInsets.symmetric(horizontal: 37.w,),
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
                    fontSize: 24.sp,
                    fontWeight:FontWeight.bold
                ),
                hintText: 'MakeUp Categories',),),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.w),
            child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount:5,
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
                      height: 103.h,
                      width:303.w,
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
                                fontSize: 16.sp,
                              ),
                            ),
                            Spacer(),
                            IconButton(onPressed: (){
                              Navigator.pushNamed(context, '/ProductScreen');

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
