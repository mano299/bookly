import 'package:bookly/features/search/presentation/manager/search_books_cubit/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  CustomSearchTextField({super.key});
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onSubmitted: (value) {
        context.read<SearchBooksCubit>().fetchSearchedBooks(value.trim());
      },
      decoration: InputDecoration(
        hintText: 'Search',
        border: buildTextFieldBorder(),
        focusedBorder: buildTextFieldBorder(),
        suffixIcon: IconButton(
          onPressed: () {
            context.read<SearchBooksCubit>().fetchSearchedBooks(
                  controller.text.trim(),
                );
          },
          icon: Opacity(
            opacity: .7,
            child: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 22,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildTextFieldBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.white));
  }
}
