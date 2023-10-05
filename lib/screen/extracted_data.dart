import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExtractedData extends StatelessWidget {
  const ExtractedData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdef1f8),
      body: Center(
        child: Stack(
          children: [
            Container(
                width: 340,
                height: 240,
                child: const Image(image: AssetImage('assets/id.png'))),
            const Positioned.fill(
                child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    Text('الاسم  اميره احمد حلمى ',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text('تاريخ  الميلاد  2002/8/12 ',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text('المحافظه  القاهره ',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text('النوع  انثى ',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            )),
          ],
        ),
      ),
      // Center(
      //   child: Container(
      //     child: Image(image: AssetImage('assets/id.png')),
      //     width: 300,
      //     height: 200,
      //   ),
      // ),
    );
  }
}
