import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_store_1/widgets/order_item.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: Text(
          'My Order ',
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
        children: const [
          OrderItem(img: 'images/c8.png', title: 'EyeShadow', price: '\$26.5', rate: '4.8', quantity: '3'),

          OrderItem(img: 'images/c7.png', title: 'Baby clothes', price: '\$16.5', rate: '4.2', quantity: '1'),
          OrderItem(img: 'images/c9.png', title: 'Red Hoodies', price: '\$80.5', rate: '4.8', quantity: '2'),
          OrderItem(img: 'images/c6.png', title: 'Shoes', price: '\$96', rate: '4.8', quantity: '3'),
          OrderItem(img: 'images/l1.png', title: 'lipstick', price: '\$26.5', rate: '4.8', quantity: '3'),


        ],
      )



    );
  }
}


