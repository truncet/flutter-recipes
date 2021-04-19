import 'package:flutter/material.dart';

import '../models/meals.dart';
import './../widgets/meal_item.dart';

class FavouriteScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;

  FavouriteScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.length == 0) {
      return Center(
        child: Text('You don\'t have anything in favourite'),
      );
    } else {
      return Center(
        child: ListView.builder(
            itemBuilder: (ctx, index) {
              return MealItem(
                id: favoriteMeals[index].id,
                title: favoriteMeals[index].title,
                affordability: favoriteMeals[index].affordability,
                complexity: favoriteMeals[index].complexity,
                duration: favoriteMeals[index].duration,
                imageUrl: favoriteMeals[index].imageUrl,
              );
            },
            itemCount: favoriteMeals.length),
      );
    }
  }
}
