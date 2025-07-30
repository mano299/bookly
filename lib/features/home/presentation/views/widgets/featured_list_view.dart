import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/custom_error_widger.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../manager/featured_books_cubit/featured_books_cubit.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: GestureDetector(
                  onTap: (){
                     GoRouter.of(context).push(AppRouter.kBookDetailsView, extra: state.books[index]);
                  },
                  child: CustomBookItem(
                    imageUrl: state.books[index].volumeInfo.imageLinks!.thumbnail!,
                  ),
                ),
              ),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else if(state is FeaturedBooksLoading){
          return Center(child: CircularProgressIndicator());
        }else{
          return CustomErrorWidget(errMessage: 'Sorry');
        }
      },
    );
  }
}
