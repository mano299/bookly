import 'package:bookly/core/utils/custom_error_widger.dart';
import 'package:bookly/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarListView extends StatelessWidget {
  const SimilarListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: CustomBookItem(
                  imageUrl:
                      'https://media.istockphoto.com/id/2170879145/photo/close-up-of-man-writing-in-a-notebook-at-a-desk.jpg?s=2048x2048&w=is&k=20&c=M9BUhFRd1b2yNbW73t55vUr2usk1841Wk35HXA2DMZE=',
                ),
              ),
              scrollDirection: Axis.horizontal,
              itemCount: 5,
            ),
          );
        } else if (state is SimilarBooksFaliure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
