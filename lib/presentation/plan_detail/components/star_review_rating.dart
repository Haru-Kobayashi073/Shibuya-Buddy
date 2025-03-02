import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../utils/styles/app_color.dart';

class StarReviewRating extends StatelessWidget {
  const StarReviewRating({
    super.key,
    required this.rating,
  });
  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating,
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: AppColor.yellow600Primary,
      ),
      unratedColor: AppColor.grey400,
      itemSize: 24,
    );
  }
}
