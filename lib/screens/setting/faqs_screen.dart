import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../model/faqs.dart';

class FaqsScreen extends StatefulWidget {
  const FaqsScreen({Key? key}) : super(key: key);

  @override
  State<FaqsScreen> createState() => _FaqsScreenState();
}

class _FaqsScreenState extends State<FaqsScreen> {
  final List<Faqs> _faqs = <Faqs>[
    Faqs(question: 'I’m having problems placing an order. What do I do?',
        answer: 'If you are having trouble at any stage of the process, we are happy to help! Call us at 416-755-1100 (toll free 1-800-561-9177) or email us at help@wearly.ca and we will respond in a timely manner.'),
    Faqs(question: 'Can I add to/change or cancel an existing order?', answer: 'Because we aim to provide efficient service and delivery, we like to prepare gifts immediately after orders are placed. Therefore, orders cannot be changed within 48 hours of the shipping date.'),
    Faqs(question: 'Can I checkout with multiple shipping addresses?', answer: 'Yes! You can send multiple baskits to different addresses  in a single web checkout session/transaction'),
    Faqs(question: 'How many people are your gifts for?', answer: 'Many of our clients send our products to offices or groups. As a result, we are often asked what size gourmet baskit is appropriate.'),
    Faqs(question: 'Can I return a product I purchased online?', answer: 'Due to health and safety regulations, we cannot exchange or accept returns on food products. Non-perishable items may be exchanged at our head office. Exchanges are valid for 30 days from the order date and are subject to a 15% restocking fee.'),
    Faqs(question: 'How do I find a specific product?', answer: 'You can use the search function on our website,located at the right of our top menu. Search by keywords, brand names, or categories'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        title:  Text('Faqs',style: GoogleFonts.poppins(
          fontSize: 24.sp,
          color: Colors.black,
        ),),
        leading:
        IconButton(onPressed: () {
          Navigator.pop(context);

        }, icon: Icon(Icons.arrow_back_ios_new)),

      ),
      // body: Padding(
      //   padding: const EdgeInsets.only(left: 10, right:10,top:10,bottom: 10),
      //   child: ListView(
      //     children: [
      //       ExpansionPanelList(
      //         elevation:3,
      //         dividerColor: Colors.indigo,
      //         animationDuration: Duration(seconds: 1),
      //         expansionCallback: (panelIndex, isExpanded) {
      //           setState(()=>
      //           _faqs[panelIndex].isExpanded= !isExpanded,
      //           );
      //         },
      //         children: _faqs.map((e) {
      //           return ExpansionPanel(
      //
      //             backgroundColor: Colors.redAccent.shade100,
      //             isExpanded: e.isExpanded,
      //             canTapOnHeader: true,
      //             headerBuilder: (context, isExpanded) {
      //               return Padding(
      //                   padding: EdgeInsets.symmetric(horizontal: 10),
      //                   child: Row(
      //                       children:[
      //                         Icon(Icons.question_answer),
      //                         SizedBox(width: 10,),
      //                         Text(e.question,style: GoogleFonts.poppins(
      //                           fontWeight: FontWeight.w600,
      //                           fontSize: 18.sp
      //
      //                         ),),
      //
      //                       ]
      //                   ));
      //             },
      //
      //             body: Padding(
      //               padding: EdgeInsets.symmetric(vertical: 20),
      //               child: Container(
      //                 padding: EdgeInsets.symmetric(horizontal: 20),
      //                 child: Text(e.answer
      //                     ,style: GoogleFonts.poppins(
      //                     fontWeight: FontWeight.w600,
      //                     fontSize: 18.sp  ),
      //                 ),
      //
      //                 alignment: AlignmentDirectional.topStart,
      //               ),
      //             ),
      //           );
      //         }).toList(),
      //       )
      //     ],
      //
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft:  Radius.circular(20),
            bottomRight: Radius.circular(20),


        ),
          child: ListView.builder(
            itemCount: _faqs.length,
            itemBuilder: (context, index) {
            return ExpansionTile(
              title: Text(_faqs[index].question,style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),),
            childrenPadding: EdgeInsets.all(20),
              tilePadding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
              textColor: Colors.deepPurple,
              collapsedTextColor: Color(0xFF7530FF),
              collapsedIconColor:  Color(0xFF2D2E49) ,
              collapsedBackgroundColor:  Color(0xFFE9E9EC),
              backgroundColor: Colors.purple[100],
              iconColor: Colors.black,

              expandedAlignment: Alignment.centerLeft,
              leading: Icon(Icons.question_answer),
              children: [

                Text(_faqs[index].answer,style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),),

              ],

            );

          },

          ),
        ),
      ),
    );
  }
}
