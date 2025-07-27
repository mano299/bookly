import 'package:bookly/features/home/presention/widgets/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';

import 'book_details_section.dart';
import 'price_and_preview.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

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
              BookDetailsSection(),
              SizedBox(height: 36),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 38.0),
                child: PriceAndPreview(),
              ),
              SizedBox(height: 48),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: SimilarBooksSection(),
              ),
            ],
          ),
        )
      ],
    );
  }
}

