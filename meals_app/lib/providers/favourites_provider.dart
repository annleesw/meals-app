import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/models/meal_models.dart';

class FavouriteMealsNotifier extends StateNotifier<List<Meal>> {
  FavouriteMealsNotifier() : super([]); //initial state

  bool toggleMealFavouriteStatus(Meal meal) {
    final mealIsFavourite = state.contains(meal);
    if (mealIsFavourite) {
      state = state.where((m) => m.id != meal.id).toList();
      return false;
    }
    else {
      state = [...state, meal]; //spread (...) operator to copy the list
      return true;
    }

    state = [];
  } 
}


final favouriteMealsProvider = StateNotifierProvider<FavouriteMealsNotifier, List<Meal>>((ref) { //use StateNotifierProvider() if state changes/ stateful widget
  return FavouriteMealsNotifier();
}); 