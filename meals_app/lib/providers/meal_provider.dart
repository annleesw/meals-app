import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/data/dummy_data.dart';

final mealsProvider = Provider((ref) { //use Provider() only if state remains unchanged/ stateless widget
  return dummyMeals;
});