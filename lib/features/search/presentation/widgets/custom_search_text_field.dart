import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        border: buildTextFieldBorder(),
        focusedBorder: buildTextFieldBorder(),
        suffixIcon: IconButton(
          onPressed: () {},
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
