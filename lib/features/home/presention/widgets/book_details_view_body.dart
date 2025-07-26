import 'package:bookly/features/home/presention/widgets/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';


class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(child: CustomBookDetailsAppBar()),
        ],
      ),
    );
  }
}