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
          child: CustomBookItem(),
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
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ],
    );
  }
}
