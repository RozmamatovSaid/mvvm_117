import 'package:mvvm_117/category_detail/data/models/recipe_model_small.dart';
import 'package:mvvm_117/core/client.dart';

class CategoryDetailRepository {
  CategoryDetailRepository({required this.client});

  final ApiClient client;
  List<RecipeModelSmall> recipes = [];

  Future<List<RecipeModelSmall>> fetchRecipes(int categoryId) async {
    var rawRecipes = await client.fetchRecipes(categoryId);
    recipes =
        rawRecipes.map((recipe) => RecipeModelSmall.fromJson(recipe)).toList();
    return recipes;
  }
}