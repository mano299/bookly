import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'custom_book_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2, vertical: 21),
          child: CustomBookItem(imageUrl: 'https://media.istockphoto.com/id/2170879145/photo/close-up-of-man-writing-in-a-notebook-at-a-desk.jpg?s=2048x2048&w=is&k=20&c=M9BUhFRd1b2yNbW73t55vUr2usk1841Wk35HXA2DMZE=',),
        ),
        Text('The Jungle Book', style: Styles.textStyle30),
        Text(
          'Rudyard Kipling',
          style: Styles.textStyle18.copyWith(
              color: Colors.white.withOpacity(.7),
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 12),
        BookRating(
          pages: 22,
          ratingNums: 2,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ],
    );
  }
}
