import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mvvm_117/categories/data/pages/categories_view_model.dart';
import 'package:mvvm_117/categories/widgets/Categories_Fods_widget.dart';
import 'package:mvvm_117/utils/AppColors.dart';
import 'package:mvvm_117/widgets/AppBar_widget.dart';
import 'package:mvvm_117/widgets/BottomNavBar_widget.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({
    super.key,
    required this.viewModel,
  });

  final CategoriesViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: AppColors.backgroundColor,
      appBar: const AppBarItem(
        back: "assets/svg/back.svg",
        text: "Categories",
        svgfirst: "assets/svg/notification.svg",
        svgsecond: "assets/svg/search.svg",
      ),
      body: ListenableBuilder(
        listenable: viewModel,
        builder: (context, widget) {
          return ListView(
            padding: EdgeInsets.fromLTRB(32, 0, 32, 100),
            shrinkWrap: true,
            children: [
              SizedBox(height: 16),
              GridView.builder(
                itemCount: viewModel.categories.length,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.only(bottom: 10),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  final recipe = viewModel.categories[index];
                  return GestureDetector(
                    onTap: () {
                      context.go('/categories/detail', extra: recipe);
                    },
                    child: FoodCategories(
                      title: recipe.title,
                      image: recipe.image,
                    ),
                  );
                },
              ),
            ],
          );
        },
      ),
      bottomNavigationBar: const BottomNavBarItem(
        FirstSvg: "assets/svg/home.svg",
        SecondSvg: "assets/svg/community.svg",
        ThirdSvg: "assets/svg/categories.svg",
        FourthSvg: "assets/svg/profile.svg",
      ),
    );
  }
}
