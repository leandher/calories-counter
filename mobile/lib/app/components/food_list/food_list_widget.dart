import 'package:flutter/material.dart';
import 'package:mobile/models/food_model.dart';

class FoodListWidget extends StatelessWidget {
  final List<FoodModel> foods;
  FoodListWidget({Key key, this.foods}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: foods.length,
      itemBuilder: (BuildContext context, int index) {
        var food = foods[index];
        var calories = double.parse(food.calories).toInt();
        var portionAmount = double.parse(food.portionAmount).toInt();
        var portionDisplayName = food.portionDisplayName;

        return Card(
        child: ListTile(
          title: Text(food.displayName),
          subtitle: Text('$calories calories | Serving size: $portionAmount $portionDisplayName'),
        ),
        borderOnForeground: true,
      );
      },
    );
  }
}
