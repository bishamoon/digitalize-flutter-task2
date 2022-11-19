import 'package:flutter/material.dart';
import 'package:task2/book_tile.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  List book = [
    [
      'assets/images/cover1.png',
      'Yves Saint Laurent',
      'Suzy Menkes ',
      r'46.99$'
    ],
    ['assets/images/cover2.png', 'The Book of Signs', 'Rudolf Koch', r'99.99$'],
    [
      'assets/images/cover1.png',
      'Yves Saint Laurent',
      'Suzy Menkes ',
      r'46.99$'
    ],
    ['assets/images/cover2.png', 'The Book of Signs', 'Rudolf Koch', r'99.99$'],
    [
      'assets/images/cover1.png',
      'Yves Saint Laurent',
      'Suzy Menkes ',
      r'46.99$'
    ],
    ['assets/images/cover2.png', 'The Book of Signs', 'Rudolf Koch', r'99.99$'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 43, left: 28),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: const Image(
                          width: 40,
                          height: 40,
                          image: AssetImage('assets/images/profile.png'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 43, left: 5),
                      child: const Text(
                        'Hi,Ali!',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600 , fontFamily: 'Poppins'),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 43, right: 20),
                  child: Image(
                    image: AssetImage('assets/icons/icon1.png'),
                    width: 25,
                    height: 25,
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 50, left: 30),
              child: Text(
                'Book List',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600 , fontFamily: 'Poppins'),
              ),
            ),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: book.length,
                itemBuilder: (context, index) {
                  return BookTile(
                      bookImagePath: book[index][0],
                      bookName: book[index][1],
                      bookAuthor: book[index][2],
                      bookPrice: book[index][3]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
