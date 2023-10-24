import 'package:cook_book/data/dummy_data.dart';
import 'package:cook_book/screens/meals.dart';
import 'package:cook_book/widgets/category_grid_item.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  void _selectCategory(BuildContext context){
    Navigator.push(context, MaterialPageRoute(
        builder: (ctx) => MealsScreen(
           title: 'Something', meals: dummyMeals,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select Category"),
      ),
      body: GridView(
        padding: EdgeInsets.all(24),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: [
          for(final category in availableCategories)
            CategoryGridItem(
              category: category,
              onSelectCategory: (){
                _selectCategory(context);
              },)

        ],
      ),
    );
  }
}

Widget boxCategory() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(20))
    ),
    margin: EdgeInsets.all(20),

    child: Center(child: Text('data')),
  );
}
