import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presention/widgets/book_rating.dart';
import 'package:bookly/features/home/presention/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presention/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

import 'price_and_preview.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          SafeArea(child: CustomBookDetailsAppBar()),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2, vertical: 43),
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
          SizedBox(height: 36),
          PriceAndPreview(),
        ],
      ),
    );
  }
}
