import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../data/models/book_model/book_model.dart';
import 'book_details_section.dart';
import 'price_and_preview.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: CustomBookDetailsAppBar(),
                ),
              ),
              BookDetailsSection(
                bookModel: bookModel,
              ),
              SizedBox(height: 36),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 38.0),
                child: PriceAndPreview(bookModel: bookModel,),
              ),
              SizedBox(height: 48),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: SimilarBooksSection(
                  bookModel: bookModel,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
