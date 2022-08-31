import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_store_1/model/cart.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<CartItem> _cart = <CartItem>[
    CartItem(
      numOfItem: 1,
      id: 3,
      title: 'Red Hoodies',
      images: 'images/c9.png',
      price: '\$80.9',
      rating: 4.3,
    ),
    CartItem(
      numOfItem: 2,
      id: 4,
      title: 'Baby clothes',
      images: 'images/c7.png',
      price: '\$16.5',
      rating: 4.5,
    ),
    CartItem(
      numOfItem: 2,
      id: 5,
      title: 'EyeShadow',
      images: 'images/c8.png',
      price: '\$26.5',
      rating: 4.5,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'My Cart',
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: ListView.builder(
          itemCount: _cart.length,
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Dismissible(
                key: Key(_cart[index].id.toString()),
                direction: DismissDirection.endToStart,
                onDismissed: (direction) {
                  setState(() {
                    _cart.removeAt(index);
                  });
                },
                background: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFE6E6),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Spacer(),
                      Icon(Icons.delete_outline_sharp),
                    ],
                  ),
                ),

                ////////////////////////////////////////////////////////////////////////

                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  height: 110,

                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFE9E9EC), width: 1.w),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Image.asset(_cart[index].images),
                      SizedBox(width: 20),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _cart[index].title,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "${_cart[index].price}",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF7530FF)),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Icon(
                                  Icons.add_box_rounded,
                                  size: 20,
                                  color: Colors.green,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 10,
                                    left: 10,
                                  ),
                                  child: Text(
                                    "x${_cart[index].numOfItem}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.green,
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.remove_circle,
                                  size: 20,
                                  color: Colors.red,
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )),

          ),

        ),

      ),
      
      bottomNavigationBar: Container(

        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 30,
        ),
        height: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -3),
              blurRadius: 20,
              color: Color(0xFFDADADA),
            )
          ],
        ),
        child: Column(

          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10.h,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text.rich(
                  TextSpan(
                    text: "Total Item : ",
                    children: [
                      TextSpan(
                        text: " 5",
                        style: TextStyle(fontSize: 16.sp,  color: Color(0xFF7530FF)),
                      ),
                    ],
                  ),
                ),

              ],
            ),
            SizedBox(height: 10.h,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text.rich(
                  TextSpan(
                    text: "Discount:",
                    children: [
                      TextSpan(
                        text: "  \$66.9",
                        style: TextStyle(fontSize: 16.sp,  color: Color(0xFF7530FF)),
                      ),
                    ],
                  ),
                ),

              ],
            ),
            SizedBox(height: 10.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text.rich(
                  TextSpan(
                    text: "Total price:",
                    children: [
                      TextSpan(
                        text: "  \$166.9",
                        style: TextStyle(fontSize: 16.sp,  color: Color(0xFF7530FF)),
                      ),
                    ],
                  ),
                ),

              ],
            ),
            SizedBox(height: 10.h,),

            SizedBox(
              width: 190.w,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context,  '/CartSubmitted ');
                },
                child: Text("Check Out"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
