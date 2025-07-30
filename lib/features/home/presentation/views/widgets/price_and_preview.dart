import 'package:bookly/core/utils/launch_url.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import 'custom_button.dart';

class PriceAndPreview extends StatelessWidget {
  const PriceAndPreview({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            text: 'Free',
            backgroundColor: Colors.white,
            fontWeight: FontWeight.w900,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
          ),
        ),
        Expanded(
          child: CustomButton(
            onPressed: () {
              launchCustomUrl(context, bookModel.volumeInfo.previewLink);
            },
            text: getText(bookModel),
            backgroundColor: Color(0xffEF8262),
            fontWeight: FontWeight.w700,
            textColor: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            fontSize: 16,
          ),
        ),
      ],
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink != null) {
      return 'Preview';
    } else {
      return 'Not Avalible';
    }
  }
}
