
import '../entities/review_entity.dart';

num getAveRating(List<ReviewEntity> reviews) {
  num sum = 0.0;

  for (var review in reviews) {
    sum += review.rating;
  }

  return sum / reviews.length;
}