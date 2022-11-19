import 'package:flutter/material.dart';

class BookTile extends StatelessWidget {
  final String bookImagePath;
  final String bookName;
  final String bookAuthor;
  final String bookPrice;

  const BookTile(
      {Key? key,
      required this.bookImagePath,
      required this.bookName,
      required this.bookAuthor,
      required this.bookPrice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.only(left: 25, top: 50),
      child: Row(
        children: [
          Image(
            image: AssetImage(bookImagePath),
            width: 72,
            height: 106,
            fit: BoxFit.contain,
          ),
          const SizedBox(
            width: 26,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                bookName,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, fontFamily: 'Poppins'),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                bookAuthor,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey, fontFamily: 'Poppins'),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                bookPrice,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, fontFamily: 'Poppins'),
              ),
              const SizedBox(
                height: 13,
              ),
              stars()
            ],
          )
        ],
      ),
    ));
  }

  Row stars() {
    return Row(
      children: const [
        Image(image: AssetImage('assets/images/Star 1.png')),
        Image(image: AssetImage('assets/images/Star 1.png')),
        Image(image: AssetImage('assets/images/Star 1.png')),
        Image(image: AssetImage('assets/images/Star 1.png')),
        Image(image: AssetImage('assets/images/Star 5.png')),
      ],
    );
  }
}
