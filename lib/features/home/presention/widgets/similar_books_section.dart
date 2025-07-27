import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presention/widgets/similar_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            'You can also like',
            style: Styles.textStyle14.copyWith(
              fontWeight: FontWeight.w600,
            ),
        ),
        SizedBox(height: 16),
        SimilarListView(),
        SizedBox(height: 40),
      ],
    );
  }
}