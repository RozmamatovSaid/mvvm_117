import 'package:flutter/cupertino.dart';
import '../../../categories/data/models/category_model.dart';
import '../../../categories/repositories/categories_repository.dart';
import '../../data/models/recipe_model_small.dart';
import '../../data/repositories/category_detail_repository.dart';

class CategoryDetailViewModel extends ChangeNotifier {
  CategoryDetailViewModel({
    required CategoriesRepository catsRepo,
    required CategoryDetailRepository repo,
    required this.selected,
  })  : _catsRepo = catsRepo,
        _repo = repo {
    load();
  }

  final CategoriesRepository _catsRepo;
  final CategoryDetailRepository _repo;

  List<CategoryModel> categories = [];

  List<RecipeModelSmall> recipes = [];

  final CategoryModel selected;

  Future<void> load() async {
    categories = await _catsRepo.fetchCategories();
    recipes = await _repo.fetchRecipes(selected.id);
    notifyListeners();
  }
}
