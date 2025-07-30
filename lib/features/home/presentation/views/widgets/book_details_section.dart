import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'custom_book_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2, vertical: 21),
          child: CustomBookItem(
            imageUrl: bookModel.volumeInfo.imageLinks!.thumbnail!,
          ),
        ),
        Text(
          bookModel.volumeInfo.title!,
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
        Text(
          bookModel.volumeInfo.authors?[0] ?? '',
          style: Styles.textStyle18.copyWith(
              color: Colors.white.withOpacity(.7),
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 12),
        BookRating(
          pages: bookModel.volumeInfo.pageCount!,
          ratingNums: 4,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ],
    );
  }
}
