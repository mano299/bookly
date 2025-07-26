import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    AssetsData.testPhoto,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    "Harry Potter and the Globet of Fire",
                    style: Styles.textStyle20,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    
                  ),
                ),
                Text(
                  "J.K. Rowling",
                  style: Styles.textStyle14.copyWith(color: Colors.grey),
                ),
                Row()
              ],
            ),
          )
        ],
      ),
    );
  }
}
